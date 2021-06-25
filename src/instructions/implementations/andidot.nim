include ../core

proc andidot*(instruction : uint32) = 
  ## page 92 in POWERISA manual 3.0B
  var RA_addr = get_form.andidot().RA(instruction)
  var RS_addr = get_form.andidot().RS(instruction)
  var UI      = get_form.andidot().UI(instruction)

  var value = regfiles.GPR[RS_addr] and UI
  regfiles.GPR[RA_addr] = value

  # this instruction has side-effects
  side_effects.setCR0(value)