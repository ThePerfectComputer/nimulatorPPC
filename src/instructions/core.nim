# get regfiles
from ../cpu/fetch import CIA, NIA
import ../cpu/regfiles
import ../isa/reg_fields
import ../isa/regtypes

# for memory access
from ../membus/membus import cpu_membus, ENDIAN
from ../membus/read import readUint8, readUint16, readUint32, readUint64
from ../membus/write import writeUint8, writeUint16, writeUint32, writeUint64

# form and field helpers
import ../isa/get_form
import ../isa/form_fields

# TODO : do we actually need these?
from strformat import fmt
from strutils import toHex, toBin
import ../utils/colors # TODO : remove this

import side_effects

# now export
export CIA, NIA
export regfiles
export reg_fields
export regtypes

export cpu_membus, ENDIAN
export readUint8, readUint16, readUint32, readUint64
export writeUint8, writeUint16, writeUint32, writeUint64

export get_form
export form_fields

export fmt
export toHex, toBin
export colors

export side_effects