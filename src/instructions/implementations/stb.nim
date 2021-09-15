# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../imported_symbols

proc stb*(instruction : uint32) = 
  ## page 54 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RA_addr = get_form.stb().RA(instruction)
  var RS_addr = get_form.stb().RS(instruction)
  var D       = get_form.stb().D(instruction)
  var b : uint64
  var EA : uint64

  # actually do work needed to execute instruction
  if RA_addr == 0:
    b = 0
  else:
    b = regfiles.GPR[RA_addr]
  
  EA = b + cast[uint64](D)

  var memval = cast[uint8](regfiles.GPR[RS_addr])

  var little_endian = reg_fields.LE(regtypes.MSR())
  var endiannes = ENDIAN.BIG
  if little_endian == 1:
    endiannes = ENDIAN.LITTLE

  cpu_membus.writeUint8(EA, memval, endiannes)
