from ../core import uint128

# you can find a link to the POWER ISA manual in the
# README.md in the root directory

var GPR* : array[32, uint64] # page 45 in POWER3.0B ISA manual
var FPR* : array[32, uint64] # page 124 in the POWER3.0B ISA manual

var VR* : array[32, uint128]  # page 232 in the POWER3.0B ISA manual
var VSR* : array[64, uint128] # page 364 in the POWER3.0B ISA manual

# TODO : find info for TDOOMED
# TDOOMED

var BESCR* : array[1, uint64] # page 902 in the POWER3.0B ISA manual
var AMOR*  : array[1, uint64] # its technically an SPR - page 972
# TODO : is LR a solo register? - or part of an SPR?
var LR*    : array[1, uint64] # on page 10
var XER*   : array[1, uint64] # on page 10, also on page 971 as SPR[1]
var VSCR*  : array[1, uint32] # on page 10
var LPIDR* : array[1, uint32] # on page 931
var PIDR*  : array[1, uint64] # on page 962
var MSR*   : array[1, uint64] # on page 962

# TODO : Not actually sure that SLB is a register
var FPSCR* : array[1, uint32]  # on page 10
var CR*    : array[1, uint32]  # on page 10
var BHRB*  : array[32, uint64] # on page 10