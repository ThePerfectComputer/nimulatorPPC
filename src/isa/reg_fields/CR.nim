include core

# functions for CR field 0
proc FIELD0_BIT3*(msr : CR) : uint64 = cast[uint64](regfiles.CR[0]).power_bitsliced(35 .. 35) # page 45 of POWER v3.0B ISA manual PDF