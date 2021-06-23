from ../isa/mnemonic_enums import MnemonicEnums

type
  InstructionContext* = ref object
    instruction*  : uint32
    opcode*       : MnemonicEnums