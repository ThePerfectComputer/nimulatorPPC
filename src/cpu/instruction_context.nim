from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
from registers import REGTYPE

type
  InstructionContext* = object
    opcode*       : MnemonicEnums
    sources*      : array[5, REGTYPE]
    sources_data* : array[5, uint128]
    dests*        : array[5, REGTYPE]
    dests_data*   : array[5, uint128]