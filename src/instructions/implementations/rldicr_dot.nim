# steps for adding new instructions:
# 1. copy this file
# 2. for any new instruction, update the comments
# as needed and anything associated with the comments
import ../imported_symbols

proc rldicr_dot*(instruction : uint32) = 
  ## page 104 in POWERISA manual 3.0B
  var RS_addr = get_form.rldicr_dot().RS(instruction)
  var RA_addr = get_form.rldicr_dot().RA(instruction)
  var sh1     = get_form.rldicr_dot().sh1(instruction)
  var sh2     = get_form.rldicr_dot().sh2(instruction)
  var me      = get_form.rldicr_dot().me(instruction)
  var Rc      = get_form.rldicr_dot().Rc(instruction)

  # get values
  var RA      = regfiles.GPR[RA_addr]
  var RS      = regfiles.GPR[RS_addr]

  # actually execute instruction
  var n       = (sh2 shl 5) or sh1

  var lower   = RS shr (64 - n)
  var upper   = RS shl n
  var r       = upper or lower

  var me_upper = (me and 1) shl 5
  var me_lower = me shr 1
  var e        = me_upper or me_lower

  # a mask from 0 to e means that we have e ones, starting
  # in the MSB position
  # manual page 6
  var m       = (1.uint64 shl (63 - e)) - 1
  m           = m.not

  regfiles.GPR[RA_addr] = r and m