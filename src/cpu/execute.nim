from ../utils/colors import bold_black, bold_red
from strformat import fmt

from instruction_context import InstructionContext
from ../isa/mnemonic_enums import MnemonicEnums
import ../instructions/instructions

proc executeOp*(instruction_context : InstructionContext) = 
  var instruction = instruction_context.instruction
  case instruction_context.opcode:
    of MnemonicEnums.addi:
      instruction.addi()
    of MnemonicEnums.addis:
      instruction.addis()
    of MnemonicEnums.andidot:
      instruction.andidot()
    of MnemonicEnums.b_l_a:
      instruction.b_l_a()
    of MnemonicEnums.bc_l_a:
      instruction.bc_l_a()
    of MnemonicEnums.lbz:
      instruction.lbz()
    of MnemonicEnums.ld:
      instruction.ld()
    of MnemonicEnums.or_dot:
      instruction.or_dot()
    of MnemonicEnums.ori:
      instruction.ori()
    of MnemonicEnums.stb:
      instruction.stb()
    else:
      raise Exception.newException("UNSUPPORTED OPCODE: ".bold_black & ($instruction_context.opcode).bold_red)