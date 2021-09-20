from utils/colors import blue, green, bold_black
from strformat import fmt
from times import getTime, toUnixFloat

from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction, CIA
from cpu/decoder import getOp
from cpu/execute import executeOp

# set little endian
# TODO : move endian setting to the config.nim file
from cpu/regfiles import nil

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

  while running:
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