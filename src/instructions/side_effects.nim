## Some instructions have side effects which I honestly think
## is one of the greatest weaknesses of the POWER architecture.
## This issues caused by this are as follows:
## 
## 1. Understanding the full functionality of some instructions
## requires cross referencing multiple sections in the POWER ISA
## manual.
## 
## 2. To properly create an Out-Of-Order implementation of a POWER
## processor requires tracking 5 source and 5 destination registers
## per instruction. Side effects contribute to a sizeable amount of
## the 5. Making a micro-archiecture that handles traversing a instruction
## graph whose nodes have 5 inputs and 5 outputs in hardware is elusive
## to say the least. The ISA would have done well to eliminate side
## effects entirely and simply have 2 sources and 2 dests per instruction.
## 
## Anyways, I think its a responsible design choice to place all the
## side-effects in a single file.

# get regfiles
from ../cpu/regfiles import nil
from ../cpu/fetch import NIA
from ../isa/reg_fields import nil
from ../isa/regtypes import nil
import ../isa/power_bitsliced
from strutils import toBin
from trace import add_reg, instruction_trace, print_instruction

proc setCR0*(value : uint64, copy_XER_SO = true) = 
  ## follows behavior of CR0 as defined on page 30 of POWER
  ## v3.0B ISA manual
  var value_as_int = cast[int64](value)
  var negative = if (value_as_int < 0): 1.uint32 else : 0.uint32
  var positive = if (value_as_int > 0): 1.uint32 else : 0.uint32
  var zero     = if (value_as_int == 0): 1.uint32 else : 0.uint32

   # collect sources read from by setCR0 for debugging
  instruction_trace:
    var sources : string
    sources.add_reg("XER", regfiles.XER[0].BiggestInt.toBin(64))
    sources.add_reg("CR", regfiles.CR[0].BiggestInt.toBin(32))

  # TODO: determine if CR0:3 needs to be preserved across instructions
  # that do compares but can't have overflows by definition.
  var CR0_3 = reg_fields.FIELD0_BIT3(regtypes.CR()).uint32
  if copy_XER_SO:
    CR0_3 = reg_fields.SO(regtypes.XER()).uint32

  var CR0 = (negative shl 3) or (positive shl 2) or (zero shl 1) or CR0_3
  var CR_masked = regfiles.CR[0] and 0x0F_FF_FF_FF
  regfiles.CR[0] = (CR0 shl 28 ) or CR_masked

  # collect dests written to by setCR0 for debugging
  instruction_trace:
    var dests : string
    dests.add_reg("XER", regfiles.XER[0].BiggestInt.toBin(64))
    dests.add_reg("CR", regfiles.CR[0].BiggestInt.toBin(32))

  # call debug print on setCR0
  instruction_trace:
    print_instruction(
      "setCR0 (side effect of instruction above)",
      "",
      sources,
      dests
    )

type
  TAKEN_LIKELY* = enum
    YES,
    NO,
    NOT_SPECIFIED,

proc evaluate_branch*(BO, BI: range[0..31], target_address : uint64) =
  ## sets NIA to target_address if branch is taken
  ## 
  ## fields BO and BI are used in the branch instructions to
  ## determine whether or not the branch is taken.
  ## The truth table for this can be found on Figure 40
  ## on page 30 of the POWER ISA v3.0B manual
  ## 
  ## A clearer version of this manual can be found in
  ## nimulatorPPC/docs/rendered/branch_field_B0.pdf

  var CR_BI = regfiles.CR[0].power_bitsliced(BI.int .. BI.int)

  # this gets returned to decide whether or not we branch
  var branch_taken : bool

  # currently unused outside of this function as-is
  var taken_likely : TAKEN_LIKELY

  case BO:
    of 0..1:
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = (regfiles.CTR[0] != 0) and (CR_BI == 0)
    of 2..3:
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = (regfiles.CTR[0] == 0) and (CR_BI == 0)
    of 4..5:
      branch_taken = CR_BI == 0
    of 6:
      taken_likely = TAKEN_LIKELY.NO
      branch_taken = CR_BI == 0
    of 7:
      taken_likely = TAKEN_LIKELY.YES
      branch_taken = CR_BI == 0
    of 8..9:
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = (regfiles.CTR[0] != 0) and (CR_BI == 1)
    of 10..11:
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = (regfiles.CTR[0] == 0) and (CR_BI == 1)
    of 12..13:
      branch_taken = CR_BI == 1
    of 14:
      taken_likely = TAKEN_LIKELY.NO
      branch_taken = CR_BI == 1
    of 15:
      taken_likely = TAKEN_LIKELY.YES
      branch_taken = CR_BI == 1
    of 16..17:
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = regfiles.CTR[0] != 0
    of 18..19:
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = regfiles.CTR[0] == 0
    of 20..23:
      branch_taken = true
    of 24:
      taken_likely = TAKEN_LIKELY.NO
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = regfiles.CTR[0] != 0
    of 25:
      taken_likely = TAKEN_LIKELY.YES
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = regfiles.CTR[0] != 0
    of 26:
      taken_likely = TAKEN_LIKELY.NO
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = regfiles.CTR[0] == 0
    of 27:
      taken_likely = TAKEN_LIKELY.YES
      regfiles.CTR[0] = regfiles.CTR[0] - 1
      branch_taken = regfiles.CTR[0] == 0
    of 28..31:
      branch_taken = true
    
  if branch_taken:
    NIA = target_address