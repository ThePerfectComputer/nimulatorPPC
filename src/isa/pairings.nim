import tables
import mnemonic_enums
import form_enums

type
  ISAInfo* = object
    bitPat  : uint32
    form    : FormEnums
 
var Pairings* = {
  MnemonicEnums.addis : ISAInfo(bitPat : 0b001111_00000_00000_00000_00000_000000.uint32, form : FormEnums.D8)
}.toTable