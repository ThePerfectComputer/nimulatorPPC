from std/terminal import styledWriteLine, fgBlue, fgGreen
from std/terminal import styleBright, fgDefault
from strformat import fmt
from times import getTime, toUnixFloat

from membus/membus import cpu_membus
from cpu/fetch import fetchInstruction, CIA
from cpu/decoder import getOp
from cpu/execute import executeOp

# set little endian
from cpu/regfiles import nil
regfiles.MSR[0] = 1

proc print_debug(cycle : int) =
  echo fmt"cycle : {cycle}"
  stdout.styledWriteLine(fgBlue, fmt"CIA = {fetch.CIA}")
  stdout.styledWriteLine(fgBlue, regfiles.deltaRegfiles())

var running = true
var cycles = 0.uint64
var t0 = getTime().toUnixFloat()
var tf : float

proc shutdownNimulator() {.noconv.} = 
  tf = getTime().toUnixFloat()
  stdout.styledWriteLine(styleBright, "\n[", fgGreen, "SHUTTING DOWN SIMULATION", fgDefault, "]")
  var cycles_per_second = (cycles.float64/(tf - t0)).int64
  stdout.styledWriteLine(fgGreen, fmt"SIMULATED FOR {cycles} CYCLES AT ROUGHLY {cycles_per_second} CYCLES PER SECOND")
  running = false

setControlCHook(shutdownNimulator)

# start running simulation
try:
  stdout.styledWriteLine(styleBright, "\n[", fgGreen, "STARTING SIMULATION", fgDefault, "]")
  while running:
    when defined(dcpu):
      regfiles.advanceRegHistory()
      defer: regfiles.print_debug(cycle)

    cpu_membus
    .fetchInstruction()
    .getOp()
    .executeOp()

    cycles += 1
except Exception as e:
  tf = getTime().toUnixFloat()
  var cycles_per_second = (cycles.float64/(tf - t0)).int64
  stdout.styledWriteLine(fgGreen, fmt"SIMULATED FOR {cycles} CYCLES AT ROUGHLY {cycles_per_second} CYCLES PER SECOND")
  raise e
