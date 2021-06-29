include ../core

proc stb*(instruction : uint32) = 
  ## page 48 in POWERISA manual 3.0B
  var RA_addr = get_form.stb().RA(instruction)
  var RS_addr = get_form.stb().RS(instruction)
  var D       = get_form.stb().D(instruction)
  var b : uint64
  var EA : uint64

  if RA_addr == 0:
    b = 0
  else:
    b = regfiles.GPR[RA_addr]
  
  EA = b + cast[uint64](D)

  var val = cast[uint8](regfiles.GPR[RS_addr])

  var little_endian = reg_fields.LE(regtypes.MSR())
  var endiannes = ENDIAN.BIG
  if little_endian == 1:
    endiannes = ENDIAN.LITTLE

  cpu_membus.writeUint8(EA, val, endiannes)
