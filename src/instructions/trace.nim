from strformat import fmt
from ../cpu/fetch import CIA
import ../utils/colors

const instruction_trace* = defined(itrace)
proc print_instruction*(compact_mnemonic="", full_mnemonic, args, sources, dests : string) = 
  stdout.write fmt"CIA={CIA}: "

  if compact_mnemonic != "":
    stdout.write fmt"{compact_mnemonic.bold_black} {args.bold_black} " & 
                 fmt"(a form of {full_mnemonic}); "
  else:
    stdout.write fmt"{full_mnemonic} {args} {sources} {dests}"

  echo "sources = ".bold_blue, sources, "; dests = ".bold_blue, dests