# test1.py
import sys
from capstone import *

CODE = open(sys.argv[1], "rb").read()

md = Cs(CS_ARCH_PPC, CS_MODE_64)
for i in md.disasm(CODE, 0x1000):
    print("0x%x:\t%s\t%s" %(i.address, i.mnemonic, i.op_str))
