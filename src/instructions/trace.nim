from strformat import fmt
from ../cpu/fetch import CIA
import ../utils/colors
import macros

const itrace = defined(itrace)

macro instruction_trace*(body : untyped): untyped = 
  if itrace:
    return body

proc add_reg*(str : var string, regname : string, value: SomeInteger, op_arg="", index=0.uint64) =
  ## some usage example:
  ## 
  ## var sources : string
  ## sources.add_reg("GPR", regfiles.GPR[RA_addr], "RA", 0)
  ## source.add_reg("CR", CR)
  var lhs : string
  if op_arg != "":
    lhs = fmt"{regname.bold_black}" & "[".bold_black & fmt"{op_arg} = {$index}" & "]".bold_black
  else:
    lhs = regname.bold_black
  
  var rhs = $value

  str &= fmt"{lhs} = {rhs}"

proc print_instruction*(compact_mnemonic="", full_mnemonic, args, sources, dests : string) = 
  stdout.write fmt"CIA={CIA}: "

  if compact_mnemonic != "":
    stdout.write fmt"{compact_mnemonic.bold_black} {args.bold_black} " & 
                 fmt"(a form of {full_mnemonic}); "
  else:
    stdout.write fmt"{full_mnemonic} {args} {sources} {dests}"

  echo "sources = ".bold_blue, sources, "; dests = ".bold_blue, dests