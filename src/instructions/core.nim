
# get regfiles
from ../cpu/regfiles import GPR, FPR, VR, VSR
from ../cpu/regfiles import BESCR, AMOR, LR, XER
from ../cpu/regfiles import VSCR, LPIDR, PIDR
from ../cpu/regfiles import FPSCR, CR, BHRB

# for memory access
from ../membus/membus import cpu_membus, ENDIAN
from ../membus/read import readUint8, readUint16, readUint32, readUint64
from ../membus/write import writeUint8, writeUint16, writeUint32, writeUint64

# form and field helpers
import ../isa/get_form
import ../isa/form_fields