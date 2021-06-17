from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
from regtypes import REGTYPE

type
  InstructionContext* = ref object
    instruction*  : uint32
    opcode*       : MnemonicEnums