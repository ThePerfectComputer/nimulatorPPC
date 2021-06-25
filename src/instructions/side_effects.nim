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
from ../isa/reg_fields import nil
from ../isa/regtypes import nil

proc setCR0*(value : uint64, copy_XER_SO = true) = 
  ## follows behavior of CR0 as defined on page 30 of POWER
  ## v3.0B ISA manual
  var value_as_int = cast[int64](value)
  var negative = if (value_as_int < 0): 1.uint32 else : 0.uint32
  var positive = if (value_as_int > 0): 1.uint32 else : 0.uint32
  var zero     = if (value_as_int == 0): 1.uint32 else : 0.uint32

  # TODO: determine if CR0:3 needs to be preserved across instructions
  # that do compares but can't have overflows by definition.
  var CR0_3 = reg_fields.FIELD0_BIT3(regtypes.CR()).uint32
  if copy_XER_SO:
    CR0_3 = reg_fields.SO(regtypes.XER()).uint32

  var CR0 = (negative shl 3) or (positive shl 2) or (zero shl 1) or CR0_3
  var CR_masked = regfiles.CR[0] and 0x0F_FF_FF_FF
  regfiles.CR[0] = (CR0 shl 28 ) or CR_masked