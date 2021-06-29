from ../utils/colors import BRIGHT_BLACK, BRIGHT_RED, RESET
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
      raise Exception.newException(fmt"{BRIGHT_BLACK} UNSSUPORTED OPCODE: {RESET} {BRIGHT_RED} {$instruction_context.opcode} {RESET}")