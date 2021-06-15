from ../isa/pairings import Pairings, ISAInfo
from ../isa/mnemonic_enums import MnemonicEnums
from ../core import uint128
from instruction_context import InstructionContext
from registers import REGTYPE
import tables

import print
from strutils import toBin

proc matches(instruction : uint32, insn_info : ISAInfo) : bool = 
  var bitPat          = insn_info.bitPat
  var dontCareMask    = insn_info.dontCareMask
  var extractedCares  = (not dontCareMask) and instruction

  # debug facilities
  # print insn_info
  # print bitPat
  # print dontCareMask
  # print extractedCares

  return (extractedCares xor bitPat) == 0


proc decode*(instruction : uint32) : InstructionContext = 
  var matched_mnemonic : MnemonicEnums
  var opcode_found = false
  for mnemonic, insn_info in Pairings.pairs:
    if instruction.matches(insn_info):
      matched_mnemonic = mnemonic
      opcode_found = true
      break
   
  try:
    assert opcode_found
  except Exception as e:
    echo e.msg
    echo "choked on invalid instruction"
    quit(-1)

  # print matched_mnemonic

  var empty_u128 = uint128(lo : 0, hi : 0)
  InstructionContext(
    opcode       : matched_mnemonic,
    sources      : [REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    sources_data : [empty_u128, empty_u128, empty_u128, empty_u128, empty_u128],
    dests        : [REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE, REGTYPE.NONE],
    dests_data   : [empty_u128, empty_u128, empty_u128, empty_u128, empty_u128]
  )