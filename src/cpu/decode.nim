from ../isa/pairings import Pairings, ISAInfo
from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
from instruction_context import InstructionContext
from registers import REGTYPE
import print

# print REGTYPE.NONE

proc decode(instruction : uint32) : InstructionContext = 
  var empty_u128 = uint128(lo : 0, hi : 0)
  InstructionContext(
    opcode       : MnemonicEnums.addis,
    sources      : [REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    sources_data : [empty_u128, empty_u128, empty_u128, empty_u128, empty_u128],
    dests        : [REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    dests_data   : [empty_u128, empty_u128, empty_u128, empty_u128, empty_u128]
  )