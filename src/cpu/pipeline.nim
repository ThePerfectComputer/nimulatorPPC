from ../isa/mnemonic_enums import MnemonicEnums
from registers import REGTYPE

type
  uint128 = object
    lo : uint64
    hi : uint64

  Pipeline = object
    opcode       : MnemonicEnums
    sources      : array[5, REGTYPE]
    sources_data : array[5, uint128]