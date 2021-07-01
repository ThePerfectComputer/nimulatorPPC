# get regfiles
from ../cpu/fetch import CIA, NIA
from ../cpu/regfiles import nil
from ../isa/reg_fields import nil
from ../isa/regtypes import nil

# for memory access
from ../membus/membus import cpu_membus, ENDIAN
from ../membus/read import readUint8, readUint16, readUint32, readUint64
from ../membus/write import writeUint8, writeUint16, writeUint32, writeUint64

# form and field helpers
import ../isa/get_form
import ../isa/form_fields
from strformat import fmt
from strutils import toHex, toBin
import ../utils/colors # TODO : remove this
import side_effects

# to help with debugging instructions
from trace import instruction_trace, add_reg, print_instruction