from ../isa/bitpat_pairings import Pairings, ISAInfo
from ../isa/mnemonic_enums import MnemonicEnums
from instruction_context import InstructionContext
import tables

proc matches(instruction : uint32, insn_info : ISAInfo) : bool = 
  var bitPat          = insn_info.bitPat
  var dontCareMask    = insn_info.dontCareMask
  var extractedCares  = (not dontCareMask) and instruction

  return (extractedCares xor bitPat) == 0


proc getOp*(instruction_context : InstructionContext) : InstructionContext = 
  result = instruction_context
  var instruction = instruction_context.instruction
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
    raise e
  
  instruction_context.opcode = matched_mnemonic