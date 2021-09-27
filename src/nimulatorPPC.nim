from utils/colors import blue, green, bold_black
from strformat import fmt
from times import getTime, toUnixFloat

from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction
from cpu/decoder import getOp
from cpu/execute import executeOp

from config import itrace, little_endian
from cpu/regfiles import MSR, `[]`, `[]=`

# some configurations that don't really seem to
# fit elsewhere
regfiles.MSR[0] = config.little_endian

# do vcd setup if VCD tracing is enabled
when itrace: 
  import vcd/vcd

  var clk = register_new_signal(name="clk", num_bits=1, init=0)
  build_vcd_ctx()

# allow for graceful shutdowns and runtime stats
var running      = true
var instructions = 0.uint64
var t0 = getTime().toUnixFloat()
var tf : float

proc shutdownNimulator() {.noconv.} = 
  tf = getTime().toUnixFloat()

  echo ""
  echo "[".bold_black, "SHUTTING DOWN SIMULATION".green, "]".bold_black

  var instructions_per_second = (instructions.float64/(tf - t0)).int64
  echo fmt"SIMULATED FOR {instructions} ".blue &
       fmt"INSTRUCTIONS AT ROUGHLY {instructions_per_second} ".blue &
       fmt"INSTRUCTIONS PER SECOND".blue

  running = false

setControlCHook(shutdownNimulator)

# start running simulation
try:
  echo "[".bold_black, "STARTING SIMULATION".green, "]".bold_black

  while running:

    when itrace:
      clk.set(0.uint64)
      tick(1)

    cpu_membus
    .fetchInstruction()
    .getOp()
    .executeOp()

    instructions += 1

    when itrace:
      clk.set(1.uint64)
      tick(1)

except Exception as e:
  tf = getTime().toUnixFloat()

  var instructions_per_second = (instructions.float64/(tf - t0)).int64
  echo fmt"SIMULATED FOR {instructions} ".green &
       fmt"INSTRUCTIONS AT ROUGHLY {instructions_per_second} ".green &
       fmt"INSTRUCTIONS PER SECOND".green

  raise e