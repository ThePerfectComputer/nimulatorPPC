from utils/colors import blue, green
from utils/colors import bold_black
from strformat import fmt
from times import getTime, toUnixFloat

from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction, CIA
from cpu/decoder import getOp
from cpu/execute import executeOp

const debug = defined(dcpu)

# set little endian
from cpu/regfiles import nil
regfiles.MSR[0] = 1

var running      = true
var instructions = 0.uint64
var t0 = getTime().toUnixFloat()
var tf : float

proc shutdownNimulator() {.noconv.} = 
  tf = getTime().toUnixFloat()

  echo ""
  echo "[".bold_black, "SHUTTING DOWN SIMULATION".green, "]".bold_black

  var instructions_per_second = (instructions.float64/(tf - t0)).int64
  echo fmt"SIMULATED FOR {instructions} ".green &
       fmt"INSTRUCTIONS AT ROUGHLY {instructions_per_second} ".green &
       fmt"INSTRUCTIONS PER SECOND".green

  running = false

setControlCHook(shutdownNimulator)

# start running simulation
try:
  echo "[".bold_black, "STARTING SIMULATION".green, "]".bold_black

  for i in 0..8:
    cpu_membus
    .fetchInstruction()
    .getOp()
    .executeOp()

    instructions += 1
except Exception as e:
  tf = getTime().toUnixFloat()

  var instructions_per_second = (instructions.float64/(tf - t0)).int64
  echo fmt"SIMULATED FOR {instructions} ".green &
       fmt"INSTRUCTIONS AT ROUGHLY {instructions_per_second} ".green &
       fmt"INSTRUCTIONS PER SECOND".green

  raise e