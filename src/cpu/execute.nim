from instruction_context import InstructionContext
from ../isa/mnemonic_enums import MnemonicEnums
import ../instructions/instructions

proc executeOp*(instruction_context : InstructionContext) = 
  var instruction = instruction_context.instruction
  case instruction_context.opcode:
    of MnemonicEnums.addis:
      instruction.addis()
    of MnemonicEnums.andidot:
      instruction.andidot()
    of MnemonicEnums.bc_l_a:
      instruction.bc_l_a()
    of MnemonicEnums.lbz:
      instruction.lbz()
    of MnemonicEnums.ld:
      instruction.ld()
    else:
      var msg = "got unsupoorted opcode " & $instruction_context.opcode
      raise Exception.newException(msg)