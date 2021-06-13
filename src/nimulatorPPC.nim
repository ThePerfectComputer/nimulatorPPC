import sugar
import strutils
import argparse
import loadMemory

# temporary imports
import print

# some variables we need for setup
var firmware_filepath : string
var mem_depth : int

# set up the command line argument parser
var p = newParser:
  option("-f", "--firmware", help="firmware file for simulator to execute")
  option("-d", "--memory_depth", default=some("1024"), help="how many entries deep the simulated CPU memory should be")

# check that necessary arguments were passed
try:
  # validate arguments
  var opts = p.parse(commandLineParams())
  assert opts.firmware != ""

  # assign values to setup variables
  firmware_filepath = opts.firmware
  mem_depth = opts.memory_depth.parseInt

except ShortCircuit as e:
  echo p.help
  quit(0)

except Exception as e:
  echo e.msg
  echo p.help
  quit(0)

# go ahead and load memory
var memory = loadMemory(mem_depth, firmware_filepath)
print memory.map(x => x.BiggestInt.toBin(32))