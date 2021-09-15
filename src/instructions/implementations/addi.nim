# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../core

proc addi*(instruction : uint32) = 
  ## page 67 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RA_addr = get_form.addi().RA(instruction)
  var RT_addr = get_form.addi().RT(instruction)
  var SI      = get_form.addi().SI(instruction)

  # actually do work needed to execute instruction
  if RA_addr == 0:
    regfiles.GPR[RT_addr] = cast[uint64](SI)
  else:
    regfiles.GPR[RT_addr] = regfiles.GPR[RA_addr] + cast[uint64](SI)