from ../membus/membus import Membus, ENDIAN
from ../membus/read import readUint32
from instruction_context import InstructionContext

var CIA* = 0.uint64
var NIA* = 0.uint64

# TODO : add proper support for the endianness bits
proc fetchInstruction*(membus : Membus) : InstructionContext = 
  CIA = NIA
  var instruction = membus.readUint32(CIA, endianness=ENDIAN.LITTLE)

  # you could essentially think of this as a really awful
  # branch predictor
  NIA += 4

  result = InstructionContext(instruction : instruction)