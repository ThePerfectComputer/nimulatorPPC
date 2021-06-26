from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction
from cpu/decoder import getOp
from cpu/execute import executeOp

from cpu/regfiles import advanceRegHistory, deltaRegfiles

# set little endian
from cpu/regfiles import nil
regfiles.MSR[0] = 1

var debug* = false

try:
  for cycle in 0..8:
    advanceRegHistory()
    cpu_membus
    .fetchInstruction()
    .getOp()
    .executeOp()
    echo deltaRegfiles()
except Exception as e:
  echo "got exception"
  raise e