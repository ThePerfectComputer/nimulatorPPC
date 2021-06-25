from instruction_context import InstructionContext
from ../isa/mnemonic_enums import MnemonicEnums
import ../instructions/instructions

proc executeOp*(instruction_context : InstructionContext) = 
  var instruction = instruction_context.instruction
  case instruction_context.opcode:
    of MnemonicEnums.addis:
      instruction.addis()
    of MnemonicEnums.ld:
      instruction.ld()
    of MnemonicEnums.lbz:
      instruction.lbz()
    of MnemonicEnums.andidot:
      instruction.andidot()
    else:
      var msg = "got unsupoorted opcode " & $instruction_context.opcode
      raise Exception.newException(msg)