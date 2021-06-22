from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction
from cpu/decoder import getOp
from cpu/execute import executeOp


for cycle in 0..8:
  cpu_membus
  .fetchInstruction()
  .getOp()
  .executeOp()