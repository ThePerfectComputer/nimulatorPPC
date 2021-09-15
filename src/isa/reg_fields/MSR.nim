import imported_symbols

proc LE*(msr : MSR) : uint64 = regfiles.MSR[0].power_bitsliced(63 .. 63)