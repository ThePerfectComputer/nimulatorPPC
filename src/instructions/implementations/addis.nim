include ../core

proc addis*(instruction : uint32) = 
  ## page 67 in POWERISA manual 3.0B
  var RA_addr = get_form.addis().RA(instruction)
  var RT_addr = get_form.addis().RT(instruction)
  var SI_shft = get_form.addis().SI(instruction) shl 16

  # sources for debugging
  var sources : string
  if instruction_trace:
    sources = fmt"GPR[RA = {RA_addr}] = {regfiles.GPR[RA_addr]}"

  if RA_addr == 0:
    regfiles.GPR[RT_addr] = cast[uint64](SI_shft)
  else:
    regfiles.GPR[RT_addr] = regfiles.GPR[RA_addr] + cast[uint64](SI_shft)

  # dests for debugging
  var dests : string
  if instruction_trace:
    dests = fmt"GPR[RT = {RT_addr}] = {regfiles.GPR[RT_addr]}"

  if instruction_trace:
    var compact_mnemonic = if (RA_addr == 0): "lis" else : ""

    print_instruction(
      compact_mnemonic,
      "addis",
      fmt"{RT_addr}, {RA_addr}, {SI_shft}",
      sources,
      dests
    )