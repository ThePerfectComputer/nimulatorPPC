include ../core

# steps:
# 1. update proc 'instruction` name
# 2. update page number reference
# 3. update get_form`instruction`
# 4. modfiy other instruction specific things

proc or_dot*(instruction : uint32) = 
  ## page 94 in POWERISA manual 3.0B
  var RS_addr = get_form.or_dot().RS(instruction)
  var RA_addr = get_form.or_dot().RA(instruction)
  var RB_addr = get_form.or_dot().RB(instruction)

  var value = regfiles.GPR[RS_addr] or regfiles.GPR[RB_addr]
  regfiles.GPR[RA_addr] = value

  # this instruction has side-effects
  side_effects.setCR0(value)