include ../core

proc addis*(instruction : uint32) = 
  ## page 67 in POWERISA manual 3.0B
  var RA_addr = get_form.addis().RA(instruction)
  var RT_addr = get_form.addis().RT(instruction)
  var SI_shft = get_form.addis().SI(instruction) shl 16

  if RA_addr == 0:
    regfiles.GPR[RT_addr] = cast[uint64](SI_shft)
  else:
    regfiles.GPR[RT_addr] = regfiles.GPR[RA_addr] + cast[uint64](SI_shft)
