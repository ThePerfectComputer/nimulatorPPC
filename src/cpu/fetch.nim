from ../membus/membus import Membus, ENDIAN
from ../membus/read import readUint32
from instruction_context import InstructionContext

var CIA* = 0.uint64
var NIA* = 0.uint64

proc fetchInstruction*(membus : Membus) : InstructionContext = 
  CIA = NIA
  var instruction = membus.readUint32(CIA.uint32, endianness=ENDIAN.LITTLE)

  # you could essentially think of this as a really awful
  # branch predictor
  NIA += 4

  var result = InstructionContext(instruction : instruction)
  return result