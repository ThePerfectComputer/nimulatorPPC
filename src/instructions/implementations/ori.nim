# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../imported_symbols

proc ori*(instruction : uint32) = 
  ## page 92 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RS_addr = get_form.ori().RS(instruction)
  var RA_addr = get_form.ori().RA(instruction)
  var UI      = get_form.ori().UI(instruction)

  # actually do work needed to execute instruction
  regfiles.GPR[RA_addr] = regfiles.GPR[RS_addr] or UI
