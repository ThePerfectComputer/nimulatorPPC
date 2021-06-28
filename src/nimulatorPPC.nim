import std/terminal
from strformat import fmt

from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction, CIA
from cpu/decoder import getOp
from cpu/execute import executeOp

from cpu/regfiles import advanceRegHistory, deltaRegfiles

# set little endian
from cpu/regfiles import nil
regfiles.MSR[0] = 1


proc print_debug(cycle : int) =
  echo fmt"cycle : {cycle}"
  stdout.styledWriteLine(fgBlue, fmt"CIA = {fetch.CIA}")
  stdout.styledWriteLine(fgBlue, deltaRegfiles())

try:
  for cycle in 0..8:
    when defined(dcpu):
      advanceRegHistory()
      defer: print_debug(cycle)

    cpu_membus
    .fetchInstruction()
    .getOp()
    .executeOp()
except Exception as e:
  echo "got exception"
  raise e