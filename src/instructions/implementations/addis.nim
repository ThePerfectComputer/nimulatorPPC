include ../core

proc addis*(instruction : uint32) = 
  ## page 67 in POWERISA manual 3.0B
  var RA_addr = get_form.addis().RA(instruction)
  var RT_addr = get_form.addis().RT(instruction)
  var SI_shft = get_form.addis().SI(instruction) shl 16

  # collect sources for debugging
  instruction_trace:
    var sources : string
    sources.add_reg("GPR", regfiles.GPR[RA_addr], "RA", RA_addr)

  # actually do work needed to execute instruction
  if RA_addr == 0:
    regfiles.GPR[RT_addr] = cast[uint64](SI_shft)
  else:
    regfiles.GPR[RT_addr] = regfiles.GPR[RA_addr] + cast[uint64](SI_shft)

  # collect dests for debugging
  instruction_trace:
    var dests : string
    dests.add_reg("GPR", regfiles.GPR[RT_addr], "RA", RT_addr)

  # finish debug prep work and call instruction debug print
  instruction_trace:
    var compact_mnemonic = if (RA_addr == 0): "lis" else : ""

    print_instruction(
      compact_mnemonic,
      "addis",
      fmt"{RT_addr}, {RA_addr}, {SI_shft}",
      sources,
      dests
    )