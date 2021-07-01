# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
include ../core

proc andidot*(instruction : uint32) = 
  ## page 92 in POWERISA manual 3.0B
  var RS_addr = get_form.andidot().RS(instruction)
  var RA_addr = get_form.andidot().RA(instruction)
  var UI      = get_form.andidot().UI(instruction)

  # collect sources for debugging
  instruction_trace:
    var sources : string
    sources.add_reg("GPR", regfiles.GPR[RS_addr], "RS", RS_addr)

  # actually do work needed to execute instruction
  var value = regfiles.GPR[RS_addr] and UI
  regfiles.GPR[RA_addr] = value

  # this instruction has side-effects:
  # if instruction_tracing is disabled, deffering is a no-op,
  # otherwise, deffering makes sure the debug print for setCR0
  # gets fired at the very end of this function
  defer: side_effects.setCR0(value)

  # collect dests for debugging
  instruction_trace:
    var dests : string
    dests.add_reg("GPR", regfiles.GPR[RA_addr], "RS", RA_addr)

  # finish debug prep work and call instruction debug print
  instruction_trace:
    print_instruction(
      "andidot",
      fmt"{RS_addr}, {RA_addr}, {UI}",
      sources,
      dests
    )
