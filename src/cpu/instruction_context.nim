from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
from regfiles import REGTYPE

type
  InstructionContext* = ref object
    instruction*  : uint32
    opcode*       : MnemonicEnums
    sources*      : array[5, REGTYPE]
    sources_data* : array[5, uint128]
    dests*        : array[5, REGTYPE]
    dests_data*   : array[5, uint128]