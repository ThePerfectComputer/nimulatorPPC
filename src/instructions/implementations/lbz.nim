include ../core

proc lbz*(instruction : uint32) = 
  var RA_addr = get_form.lbz().RA(instruction)
  var RT_addr = get_form.lbz().RT(instruction)
  var D       = get_form.lbz().D(instruction)
  var b : uint64
  var EA : uint64

  if RA_addr == 0:
    b = 0
  else:
    b = regfiles.GPR[RA_addr]
  
  EA = b + cast[uint64](D)

  var little_endian = reg_fields.LE(regtypes.MSR())
  var endiannes = ENDIAN.BIG
  if little_endian == 1:
    endiannes = ENDIAN.LITTLE

  regfiles.GPR[RT_addr] = cpu_membus.readUint8(EA, endiannes).uint64
