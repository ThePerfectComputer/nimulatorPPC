from instruction_context import InstructionContext
from regfiles import GPR, FPR, VR, VSR
from regfiles import BESCR, AMOR, LR, XER
from regfiles import VSCR, LPIDR, PIDR
from regfiles import FPSCR, CR, BHRB
import ../isa/get_form


from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
import ../isa/form_fields

import print

proc addis(instruction : uint32) = 
  var RA_addr = get_form.addis().RA(instruction)
  var RT_addr = get_form.addis().RT(instruction)
  var SI_shft = get_form.addis().SI(instruction) shl 16

  if RA_addr == 0:
    GPR[RT_addr] = cast[uint64](SI_shft)
  else:
    GPR[RT_addr] = GPR[RA_addr] + cast[uint64](SI_shft)

proc executeOp*(instruction_context : InstructionContext) = 
  var instruction = instruction_context.instruction
  case instruction_context.opcode:
    of MnemonicEnums.addis:
      instruction.addis()
    else:
      echo "got unsupoorted opcode ", instruction_context.opcode