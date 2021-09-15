# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../core

proc or_dot*(instruction : uint32) = 
  ## page 94 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RS_addr = get_form.or_dot().RS(instruction)
  var RA_addr = get_form.or_dot().RA(instruction)
  var RB_addr = get_form.or_dot().RB(instruction)
  var RC      = get_form.or_dot().RC(instruction)

  # actually do work needed to execute instruction
  var value = regfiles.GPR[RS_addr] or regfiles.GPR[RB_addr]
  regfiles.GPR[RA_addr] = value

  # this instruction has side-effects
  if RC == 1:
    side_effects.setCR0(value)