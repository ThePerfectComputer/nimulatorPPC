from ../ram/read import readUint32, readUint64
from ../ram/ram import ENDIAN
from instruction_context import InstructionContext

var CIA* = 0.uint64
var NIA* = 0.uint64

proc fetchInstruction*(ram : var openArray[uint32]) : InstructionContext = 
  CIA = NIA
  var instruction = ram.readUint32(CIA.uint32, endianness=ENDIAN.LITTLE)

  # you could essentially think of this as a really awful
  # branch predictor
  NIA += 4

  var result = InstructionContext(instruction : instruction)
  return result