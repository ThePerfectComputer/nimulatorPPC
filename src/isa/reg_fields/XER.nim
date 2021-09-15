import core

proc SO*(msr : XER) : uint64 = regfiles.XER[0].power_bitsliced(32 .. 32) # page 45 of POWER v3.0B ISA manual PDF
proc OV*(msr : XER) : uint64 = regfiles.XER[0].power_bitsliced(33 .. 33) # page 45 of POWER v3.0B ISA manual PDF
proc CA*(msr : XER) : uint64 = regfiles.XER[0].power_bitsliced(34 .. 34) # page 46 of POWER v3.0B ISA manual PDF