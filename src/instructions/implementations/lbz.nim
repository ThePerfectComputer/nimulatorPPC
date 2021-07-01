# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
include ../core

proc lbz*(instruction : uint32) = 
  ## page 48 in POWERISA manual 3.0B
  ## make sure to grab the get_form.``instruction`` below
  ## matches the the filename
  var RA_addr = get_form.lbz().RA(instruction)
  var RT_addr = get_form.lbz().RT(instruction)
  var D       = get_form.lbz().D(instruction)
  var b : uint64
  var EA : uint64

  # collect sources for debugging
  instruction_trace:
    var sources : string
    sources.add_reg("GPR", "0x" & regfiles.GPR[RA_addr].BiggestInt.toHex(16), "RA", RA_addr)

  # actually do work needed to execute instruction
  if RA_addr == 0:
    b = 0
  else:
    b = regfiles.GPR[RA_addr]
  
  EA = b + cast[uint64](D)

  var little_endian = reg_fields.LE(regtypes.MSR())
  var endiannes = ENDIAN.BIG
  if little_endian == 1:
    endiannes = ENDIAN.LITTLE

  var memval = cpu_membus.readUint8(EA, endiannes).uint64
  regfiles.GPR[RT_addr] = memval

  # a bit difficult to know what MEM[EA] contains until after executing
  # the instruction, but nevertheless, we consider MEM[EA] as a source
  # for the purposes of consistent debugging
  instruction_trace:
    sources.add_reg("MEM", "0x" & memval.BiggestInt.toHex(2), "EA", "0x" & EA.BiggestInt.toHex(16))
  
  # collect dests for debugging
  instruction_trace:
    var dests : string
    dests.add_reg("GPR", regfiles.GPR[RT_addr], "RT", RT_addr)

  # finish debug prep work and call instruction debug print
  instruction_trace:
    print_instruction(
      "lbz",
      fmt"{RT_addr}, {RA_addr}, {D}",
      sources,
      dests
    )
