include ../core

proc addi*(instruction : uint32) = 
  ## page 67 in POWERISA manual 3.0B
  var RA_addr = get_form.addi().RA(instruction)
  var RT_addr = get_form.addi().RT(instruction)
  var SI      = get_form.addi().SI(instruction)

  if RA_addr == 0:
    regfiles.GPR[RT_addr] = cast[uint64](SI)
  else:
    regfiles.GPR[RT_addr] = regfiles.GPR[RA_addr] + cast[uint64](SI)
