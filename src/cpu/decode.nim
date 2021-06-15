import ../isa/pairings
from ../core import uint128
from pipeline import Pipeline
from registers import REGTYPE
import print

proc decode(instruction : uint32) : Pipeline = 
  var empty_u128 = uint128(lo : 0, hi : 0)
  Pipeline(
    opcode       : MnemonicEnums.addis,
    sources      : array[REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    sources_data : array[empty_u128, empty_u128, empty_u128, empty_u128, empty_u128],
    dests        : array[REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    dests_data   : array[empty_u128, empty_u128, empty_u128, empty_u128, empty_u128]
  )