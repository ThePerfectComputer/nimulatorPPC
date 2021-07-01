from strformat import fmt
from ../cpu/fetch import CIA
import ../utils/colors
import macros

const itrace = defined(itrace)

macro instruction_trace*(body : untyped): untyped = 
  if itrace:
    return body

proc add_reg*(str : var string, regname : string, value: SomeInteger or string, op_arg="", index=0.uint64) =
  ## a usage example:
  ## 
  ## var sources : string
  ## sources.add_reg("GPR", regfiles.GPR[RA_addr], "RA", 0)
  ## source.add_reg("CR", CR)
  var lhs : string
  if op_arg != "":
    lhs = regname.bold_black & "[".bold_black & fmt"{op_arg} = {$index}" & "]".bold_black
  else:
    lhs = regname.bold_black
  
  var rhs = $value

  str &= fmt"{lhs} = {rhs} "


proc print_instruction*(full_mnemonic, args, sources, dests : string) = 
  stdout.write fmt"CIA={CIA}: {full_mnemonic} {args}; "

  var remaining = "sources : ".bold_blue & sources & "; " & "dests : ".bold_blue & dests
  if remaining.len <= 200:
    stdout.write remaining & "\r\n"
  else:
    echo ""
    echo "\t├-", "sources : ".bold_blue 
    echo "\t│ └───────", sources, ";"
    echo "\t└─", "dests : ".bold_blue
    echo "\t  └───────", dests, ";"
    