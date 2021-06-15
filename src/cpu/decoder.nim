from ../isa/pairings import Pairings, ISAInfo
from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
from instruction_context import InstructionContext
from registers import REGTYPE
import tables

import print
from strutils import toBin

proc matches(instruction : uint32, mnemonic : MnemonicEnums) : bool = 
  var insn_attrs      = Pairings[mnemonic]
  var bitPat          = insn_attrs.bitPat
  var dontCareMask    = insn_attrs.dontCareMask
  var extractedCares  = (not dontCareMask) and instruction

  # debug facilities
  print insn_attrs
  print bitPat
  print dontCareMask
  print extractedCares

  return (extractedCares xor bitPat) == 0


proc decode*(instruction : uint32) : InstructionContext = 
  # at the moment this is primarily dummy code
  print instruction.matches(MnemonicEnums.addis)

  var empty_u128 = uint128(lo : 0, hi : 0)
  InstructionContext(
    opcode       : MnemonicEnums.addis,
    sources      : [REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    sources_data : [empty_u128, empty_u128, empty_u128, empty_u128, empty_u128],
    dests        : [REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    dests_data   : [empty_u128, empty_u128, empty_u128, empty_u128, empty_u128]
  )