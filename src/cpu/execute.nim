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
    of MnemonicEnums.bc_l_a:
      instruction.bc_l_a()
    of MnemonicEnums.b_l_a:
      instruction.b_l_a()
    of MnemonicEnums.lbz:
      instruction.lbz()
    of MnemonicEnums.ld:
      instruction.ld()
    of MnemonicEnums.stb:
      instruction.stb()
    else:
      var msg = "got unsupoorted opcode " & $instruction_context.opcode
      raise Exception.newException(msg)