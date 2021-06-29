include ../core

# steps:
# 1. update proc 'instruction` name
# 2. update page number reference
# 3. update get_form`instruction`
# 4. modfiy other instruction specific things

proc ori*(instruction : uint32) = 
  ## page 92 in POWERISA manual 3.0B
  var RS_addr = get_form.ori().RS(instruction)
  var RA_addr = get_form.ori().RA(instruction)
  var UI      = get_form.ori().UI(instruction)

  regfiles.GPR[RA_addr] = regfiles.GPR[RS_addr] or UI