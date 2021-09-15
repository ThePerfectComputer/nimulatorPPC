# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../imported_symbols

proc ld*(instruction : uint32) = 
  ## page 53 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RA_addr = get_form.ld().RA(instruction)
  var RT_addr = get_form.ld().RT(instruction)
  var DS_shift = get_form.ld().DS(instruction) shl 2
  var b : uint64
  var EA : uint64

  # actually do work needed to execute instruction
  if RA_addr == 0:
    b = 0
  else:
    b = regfiles.GPR[RA_addr]
  
  EA = b + cast[uint64](DS_shift)

  var little_endian = reg_fields.LE(regtypes.MSR())
  var endiannes = ENDIAN.BIG
  if little_endian == 1:
    endiannes = ENDIAN.LITTLE

  var memval = cpu_membus.readUint64(EA, endiannes)
  regfiles.GPR[RT_addr] = memval
