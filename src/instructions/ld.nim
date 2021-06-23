include core

proc ld*(instruction : uint32) = 
  var RA_addr = get_form.ld().RA(instruction)
  var RT_addr = get_form.ld().RT(instruction)
  var DS_shift = get_form.ld().DS(instruction) shl 2
  var b : uint64
  var EA : uint64

  if RA_addr == 0:
    b = 0
  else:
    b = GPR[RA_addr]
  
  EA = b + cast[uint64](DS_shift)

  GPR[RT_addr] = cpu_membus.readUint64(EA, ENDIAN.LITTLE)