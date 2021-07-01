# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
include ../core

proc ori*(instruction : uint32) = 
  ## page 92 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RS_addr = get_form.ori().RS(instruction)
  var RA_addr = get_form.ori().RA(instruction)
  var UI      = get_form.ori().UI(instruction)

  # collect sources for debugging
  instruction_trace:
    var sources : string
    sources.add_reg("GPR", regfiles.GPR[RA_addr], "RA", RA_addr)

  # actually do work needed to execute instruction
  regfiles.GPR[RA_addr] = regfiles.GPR[RS_addr] or UI

  # collect dests for debugging
  instruction_trace:
    var dests : string
    dests.add_reg("GPR", regfiles.GPR[RS_addr], "RA", RS_addr)

  # finish debug prep work and call instruction debug print
  instruction_trace:
    print_instruction(
      "ori",
      fmt"{RS_addr}, {RA_addr}, {UI}",
      sources,
      dests
    )