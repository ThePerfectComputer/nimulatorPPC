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
import side_effects

import trace