include ../core

proc bc_l_a*(instruction : uint32) = 
  ## page 67 in POWERISA manual 3.0B
  var BO = get_form.bc_l_a().BO(instruction)
  var BI = get_form.bc_l_a().BI(instruction)
  var BD = get_form.bc_l_a().BD(instruction)
  # var RT_addr = get_form.addis().RT(instruction)
  # var SI_shft = get_form.addis().SI(instruction) shl 16

  # if RA_addr == 0:
  #   regfiles.GPR[RT_addr] = cast[uint64](SI_shft)
  # else:
  #   regfiles.GPR[RT_addr] = regfiles.GPR[RA_addr] + cast[uint64](SI_shft)
