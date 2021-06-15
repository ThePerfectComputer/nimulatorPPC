import tables
from mnemonic_enums import MnemonicEnums
import form_enums

type
  ISAInfo* = object
    bitPat*        : uint32
    dontCareMask*  : uint32 # the bits in this value are set for don't cares
    form*          : FormEnums
 
var Pairings* = {
  MnemonicEnums.addis : ISAInfo(
    bitPat       : 0b001111_00000_00000_00000_00000_000000.uint32, 
    dontCareMask : 0b000000_11111_11111_11111_11111_111111.uint32, 
    form : FormEnums.D8
    )
}.toTable