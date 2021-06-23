from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction
from cpu/decoder import getOp
from cpu/execute import executeOp

# set little endian
from cpu/regfiles import nil
regfiles.MSR[0] = 1

# print MSR[0]

for cycle in 0..8:
  cpu_membus
  .fetchInstruction()
  .getOp()
  .executeOp()