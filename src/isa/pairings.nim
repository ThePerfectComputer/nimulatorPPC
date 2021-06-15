#generated 2021-06-15 15:50:31.805341
from mnemonic_enums import MnemonicEnums
import tables
import form_enums

type
  ISAInfo* = object
    bitPat*        : uint32
    dontCareMask*  : uint32 # the bits in this value are set for don't cares
    form*          : FormEnums
 
var Pairings* = {
  MnemonicEnums.add_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001000010100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.addc_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000010100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.adde_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000100010100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.addex : ISAInfo(
    bitPat       : 0b01111100000000000000000101010100.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.addg6s : ISAInfo(
    bitPat       : 0b01111100000000000000000010010100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO2
    ),
  MnemonicEnums.addi : ISAInfo(
    bitPat       : 0b00111000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D8
    ),
  MnemonicEnums.addic : ISAInfo(
    bitPat       : 0b00110000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D8
    ),
  MnemonicEnums.addicdot : ISAInfo(
    bitPat       : 0b00110100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D8
    ),
  MnemonicEnums.addis : ISAInfo(
    bitPat       : 0b00111100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D8
    ),
  MnemonicEnums.addme_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000111010100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO1
    ),
  MnemonicEnums.addpcis : ISAInfo(
    bitPat       : 0b01001100000000000000000000000100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.DX1
    ),
  MnemonicEnums.addze_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000110010100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO1
    ),
  MnemonicEnums.and_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.andc_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000001111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.andidot : ISAInfo(
    bitPat       : 0b01110000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.andisdot : ISAInfo(
    bitPat       : 0b01110100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.b_l_a : ISAInfo(
    bitPat       : 0b01001000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.I1
    ),
  MnemonicEnums.bc_l_a : ISAInfo(
    bitPat       : 0b01000000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.B1
    ),
  MnemonicEnums.bcctr_l : ISAInfo(
    bitPat       : 0b01001100000000000000010000100000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL4
    ),
  MnemonicEnums.bcdadddot : ISAInfo(
    bitPat       : 0b00010000000000000000010000000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX16
    ),
  MnemonicEnums.bcdcfndot : ISAInfo(
    bitPat       : 0b00010000000001110000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX9
    ),
  MnemonicEnums.bcdcfsqdot : ISAInfo(
    bitPat       : 0b00010000000000100000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX9
    ),
  MnemonicEnums.bcdcfzdot : ISAInfo(
    bitPat       : 0b00010000000001100000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX9
    ),
  MnemonicEnums.bcdcpsgndot : ISAInfo(
    bitPat       : 0b00010000000000000000001101000001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.bcdctndot : ISAInfo(
    bitPat       : 0b00010000000001010000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX8
    ),
  MnemonicEnums.bcdctsqdot : ISAInfo(
    bitPat       : 0b00010000000000000000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX8
    ),
  MnemonicEnums.bcdctzdot : ISAInfo(
    bitPat       : 0b00010000000001000000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX9
    ),
  MnemonicEnums.bcdsdot : ISAInfo(
    bitPat       : 0b00010000000000000000010011000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX16
    ),
  MnemonicEnums.bcdsetsgndot : ISAInfo(
    bitPat       : 0b00010000000111110000010110000001.uint32,
    dontCareMask : 0b00000011111000001111101000000000.uint32,
    form         : FormEnums.VX9
    ),
  MnemonicEnums.bcdsrdot : ISAInfo(
    bitPat       : 0b00010000000000000000010111000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX16
    ),
  MnemonicEnums.bcdsubdot : ISAInfo(
    bitPat       : 0b00010000000000000000010001000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX16
    ),
  MnemonicEnums.bcdtruncdot : ISAInfo(
    bitPat       : 0b00010000000000000000010100000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX16
    ),
  MnemonicEnums.bcdusdot : ISAInfo(
    bitPat       : 0b00010000000000000000010010000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX15
    ),
  MnemonicEnums.bcdutruncdot : ISAInfo(
    bitPat       : 0b00010000000000000000010101000001.uint32,
    dontCareMask : 0b00000011111111111111101000000000.uint32,
    form         : FormEnums.VX15
    ),
  MnemonicEnums.bclr_l : ISAInfo(
    bitPat       : 0b01001100000000000000000000100000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL4
    ),
  MnemonicEnums.bctar_l : ISAInfo(
    bitPat       : 0b01001100000000000000010001100000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL4
    ),
  MnemonicEnums.bpermd : ISAInfo(
    bitPat       : 0b01111100000000000000000111111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.cbcdtd : ISAInfo(
    bitPat       : 0b01111100000000000000001001110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X60
    ),
  MnemonicEnums.cdtbcd : ISAInfo(
    bitPat       : 0b01111100000000000000001000110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X60
    ),
  MnemonicEnums.clrbhrb : ISAInfo(
    bitPat       : 0b01111100000000000000001101011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X1
    ),
  MnemonicEnums.cmp : ISAInfo(
    bitPat       : 0b01111100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X30
    ),
  MnemonicEnums.cmpb : ISAInfo(
    bitPat       : 0b01111100000000000000001111111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.cmpeqb : ISAInfo(
    bitPat       : 0b01111100000000000000000111000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X25
    ),
  MnemonicEnums.cmpi : ISAInfo(
    bitPat       : 0b00101100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D1
    ),
  MnemonicEnums.cmpl : ISAInfo(
    bitPat       : 0b01111100000000000000000001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X30
    ),
  MnemonicEnums.cmpli : ISAInfo(
    bitPat       : 0b00101000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D2
    ),
  MnemonicEnums.cmprb : ISAInfo(
    bitPat       : 0b01111100000000000000000110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X30
    ),
  MnemonicEnums.cntlzd_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000001110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.cntlzw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.cnttzd_dot : ISAInfo(
    bitPat       : 0b01111100000000000000010001110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.cnttzw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000010000110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.copy : ISAInfo(
    bitPat       : 0b01111100000000000000011000001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X6
    ),
  MnemonicEnums.cpabort : ISAInfo(
    bitPat       : 0b01111100000000000000011010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X1
    ),
  MnemonicEnums.crand : ISAInfo(
    bitPat       : 0b01001100000000000000001000000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.crandc : ISAInfo(
    bitPat       : 0b01001100000000000000000100000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.creqv : ISAInfo(
    bitPat       : 0b01001100000000000000001001000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.crnand : ISAInfo(
    bitPat       : 0b01001100000000000000000111000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.crnor : ISAInfo(
    bitPat       : 0b01001100000000000000000001000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.cror : ISAInfo(
    bitPat       : 0b01001100000000000000001110000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.crorc : ISAInfo(
    bitPat       : 0b01001100000000000000001101000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.crxor : ISAInfo(
    bitPat       : 0b01001100000000000000000110000010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL5
    ),
  MnemonicEnums.dadd_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X44
    ),
  MnemonicEnums.daddq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X51
    ),
  MnemonicEnums.darn : ISAInfo(
    bitPat       : 0b01111100000000000000010111100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X73
    ),
  MnemonicEnums.dcbf : ISAInfo(
    bitPat       : 0b01111100000000000000000010101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X10
    ),
  MnemonicEnums.dcbst : ISAInfo(
    bitPat       : 0b01111100000000000000000001101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X6
    ),
  MnemonicEnums.dcbt : ISAInfo(
    bitPat       : 0b01111100000000000000001000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X85
    ),
  MnemonicEnums.dcbtst : ISAInfo(
    bitPat       : 0b01111100000000000000000111101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X85
    ),
  MnemonicEnums.dcbz : ISAInfo(
    bitPat       : 0b01111100000000000000011111101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X6
    ),
  MnemonicEnums.dcffix_dot : ISAInfo(
    bitPat       : 0b11101100000000000000011001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.dcffixq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X48
    ),
  MnemonicEnums.dcmpo : ISAInfo(
    bitPat       : 0b11101100000000000000000100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.dcmpoq : ISAInfo(
    bitPat       : 0b11111100000000000000000100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X23
    ),
  MnemonicEnums.dcmpu : ISAInfo(
    bitPat       : 0b11101100000000000000010100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.dcmpuq : ISAInfo(
    bitPat       : 0b11111100000000000000010100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X23
    ),
  MnemonicEnums.dctdp_dot : ISAInfo(
    bitPat       : 0b11101100000000000000001000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.dctfix_dot : ISAInfo(
    bitPat       : 0b11101100000000000000001001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.dctfixq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X37
    ),
  MnemonicEnums.dctqpq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X48
    ),
  MnemonicEnums.ddedpd_dot : ISAInfo(
    bitPat       : 0b11101100000000000000001010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X47
    ),
  MnemonicEnums.ddedpdq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X54
    ),
  MnemonicEnums.ddiv_dot : ISAInfo(
    bitPat       : 0b11101100000000000000010001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X44
    ),
  MnemonicEnums.ddivq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000010001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X51
    ),
  MnemonicEnums.denbcd_dot : ISAInfo(
    bitPat       : 0b11101100000000000000011010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X46
    ),
  MnemonicEnums.denbcdq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X53
    ),
  MnemonicEnums.diex_dot : ISAInfo(
    bitPat       : 0b11101100000000000000011011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X44
    ),
  MnemonicEnums.diexq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X50
    ),
  MnemonicEnums.divd_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001111010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divde_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001101010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divdeu_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001100010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divdu_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001110010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divw_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001111010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divwe_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001101010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divweu_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001100010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.divwu_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001110010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.dmul_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X44
    ),
  MnemonicEnums.dmulq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X51
    ),
  MnemonicEnums.dqua_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_2
    ),
  MnemonicEnums.dquai_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000010000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_3
    ),
  MnemonicEnums.dquaiq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000010000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_7
    ),
  MnemonicEnums.dquaq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_6
    ),
  MnemonicEnums.drdpq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X49
    ),
  MnemonicEnums.drintn_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000111000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_1
    ),
  MnemonicEnums.drintnq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000111000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_4
    ),
  MnemonicEnums.drintx_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000011000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_1
    ),
  MnemonicEnums.drintxq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000011000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_4
    ),
  MnemonicEnums.drrnd_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000001000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_2
    ),
  MnemonicEnums.drrndq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000001000110.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_5
    ),
  MnemonicEnums.drsp_dot : ISAInfo(
    bitPat       : 0b11101100000000000000011000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.dscli_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000010000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_5
    ),
  MnemonicEnums.dscliq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000010000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_6
    ),
  MnemonicEnums.dscri_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000011000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_5
    ),
  MnemonicEnums.dscriq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000011000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_6
    ),
  MnemonicEnums.dsub_dot : ISAInfo(
    bitPat       : 0b11101100000000000000010000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X44
    ),
  MnemonicEnums.dsubq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000010000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X51
    ),
  MnemonicEnums.dtstdc : ISAInfo(
    bitPat       : 0b11101100000000000000000110000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_1
    ),
  MnemonicEnums.dtstdcq : ISAInfo(
    bitPat       : 0b11111100000000000000000110000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_3
    ),
  MnemonicEnums.dtstdg : ISAInfo(
    bitPat       : 0b11101100000000000000000111000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_2
    ),
  MnemonicEnums.dtstdgq : ISAInfo(
    bitPat       : 0b11111100000000000000000111000100.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.Z22_4
    ),
  MnemonicEnums.dtstex : ISAInfo(
    bitPat       : 0b11101100000000000000000101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.dtstexq : ISAInfo(
    bitPat       : 0b11111100000000000000000101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X23
    ),
  MnemonicEnums.dtstsf : ISAInfo(
    bitPat       : 0b11101100000000000000010101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.dtstsfi : ISAInfo(
    bitPat       : 0b11101100000000000000010101000110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X26
    ),
  MnemonicEnums.dtstsfiq : ISAInfo(
    bitPat       : 0b11111100000000000000010101000110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X27
    ),
  MnemonicEnums.dtstsfq : ISAInfo(
    bitPat       : 0b11111100000000000000010101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X23
    ),
  MnemonicEnums.dxex_dot : ISAInfo(
    bitPat       : 0b11101100000000000000001011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.dxexq_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X37
    ),
  MnemonicEnums.eieio : ISAInfo(
    bitPat       : 0b01111100000000000000011010101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X1
    ),
  MnemonicEnums.eqv_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001000111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.extsb_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011101110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.extsh_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011100110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.extsw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011110110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.extswsli_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011011110100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XS1
    ),
  MnemonicEnums.fabs_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001000010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fadd_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000101010.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A3
    ),
  MnemonicEnums.fadds_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000101010.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A3
    ),
  MnemonicEnums.fcfid_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011010011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fcfids_dot : ISAInfo(
    bitPat       : 0b11101100000000000000011010011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fcfidu_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011110011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fcfidus_dot : ISAInfo(
    bitPat       : 0b11101100000000000000011110011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fcmpo : ISAInfo(
    bitPat       : 0b11111100000000000000000001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.fcmpu : ISAInfo(
    bitPat       : 0b11111100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.fcpsgn_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X44
    ),
  MnemonicEnums.fctid_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011001011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctidu_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011101011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctiduz_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011101011110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctidz_dot : ISAInfo(
    bitPat       : 0b11111100000000000000011001011110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctiw_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctiwu_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000100011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctiwuz_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000100011110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fctiwz_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000011110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fdiv_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000100100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A3
    ),
  MnemonicEnums.fdivs_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000100100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A3
    ),
  MnemonicEnums.fmadd_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000111010.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fmadds_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000111010.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fmr_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000010010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fmrgew : ISAInfo(
    bitPat       : 0b11111100000000000000011110001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X43
    ),
  MnemonicEnums.fmrgow : ISAInfo(
    bitPat       : 0b11111100000000000000011010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X43
    ),
  MnemonicEnums.fmsub_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000111000.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fmsubs_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000111000.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fmul_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000110010.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A2
    ),
  MnemonicEnums.fmuls_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000110010.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A2
    ),
  MnemonicEnums.fnabs_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000100010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fneg_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000001010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.fnmadd_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000111110.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fnmadds_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000111110.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fnmsub_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000111100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fnmsubs_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000111100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fre_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000110000.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A1
    ),
  MnemonicEnums.fres_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000110000.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A1
    ),
  MnemonicEnums.frim_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001111010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.frin_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001100010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.frip_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001110010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.friz_dot : ISAInfo(
    bitPat       : 0b11111100000000000000001101010000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.frsp_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X36
    ),
  MnemonicEnums.frsqrte_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000110100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A1
    ),
  MnemonicEnums.frsqrtes_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000110100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A1
    ),
  MnemonicEnums.fsel_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000101110.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A4
    ),
  MnemonicEnums.fsqrt_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000101100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A1
    ),
  MnemonicEnums.fsqrts_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000101100.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A1
    ),
  MnemonicEnums.fsub_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000000101000.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A3
    ),
  MnemonicEnums.fsubs_dot : ISAInfo(
    bitPat       : 0b11101100000000000000000000101000.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A3
    ),
  MnemonicEnums.ftdiv : ISAInfo(
    bitPat       : 0b11111100000000000000000100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X22
    ),
  MnemonicEnums.ftsqrt : ISAInfo(
    bitPat       : 0b11111100000000000000000101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X19
    ),
  MnemonicEnums.hrfid : ISAInfo(
    bitPat       : 0b01001100000000000000001000100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL1
    ),
  MnemonicEnums.icbi : ISAInfo(
    bitPat       : 0b01111100000000000000011110101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X6
    ),
  MnemonicEnums.icbt : ISAInfo(
    bitPat       : 0b01111100000000000000000000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X15
    ),
  MnemonicEnums.isel : ISAInfo(
    bitPat       : 0b01111100000000000000000000011110.uint32,
    dontCareMask : 0b00000011111111111111111111000001.uint32,
    form         : FormEnums.A5
    ),
  MnemonicEnums.isync : ISAInfo(
    bitPat       : 0b01001100000000000000000100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL1
    ),
  MnemonicEnums.lbarx : ISAInfo(
    bitPat       : 0b01111100000000000000000001101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X78
    ),
  MnemonicEnums.lbz : ISAInfo(
    bitPat       : 0b10001000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lbzcix : ISAInfo(
    bitPat       : 0b01111100000000000000011010101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lbzu : ISAInfo(
    bitPat       : 0b10001100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lbzux : ISAInfo(
    bitPat       : 0b01111100000000000000000011101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lbzx : ISAInfo(
    bitPat       : 0b01111100000000000000000010101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.ld : ISAInfo(
    bitPat       : 0b11101000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS5
    ),
  MnemonicEnums.ldarx : ISAInfo(
    bitPat       : 0b01111100000000000000000010101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X78
    ),
  MnemonicEnums.ldat : ISAInfo(
    bitPat       : 0b01111100000000000000010011001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X75
    ),
  MnemonicEnums.ldbrx : ISAInfo(
    bitPat       : 0b01111100000000000000010000101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.ldcix : ISAInfo(
    bitPat       : 0b01111100000000000000011011101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.ldu : ISAInfo(
    bitPat       : 0b11101000000000000000000000000001.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS5
    ),
  MnemonicEnums.ldux : ISAInfo(
    bitPat       : 0b01111100000000000000000001101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.ldx : ISAInfo(
    bitPat       : 0b01111100000000000000000000101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lfd : ISAInfo(
    bitPat       : 0b11001000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D4
    ),
  MnemonicEnums.lfdp : ISAInfo(
    bitPat       : 0b11100100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS2
    ),
  MnemonicEnums.lfdpx : ISAInfo(
    bitPat       : 0b01111100000000000000011000101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X52
    ),
  MnemonicEnums.lfdu : ISAInfo(
    bitPat       : 0b11001100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D4
    ),
  MnemonicEnums.lfdux : ISAInfo(
    bitPat       : 0b01111100000000000000010011101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X45
    ),
  MnemonicEnums.lfdx : ISAInfo(
    bitPat       : 0b01111100000000000000010010101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X45
    ),
  MnemonicEnums.lfiwax : ISAInfo(
    bitPat       : 0b01111100000000000000011010101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X45
    ),
  MnemonicEnums.lfiwzx : ISAInfo(
    bitPat       : 0b01111100000000000000011011101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X45
    ),
  MnemonicEnums.lfs : ISAInfo(
    bitPat       : 0b11000000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D4
    ),
  MnemonicEnums.lfsu : ISAInfo(
    bitPat       : 0b11000100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D4
    ),
  MnemonicEnums.lfsux : ISAInfo(
    bitPat       : 0b01111100000000000000010001101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X45
    ),
  MnemonicEnums.lfsx : ISAInfo(
    bitPat       : 0b01111100000000000000010000101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X45
    ),
  MnemonicEnums.lha : ISAInfo(
    bitPat       : 0b10101000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lharx : ISAInfo(
    bitPat       : 0b01111100000000000000000011101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X78
    ),
  MnemonicEnums.lhau : ISAInfo(
    bitPat       : 0b10101100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lhaux : ISAInfo(
    bitPat       : 0b01111100000000000000001011101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lhax : ISAInfo(
    bitPat       : 0b01111100000000000000001010101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lhbrx : ISAInfo(
    bitPat       : 0b01111100000000000000011000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lhz : ISAInfo(
    bitPat       : 0b10100000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lhzcix : ISAInfo(
    bitPat       : 0b01111100000000000000011001101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lhzu : ISAInfo(
    bitPat       : 0b10100100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lhzux : ISAInfo(
    bitPat       : 0b01111100000000000000001001101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lhzx : ISAInfo(
    bitPat       : 0b01111100000000000000001000101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lmw : ISAInfo(
    bitPat       : 0b10111000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lq : ISAInfo(
    bitPat       : 0b11100000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.DQ1
    ),
  MnemonicEnums.lqarx : ISAInfo(
    bitPat       : 0b01111100000000000000001000101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X79
    ),
  MnemonicEnums.lswi : ISAInfo(
    bitPat       : 0b01111100000000000000010010101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X76
    ),
  MnemonicEnums.lswx : ISAInfo(
    bitPat       : 0b01111100000000000000010000101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lvebx : ISAInfo(
    bitPat       : 0b01111100000000000000000000001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lvehx : ISAInfo(
    bitPat       : 0b01111100000000000000000001001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lvewx : ISAInfo(
    bitPat       : 0b01111100000000000000000010001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lvsl : ISAInfo(
    bitPat       : 0b01111100000000000000000000001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lvsr : ISAInfo(
    bitPat       : 0b01111100000000000000000001001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lvx : ISAInfo(
    bitPat       : 0b01111100000000000000000011001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lvxl : ISAInfo(
    bitPat       : 0b01111100000000000000001011001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X92
    ),
  MnemonicEnums.lwa : ISAInfo(
    bitPat       : 0b11101000000000000000000000000010.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS5
    ),
  MnemonicEnums.lwarx : ISAInfo(
    bitPat       : 0b01111100000000000000000000101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X78
    ),
  MnemonicEnums.lwat : ISAInfo(
    bitPat       : 0b01111100000000000000010010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X75
    ),
  MnemonicEnums.lwaux : ISAInfo(
    bitPat       : 0b01111100000000000000001011101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lwax : ISAInfo(
    bitPat       : 0b01111100000000000000001010101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lwbrx : ISAInfo(
    bitPat       : 0b01111100000000000000010000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lwz : ISAInfo(
    bitPat       : 0b10000000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lwzcix : ISAInfo(
    bitPat       : 0b01111100000000000000011000101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lwzu : ISAInfo(
    bitPat       : 0b10000100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D7
    ),
  MnemonicEnums.lwzux : ISAInfo(
    bitPat       : 0b01111100000000000000000001101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lwzx : ISAInfo(
    bitPat       : 0b01111100000000000000000000101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.lxsd : ISAInfo(
    bitPat       : 0b11100100000000000000000000000010.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS7
    ),
  MnemonicEnums.lxsdx : ISAInfo(
    bitPat       : 0b01111100000000000000010010011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxsibzx : ISAInfo(
    bitPat       : 0b01111100000000000000011000011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxsihzx : ISAInfo(
    bitPat       : 0b01111100000000000000011001011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxsiwax : ISAInfo(
    bitPat       : 0b01111100000000000000000010011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxsiwzx : ISAInfo(
    bitPat       : 0b01111100000000000000000000011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxssp : ISAInfo(
    bitPat       : 0b11100100000000000000000000000011.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS7
    ),
  MnemonicEnums.lxsspx : ISAInfo(
    bitPat       : 0b01111100000000000000010000011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxv : ISAInfo(
    bitPat       : 0b11110100000000000000000000000001.uint32,
    dontCareMask : 0b00000011111111111111111111111000.uint32,
    form         : FormEnums.DQ3
    ),
  MnemonicEnums.lxvb16x : ISAInfo(
    bitPat       : 0b01111100000000000000011011011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvd2x : ISAInfo(
    bitPat       : 0b01111100000000000000011010011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvdsx : ISAInfo(
    bitPat       : 0b01111100000000000000001010011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvh8x : ISAInfo(
    bitPat       : 0b01111100000000000000011001011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvl : ISAInfo(
    bitPat       : 0b01111100000000000000001000011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvll : ISAInfo(
    bitPat       : 0b01111100000000000000001001011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvw4x : ISAInfo(
    bitPat       : 0b01111100000000000000011000011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvwsx : ISAInfo(
    bitPat       : 0b01111100000000000000001011011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.lxvx : ISAInfo(
    bitPat       : 0b01111100000000000000001000011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.maddhd : ISAInfo(
    bitPat       : 0b00010000000000000000000000110000.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA1
    ),
  MnemonicEnums.maddhdu : ISAInfo(
    bitPat       : 0b00010000000000000000000000110001.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA1
    ),
  MnemonicEnums.maddld : ISAInfo(
    bitPat       : 0b00010000000000000000000000110011.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA1
    ),
  MnemonicEnums.mcrf : ISAInfo(
    bitPat       : 0b01001100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL3
    ),
  MnemonicEnums.mcrfs : ISAInfo(
    bitPat       : 0b11111100000000000000000010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X21
    ),
  MnemonicEnums.mcrxrx : ISAInfo(
    bitPat       : 0b01111100000000000000010010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X18
    ),
  MnemonicEnums.mfbhrbe : ISAInfo(
    bitPat       : 0b01111100000000000000001001011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XFX7
    ),
  MnemonicEnums.mfcr : ISAInfo(
    bitPat       : 0b01111100000000000000000000100110.uint32,
    dontCareMask : 0b00000011111011111111100000000001.uint32,
    form         : FormEnums.XFX5
    ),
  MnemonicEnums.mffs_dot : ISAInfo(
    bitPat       : 0b11111100000000000000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X38
    ),
  MnemonicEnums.mffscdrn : ISAInfo(
    bitPat       : 0b11111100000101000000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X42
    ),
  MnemonicEnums.mffscdrni : ISAInfo(
    bitPat       : 0b11111100000101010000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X41
    ),
  MnemonicEnums.mffsce : ISAInfo(
    bitPat       : 0b11111100000000010000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X38
    ),
  MnemonicEnums.mffscrn : ISAInfo(
    bitPat       : 0b11111100000101100000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X42
    ),
  MnemonicEnums.mffscrni : ISAInfo(
    bitPat       : 0b11111100000101110000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X40
    ),
  MnemonicEnums.mffsl : ISAInfo(
    bitPat       : 0b11111100000110000000010010001110.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X38
    ),
  MnemonicEnums.mfmsr : ISAInfo(
    bitPat       : 0b01111100000000000000000010100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X70
    ),
  MnemonicEnums.mfocrf : ISAInfo(
    bitPat       : 0b01111100000100000000000000100110.uint32,
    dontCareMask : 0b00000011111011111111100000000001.uint32,
    form         : FormEnums.XFX6
    ),
  MnemonicEnums.mfspr : ISAInfo(
    bitPat       : 0b01111100000000000000001010100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XFX8
    ),
  MnemonicEnums.mftb : ISAInfo(
    bitPat       : 0b01111100000000000000001011100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XFX9
    ),
  MnemonicEnums.mfvscr : ISAInfo(
    bitPat       : 0b00010000000000000000011000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX3
    ),
  MnemonicEnums.mfvsrd : ISAInfo(
    bitPat       : 0b01111100000000000000000001100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X80
    ),
  MnemonicEnums.mfvsrld : ISAInfo(
    bitPat       : 0b01111100000000000000001001100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X80
    ),
  MnemonicEnums.mfvsrwz : ISAInfo(
    bitPat       : 0b01111100000000000000000011100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X80
    ),
  MnemonicEnums.modsd : ISAInfo(
    bitPat       : 0b01111100000000000000011000010010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.modsw : ISAInfo(
    bitPat       : 0b01111100000000000000011000010110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.modud : ISAInfo(
    bitPat       : 0b01111100000000000000001000010010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.moduw : ISAInfo(
    bitPat       : 0b01111100000000000000001000010110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X77
    ),
  MnemonicEnums.msgclr : ISAInfo(
    bitPat       : 0b01111100000000000000000111011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X3
    ),
  MnemonicEnums.msgclrp : ISAInfo(
    bitPat       : 0b01111100000000000000000101011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X3
    ),
  MnemonicEnums.msgsnd : ISAInfo(
    bitPat       : 0b01111100000000000000000110011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X3
    ),
  MnemonicEnums.msgsndp : ISAInfo(
    bitPat       : 0b01111100000000000000000100011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X3
    ),
  MnemonicEnums.msgsync : ISAInfo(
    bitPat       : 0b01111100000000000000011011101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X1
    ),
  MnemonicEnums.mtcrf : ISAInfo(
    bitPat       : 0b01111100000000000000000100100000.uint32,
    dontCareMask : 0b00000011111011111111100000000001.uint32,
    form         : FormEnums.XFX2
    ),
  MnemonicEnums.mtfsb0_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X32
    ),
  MnemonicEnums.mtfsb1_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000001001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X32
    ),
  MnemonicEnums.mtfsf_dot : ISAInfo(
    bitPat       : 0b11111100000000000000010110001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XFL1
    ),
  MnemonicEnums.mtfsfi_dot : ISAInfo(
    bitPat       : 0b11111100000000000000000100001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X20
    ),
  MnemonicEnums.mtmsr : ISAInfo(
    bitPat       : 0b01111100000000000000000100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X56
    ),
  MnemonicEnums.mtmsrd : ISAInfo(
    bitPat       : 0b01111100000000000000000101100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X56
    ),
  MnemonicEnums.mtocrf : ISAInfo(
    bitPat       : 0b01111100000100000000000100100000.uint32,
    dontCareMask : 0b00000011111011111111100000000001.uint32,
    form         : FormEnums.XFX3
    ),
  MnemonicEnums.mtspr : ISAInfo(
    bitPat       : 0b01111100000000000000001110100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XFX4
    ),
  MnemonicEnums.mtvscr : ISAInfo(
    bitPat       : 0b00010000000000000000011001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX1
    ),
  MnemonicEnums.mtvsrd : ISAInfo(
    bitPat       : 0b01111100000000000000000101100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X83
    ),
  MnemonicEnums.mtvsrdd : ISAInfo(
    bitPat       : 0b01111100000000000000001101100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.mtvsrwa : ISAInfo(
    bitPat       : 0b01111100000000000000000110100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X83
    ),
  MnemonicEnums.mtvsrws : ISAInfo(
    bitPat       : 0b01111100000000000000001100100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X83
    ),
  MnemonicEnums.mtvsrwz : ISAInfo(
    bitPat       : 0b01111100000000000000000111100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X83
    ),
  MnemonicEnums.mulhd_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000010010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO3
    ),
  MnemonicEnums.mulhdu_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO3
    ),
  MnemonicEnums.mulhw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000010010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO3
    ),
  MnemonicEnums.mulhwu_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO3
    ),
  MnemonicEnums.mulld_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000111010010.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.mulli : ISAInfo(
    bitPat       : 0b00011100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D8
    ),
  MnemonicEnums.mullw_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000111010110.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.nand_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001110111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.neg_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000011010000.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO1
    ),
  MnemonicEnums.nor_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000011111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.or_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001101111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.orc_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001100111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.ori : ISAInfo(
    bitPat       : 0b01100000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.oris : ISAInfo(
    bitPat       : 0b01100100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.paste_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011100001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X6
    ),
  MnemonicEnums.popcntb : ISAInfo(
    bitPat       : 0b01111100000000000000000011110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X60
    ),
  MnemonicEnums.popcntd : ISAInfo(
    bitPat       : 0b01111100000000000000001111110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X62
    ),
  MnemonicEnums.popcntw : ISAInfo(
    bitPat       : 0b01111100000000000000001011110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X60
    ),
  MnemonicEnums.prtyd : ISAInfo(
    bitPat       : 0b01111100000000000000000101110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X60
    ),
  MnemonicEnums.prtyw : ISAInfo(
    bitPat       : 0b01111100000000000000000100110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X60
    ),
  MnemonicEnums.rfebb : ISAInfo(
    bitPat       : 0b01001100000000000000000100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL2
    ),
  MnemonicEnums.rfid : ISAInfo(
    bitPat       : 0b01001100000000000000000000100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL1
    ),
  MnemonicEnums.rfscv : ISAInfo(
    bitPat       : 0b01001100000000000000000010100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL1
    ),
  MnemonicEnums.rldcl_dot : ISAInfo(
    bitPat       : 0b01111000000000000000000000010000.uint32,
    dontCareMask : 0b00000011111111111111111111100001.uint32,
    form         : FormEnums.MDS1
    ),
  MnemonicEnums.rldcr_dot : ISAInfo(
    bitPat       : 0b01111000000000000000000000010010.uint32,
    dontCareMask : 0b00000011111111111111111111100001.uint32,
    form         : FormEnums.MDS2
    ),
  MnemonicEnums.rldic_dot : ISAInfo(
    bitPat       : 0b01111000000000000000000000001000.uint32,
    dontCareMask : 0b00000011111111111111111111100011.uint32,
    form         : FormEnums.MD1
    ),
  MnemonicEnums.rldicl_dot : ISAInfo(
    bitPat       : 0b01111000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111100011.uint32,
    form         : FormEnums.MD1
    ),
  MnemonicEnums.rldicr_dot : ISAInfo(
    bitPat       : 0b01111000000000000000000000000100.uint32,
    dontCareMask : 0b00000011111111111111111111100011.uint32,
    form         : FormEnums.MD2
    ),
  MnemonicEnums.rldimi_dot : ISAInfo(
    bitPat       : 0b01111000000000000000000000001100.uint32,
    dontCareMask : 0b00000011111111111111111111100011.uint32,
    form         : FormEnums.MD1
    ),
  MnemonicEnums.rlwimi_dot : ISAInfo(
    bitPat       : 0b01010000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.M2
    ),
  MnemonicEnums.rlwinm_dot : ISAInfo(
    bitPat       : 0b01010100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.M2
    ),
  MnemonicEnums.rlwnm_dot : ISAInfo(
    bitPat       : 0b01011100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.M1
    ),
  MnemonicEnums.sc : ISAInfo(
    bitPat       : 0b01000100000000000000000000000010.uint32,
    dontCareMask : 0b00000011111111111111111111111101.uint32,
    form         : FormEnums.SC1
    ),
  MnemonicEnums.scv : ISAInfo(
    bitPat       : 0b01000100000000000000000000000001.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.SC1
    ),
  MnemonicEnums.setb : ISAInfo(
    bitPat       : 0b01111100000000000000000100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.slbfeedot : ISAInfo(
    bitPat       : 0b01111100000000000000011110100111.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.slbia : ISAInfo(
    bitPat       : 0b01111100000000000000001111100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X14
    ),
  MnemonicEnums.slbiag : ISAInfo(
    bitPat       : 0b01111100000000000000011010100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.slbie : ISAInfo(
    bitPat       : 0b01111100000000000000001101100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X3
    ),
  MnemonicEnums.slbieg : ISAInfo(
    bitPat       : 0b01111100000000000000001110100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X3
    ),
  MnemonicEnums.slbmfee : ISAInfo(
    bitPat       : 0b01111100000000000000011100100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X72
    ),
  MnemonicEnums.slbmfev : ISAInfo(
    bitPat       : 0b01111100000000000000011010100110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.slbmte : ISAInfo(
    bitPat       : 0b01111100000000000000001100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X55
    ),
  MnemonicEnums.slbsync : ISAInfo(
    bitPat       : 0b01111100000000000000001010100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X1
    ),
  MnemonicEnums.sld_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000110110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.slw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000110000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.srad_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011000110100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.sradi_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011001110100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XS1
    ),
  MnemonicEnums.sraw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011000110000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.srawi_dot : ISAInfo(
    bitPat       : 0b01111100000000000000011001110000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X65
    ),
  MnemonicEnums.srd_dot : ISAInfo(
    bitPat       : 0b01111100000000000000010000110110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.srw_dot : ISAInfo(
    bitPat       : 0b01111100000000000000010000110000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.stb : ISAInfo(
    bitPat       : 0b10011000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.stbcix : ISAInfo(
    bitPat       : 0b01111100000000000000011110101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stbcxdot : ISAInfo(
    bitPat       : 0b01111100000000000000010101101101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X67
    ),
  MnemonicEnums.stbu : ISAInfo(
    bitPat       : 0b10011100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.stbux : ISAInfo(
    bitPat       : 0b01111100000000000000000111101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stbx : ISAInfo(
    bitPat       : 0b01111100000000000000000110101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.std : ISAInfo(
    bitPat       : 0b11111000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS3
    ),
  MnemonicEnums.stdat : ISAInfo(
    bitPat       : 0b01111100000000000000010111001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X63
    ),
  MnemonicEnums.stdbrx : ISAInfo(
    bitPat       : 0b01111100000000000000010100101000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stdcix : ISAInfo(
    bitPat       : 0b01111100000000000000011111101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stdcxdot : ISAInfo(
    bitPat       : 0b01111100000000000000000110101101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X67
    ),
  MnemonicEnums.stdu : ISAInfo(
    bitPat       : 0b11111000000000000000000000000001.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS3
    ),
  MnemonicEnums.stdux : ISAInfo(
    bitPat       : 0b01111100000000000000000101101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stdx : ISAInfo(
    bitPat       : 0b01111100000000000000000100101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stfd : ISAInfo(
    bitPat       : 0b11011000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D3
    ),
  MnemonicEnums.stfdp : ISAInfo(
    bitPat       : 0b11110100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS1
    ),
  MnemonicEnums.stfdpx : ISAInfo(
    bitPat       : 0b01111100000000000000011100101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X34
    ),
  MnemonicEnums.stfdu : ISAInfo(
    bitPat       : 0b11011100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D3
    ),
  MnemonicEnums.stfdux : ISAInfo(
    bitPat       : 0b01111100000000000000010111101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X33
    ),
  MnemonicEnums.stfdx : ISAInfo(
    bitPat       : 0b01111100000000000000010110101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X33
    ),
  MnemonicEnums.stfiwx : ISAInfo(
    bitPat       : 0b01111100000000000000011110101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X33
    ),
  MnemonicEnums.stfs : ISAInfo(
    bitPat       : 0b11010000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D3
    ),
  MnemonicEnums.stfsu : ISAInfo(
    bitPat       : 0b11010100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D3
    ),
  MnemonicEnums.stfsux : ISAInfo(
    bitPat       : 0b01111100000000000000010101101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X33
    ),
  MnemonicEnums.stfsx : ISAInfo(
    bitPat       : 0b01111100000000000000010100101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X33
    ),
  MnemonicEnums.sth : ISAInfo(
    bitPat       : 0b10110000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.sthbrx : ISAInfo(
    bitPat       : 0b01111100000000000000011100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.sthcix : ISAInfo(
    bitPat       : 0b01111100000000000000011101101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.sthcxdot : ISAInfo(
    bitPat       : 0b01111100000000000000010110101101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X67
    ),
  MnemonicEnums.sthu : ISAInfo(
    bitPat       : 0b10110100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.sthux : ISAInfo(
    bitPat       : 0b01111100000000000000001101101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.sthx : ISAInfo(
    bitPat       : 0b01111100000000000000001100101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stmw : ISAInfo(
    bitPat       : 0b10111100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.stop : ISAInfo(
    bitPat       : 0b01001100000000000000001011100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.XL1
    ),
  MnemonicEnums.stq : ISAInfo(
    bitPat       : 0b11111000000000000000000000000010.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS4
    ),
  MnemonicEnums.stqcxdot : ISAInfo(
    bitPat       : 0b01111100000000000000000101101101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X69
    ),
  MnemonicEnums.stswi : ISAInfo(
    bitPat       : 0b01111100000000000000010110101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X64
    ),
  MnemonicEnums.stswx : ISAInfo(
    bitPat       : 0b01111100000000000000010100101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stvebx : ISAInfo(
    bitPat       : 0b01111100000000000000000100001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X89
    ),
  MnemonicEnums.stvehx : ISAInfo(
    bitPat       : 0b01111100000000000000000101001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X89
    ),
  MnemonicEnums.stvewx : ISAInfo(
    bitPat       : 0b01111100000000000000000110001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X89
    ),
  MnemonicEnums.stvx : ISAInfo(
    bitPat       : 0b01111100000000000000000111001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X89
    ),
  MnemonicEnums.stvxl : ISAInfo(
    bitPat       : 0b01111100000000000000001111001110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X89
    ),
  MnemonicEnums.stw : ISAInfo(
    bitPat       : 0b10010000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.stwat : ISAInfo(
    bitPat       : 0b01111100000000000000010110001100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X63
    ),
  MnemonicEnums.stwbrx : ISAInfo(
    bitPat       : 0b01111100000000000000010100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stwcix : ISAInfo(
    bitPat       : 0b01111100000000000000011100101010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stwcxdot : ISAInfo(
    bitPat       : 0b01111100000000000000000100101101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X67
    ),
  MnemonicEnums.stwu : ISAInfo(
    bitPat       : 0b10010100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D5
    ),
  MnemonicEnums.stwux : ISAInfo(
    bitPat       : 0b01111100000000000000000101101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stwx : ISAInfo(
    bitPat       : 0b01111100000000000000000100101110.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X66
    ),
  MnemonicEnums.stxsd : ISAInfo(
    bitPat       : 0b11110100000000000000000000000010.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS6
    ),
  MnemonicEnums.stxsdx : ISAInfo(
    bitPat       : 0b01111100000000000000010110011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxsibx : ISAInfo(
    bitPat       : 0b01111100000000000000011100011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxsihx : ISAInfo(
    bitPat       : 0b01111100000000000000011101011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxsiwx : ISAInfo(
    bitPat       : 0b01111100000000000000000100011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxssp : ISAInfo(
    bitPat       : 0b11110100000000000000000000000011.uint32,
    dontCareMask : 0b00000011111111111111111111111100.uint32,
    form         : FormEnums.DS6
    ),
  MnemonicEnums.stxsspx : ISAInfo(
    bitPat       : 0b01111100000000000000010100011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxv : ISAInfo(
    bitPat       : 0b11110100000000000000000000000101.uint32,
    dontCareMask : 0b00000011111111111111111111111000.uint32,
    form         : FormEnums.DQ2
    ),
  MnemonicEnums.stxvb16x : ISAInfo(
    bitPat       : 0b01111100000000000000011111011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxvd2x : ISAInfo(
    bitPat       : 0b01111100000000000000011110011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxvh8x : ISAInfo(
    bitPat       : 0b01111100000000000000011101011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxvl : ISAInfo(
    bitPat       : 0b01111100000000000000001100011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxvll : ISAInfo(
    bitPat       : 0b01111100000000000000001101011010.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxvw4x : ISAInfo(
    bitPat       : 0b01111100000000000000011100011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.stxvx : ISAInfo(
    bitPat       : 0b01111100000000000000001100011000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X81
    ),
  MnemonicEnums.subf_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000001010000.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.subfc_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000000010000.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.subfe_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000100010000.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO4
    ),
  MnemonicEnums.subfic : ISAInfo(
    bitPat       : 0b00100000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D8
    ),
  MnemonicEnums.subfme_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000111010000.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO1
    ),
  MnemonicEnums.subfze_o_dot : ISAInfo(
    bitPat       : 0b01111100000000000000000110010000.uint32,
    dontCareMask : 0b00000011111111111111110000000001.uint32,
    form         : FormEnums.XO1
    ),
  MnemonicEnums.sync : ISAInfo(
    bitPat       : 0b01111100000000000000010010101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X11
    ),
  MnemonicEnums.tabortdot : ISAInfo(
    bitPat       : 0b01111100000000000000011100011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X5
    ),
  MnemonicEnums.tabortdcdot : ISAInfo(
    bitPat       : 0b01111100000000000000011001011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X88
    ),
  MnemonicEnums.tabortdcidot : ISAInfo(
    bitPat       : 0b01111100000000000000011011011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X86
    ),
  MnemonicEnums.tabortwcdot : ISAInfo(
    bitPat       : 0b01111100000000000000011000011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X88
    ),
  MnemonicEnums.tabortwcidot : ISAInfo(
    bitPat       : 0b01111100000000000000011010011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X86
    ),
  MnemonicEnums.tbegindot : ISAInfo(
    bitPat       : 0b01111100000000000000010100011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X17
    ),
  MnemonicEnums.tcheck : ISAInfo(
    bitPat       : 0b01111100000000000000010110011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X18
    ),
  MnemonicEnums.td : ISAInfo(
    bitPat       : 0b01111100000000000000000010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X87
    ),
  MnemonicEnums.tdi : ISAInfo(
    bitPat       : 0b00001000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D9
    ),
  MnemonicEnums.tenddot : ISAInfo(
    bitPat       : 0b01111100000000000000010101011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X16
    ),
  MnemonicEnums.tlbie : ISAInfo(
    bitPat       : 0b01111100000000000000001001100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X57
    ),
  MnemonicEnums.tlbiel : ISAInfo(
    bitPat       : 0b01111100000000000000001000100100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X57
    ),
  MnemonicEnums.tlbsync : ISAInfo(
    bitPat       : 0b01111100000000000000010001101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X1
    ),
  MnemonicEnums.trechkptdot : ISAInfo(
    bitPat       : 0b01111100000000000000011111011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X2
    ),
  MnemonicEnums.treclaimdot : ISAInfo(
    bitPat       : 0b01111100000000000000011101011101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.X5
    ),
  MnemonicEnums.tsrdot : ISAInfo(
    bitPat       : 0b01111100000000000000010111011100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X7
    ),
  MnemonicEnums.tw : ISAInfo(
    bitPat       : 0b01111100000000000000000000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X87
    ),
  MnemonicEnums.twi : ISAInfo(
    bitPat       : 0b00001100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D9
    ),
  MnemonicEnums.vabsdub : ISAInfo(
    bitPat       : 0b00010000000000000000010000000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vabsduh : ISAInfo(
    bitPat       : 0b00010000000000000000010001000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vabsduw : ISAInfo(
    bitPat       : 0b00010000000000000000010010000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddcuq : ISAInfo(
    bitPat       : 0b00010000000000000000000101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddcuw : ISAInfo(
    bitPat       : 0b00010000000000000000000110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddecuq : ISAInfo(
    bitPat       : 0b00010000000000000000000000111101.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vaddeuqm : ISAInfo(
    bitPat       : 0b00010000000000000000000000111100.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vaddfp : ISAInfo(
    bitPat       : 0b00010000000000000000000000001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddsbs : ISAInfo(
    bitPat       : 0b00010000000000000000001100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddshs : ISAInfo(
    bitPat       : 0b00010000000000000000001101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddsws : ISAInfo(
    bitPat       : 0b00010000000000000000001110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddubm : ISAInfo(
    bitPat       : 0b00010000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddubs : ISAInfo(
    bitPat       : 0b00010000000000000000001000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vaddudm : ISAInfo(
    bitPat       : 0b00010000000000000000000011000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vadduhm : ISAInfo(
    bitPat       : 0b00010000000000000000000001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vadduhs : ISAInfo(
    bitPat       : 0b00010000000000000000001001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vadduqm : ISAInfo(
    bitPat       : 0b00010000000000000000000100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vadduwm : ISAInfo(
    bitPat       : 0b00010000000000000000000010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vadduws : ISAInfo(
    bitPat       : 0b00010000000000000000001010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vand : ISAInfo(
    bitPat       : 0b00010000000000000000010000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vandc : ISAInfo(
    bitPat       : 0b00010000000000000000010001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vavgsb : ISAInfo(
    bitPat       : 0b00010000000000000000010100000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vavgsh : ISAInfo(
    bitPat       : 0b00010000000000000000010101000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vavgsw : ISAInfo(
    bitPat       : 0b00010000000000000000010110000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vavgub : ISAInfo(
    bitPat       : 0b00010000000000000000010000000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vavguh : ISAInfo(
    bitPat       : 0b00010000000000000000010001000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vavguw : ISAInfo(
    bitPat       : 0b00010000000000000000010010000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vbpermd : ISAInfo(
    bitPat       : 0b00010000000000000000010111001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vbpermq : ISAInfo(
    bitPat       : 0b00010000000000000000010101001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vcfsx : ISAInfo(
    bitPat       : 0b00010000000000000000001101001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX13
    ),
  MnemonicEnums.vcfux : ISAInfo(
    bitPat       : 0b00010000000000000000001100001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX13
    ),
  MnemonicEnums.vcipher : ISAInfo(
    bitPat       : 0b00010000000000000000010100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vcipherlast : ISAInfo(
    bitPat       : 0b00010000000000000000010100001001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vclzb : ISAInfo(
    bitPat       : 0b00010000000000000000011100000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vclzd : ISAInfo(
    bitPat       : 0b00010000000000000000011111000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vclzh : ISAInfo(
    bitPat       : 0b00010000000000000000011101000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vclzlsbb : ISAInfo(
    bitPat       : 0b00010000000000000000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX2
    ),
  MnemonicEnums.vclzw : ISAInfo(
    bitPat       : 0b00010000000000000000011110000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vcmpbfp_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001111000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpeqfp_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000011000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpequb_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000000000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpequd_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000011000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpequh_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000001000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpequw_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000010000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgefp_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000111000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtfp_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001011000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtsb_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001100000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtsd_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001111000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtsh_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001101000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtsw_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001110000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtub_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001000000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtud_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001011000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtuh_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001001000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpgtuw_dot : ISAInfo(
    bitPat       : 0b00010000000000000000001010000110.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpneb_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000000000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpneh_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000001000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpnew_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000010000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpnezb_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000100000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpnezh_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000101000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vcmpnezw_dot : ISAInfo(
    bitPat       : 0b00010000000000000000000110000111.uint32,
    dontCareMask : 0b00000011111111111111110000000000.uint32,
    form         : FormEnums.VC1
    ),
  MnemonicEnums.vctsxs : ISAInfo(
    bitPat       : 0b00010000000000000000001111001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX13
    ),
  MnemonicEnums.vctuxs : ISAInfo(
    bitPat       : 0b00010000000000000000001110001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX13
    ),
  MnemonicEnums.vctzb : ISAInfo(
    bitPat       : 0b00010000000111000000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vctzd : ISAInfo(
    bitPat       : 0b00010000000111110000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vctzh : ISAInfo(
    bitPat       : 0b00010000000111010000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vctzlsbb : ISAInfo(
    bitPat       : 0b00010000000000010000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX2
    ),
  MnemonicEnums.vctzw : ISAInfo(
    bitPat       : 0b00010000000111100000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.veqv : ISAInfo(
    bitPat       : 0b00010000000000000000011010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vexptefp : ISAInfo(
    bitPat       : 0b00010000000000000000000110001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vextractd : ISAInfo(
    bitPat       : 0b00010000000000000000001011001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vextractub : ISAInfo(
    bitPat       : 0b00010000000000000000001000001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vextractuh : ISAInfo(
    bitPat       : 0b00010000000000000000001001001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vextractuw : ISAInfo(
    bitPat       : 0b00010000000000000000001010001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vextsb2d : ISAInfo(
    bitPat       : 0b00010000000110000000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vextsb2w : ISAInfo(
    bitPat       : 0b00010000000100000000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vextsh2d : ISAInfo(
    bitPat       : 0b00010000000110010000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vextsh2w : ISAInfo(
    bitPat       : 0b00010000000100010000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vextsw2d : ISAInfo(
    bitPat       : 0b00010000000110100000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vextublx : ISAInfo(
    bitPat       : 0b00010000000000000000011000001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vextubrx : ISAInfo(
    bitPat       : 0b00010000000000000000011100001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vextuhlx : ISAInfo(
    bitPat       : 0b00010000000000000000011001001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vextuhrx : ISAInfo(
    bitPat       : 0b00010000000000000000011101001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vextuwlx : ISAInfo(
    bitPat       : 0b00010000000000000000011010001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vextuwrx : ISAInfo(
    bitPat       : 0b00010000000000000000011110001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vgbbd : ISAInfo(
    bitPat       : 0b00010000000000000000010100001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vinsertb : ISAInfo(
    bitPat       : 0b00010000000000000000001100001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vinsertd : ISAInfo(
    bitPat       : 0b00010000000000000000001111001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vinserth : ISAInfo(
    bitPat       : 0b00010000000000000000001101001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vinsertw : ISAInfo(
    bitPat       : 0b00010000000000000000001110001101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vlogefp : ISAInfo(
    bitPat       : 0b00010000000000000000000111001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vmaddfp : ISAInfo(
    bitPat       : 0b00010000000000000000000000101110.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmaxfp : ISAInfo(
    bitPat       : 0b00010000000000000000010000001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxsb : ISAInfo(
    bitPat       : 0b00010000000000000000000100000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxsd : ISAInfo(
    bitPat       : 0b00010000000000000000000111000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxsh : ISAInfo(
    bitPat       : 0b00010000000000000000000101000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxsw : ISAInfo(
    bitPat       : 0b00010000000000000000000110000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxub : ISAInfo(
    bitPat       : 0b00010000000000000000000000000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxud : ISAInfo(
    bitPat       : 0b00010000000000000000000011000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxuh : ISAInfo(
    bitPat       : 0b00010000000000000000000001000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmaxuw : ISAInfo(
    bitPat       : 0b00010000000000000000000010000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmhaddshs : ISAInfo(
    bitPat       : 0b00010000000000000000000000100000.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmhraddshs : ISAInfo(
    bitPat       : 0b00010000000000000000000000100001.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vminfp : ISAInfo(
    bitPat       : 0b00010000000000000000010001001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminsb : ISAInfo(
    bitPat       : 0b00010000000000000000001100000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminsd : ISAInfo(
    bitPat       : 0b00010000000000000000001111000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminsh : ISAInfo(
    bitPat       : 0b00010000000000000000001101000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminsw : ISAInfo(
    bitPat       : 0b00010000000000000000001110000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminub : ISAInfo(
    bitPat       : 0b00010000000000000000001000000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminud : ISAInfo(
    bitPat       : 0b00010000000000000000001011000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminuh : ISAInfo(
    bitPat       : 0b00010000000000000000001001000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vminuw : ISAInfo(
    bitPat       : 0b00010000000000000000001010000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmladduhm : ISAInfo(
    bitPat       : 0b00010000000000000000000000100010.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmrgew : ISAInfo(
    bitPat       : 0b00010000000000000000011110001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrghb : ISAInfo(
    bitPat       : 0b00010000000000000000000000001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrghh : ISAInfo(
    bitPat       : 0b00010000000000000000000001001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrghw : ISAInfo(
    bitPat       : 0b00010000000000000000000010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrglb : ISAInfo(
    bitPat       : 0b00010000000000000000000100001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrglh : ISAInfo(
    bitPat       : 0b00010000000000000000000101001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrglw : ISAInfo(
    bitPat       : 0b00010000000000000000000110001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmrgow : ISAInfo(
    bitPat       : 0b00010000000000000000011010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmsummbm : ISAInfo(
    bitPat       : 0b00010000000000000000000000100101.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmsumshm : ISAInfo(
    bitPat       : 0b00010000000000000000000000101000.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmsumshs : ISAInfo(
    bitPat       : 0b00010000000000000000000000101001.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmsumubm : ISAInfo(
    bitPat       : 0b00010000000000000000000000100100.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmsumudm : ISAInfo(
    bitPat       : 0b00010000000000000000000000100011.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmsumuhm : ISAInfo(
    bitPat       : 0b00010000000000000000000000100110.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmsumuhs : ISAInfo(
    bitPat       : 0b00010000000000000000000000100111.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vmul10cuq : ISAInfo(
    bitPat       : 0b00010000000000000000000000000001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX14
    ),
  MnemonicEnums.vmul10ecuq : ISAInfo(
    bitPat       : 0b00010000000000000000000001000001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmul10euq : ISAInfo(
    bitPat       : 0b00010000000000000000001001000001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmul10uq : ISAInfo(
    bitPat       : 0b00010000000000000000001000000001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX14
    ),
  MnemonicEnums.vmulesb : ISAInfo(
    bitPat       : 0b00010000000000000000001100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulesh : ISAInfo(
    bitPat       : 0b00010000000000000000001101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulesw : ISAInfo(
    bitPat       : 0b00010000000000000000001110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmuleub : ISAInfo(
    bitPat       : 0b00010000000000000000001000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmuleuh : ISAInfo(
    bitPat       : 0b00010000000000000000001001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmuleuw : ISAInfo(
    bitPat       : 0b00010000000000000000001010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulosb : ISAInfo(
    bitPat       : 0b00010000000000000000000100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulosh : ISAInfo(
    bitPat       : 0b00010000000000000000000101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulosw : ISAInfo(
    bitPat       : 0b00010000000000000000000110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmuloub : ISAInfo(
    bitPat       : 0b00010000000000000000000000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulouh : ISAInfo(
    bitPat       : 0b00010000000000000000000001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmulouw : ISAInfo(
    bitPat       : 0b00010000000000000000000010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vmuluwm : ISAInfo(
    bitPat       : 0b00010000000000000000000010001001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vnand : ISAInfo(
    bitPat       : 0b00010000000000000000010110000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vncipher : ISAInfo(
    bitPat       : 0b00010000000000000000010101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vncipherlast : ISAInfo(
    bitPat       : 0b00010000000000000000010101001001.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vnegd : ISAInfo(
    bitPat       : 0b00010000000001110000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vnegw : ISAInfo(
    bitPat       : 0b00010000000001100000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vnmsubfp : ISAInfo(
    bitPat       : 0b00010000000000000000000000101111.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vnor : ISAInfo(
    bitPat       : 0b00010000000000000000010100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vor : ISAInfo(
    bitPat       : 0b00010000000000000000010010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vorc : ISAInfo(
    bitPat       : 0b00010000000000000000010101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vperm : ISAInfo(
    bitPat       : 0b00010000000000000000000000101011.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vpermr : ISAInfo(
    bitPat       : 0b00010000000000000000000000111011.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vpermxor : ISAInfo(
    bitPat       : 0b00010000000000000000000000101101.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vpkpx : ISAInfo(
    bitPat       : 0b00010000000000000000001100001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpksdss : ISAInfo(
    bitPat       : 0b00010000000000000000010111001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpksdus : ISAInfo(
    bitPat       : 0b00010000000000000000010101001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkshss : ISAInfo(
    bitPat       : 0b00010000000000000000000110001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkshus : ISAInfo(
    bitPat       : 0b00010000000000000000000100001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkswss : ISAInfo(
    bitPat       : 0b00010000000000000000000111001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkswus : ISAInfo(
    bitPat       : 0b00010000000000000000000101001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkudum : ISAInfo(
    bitPat       : 0b00010000000000000000010001001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkudus : ISAInfo(
    bitPat       : 0b00010000000000000000010011001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkuhum : ISAInfo(
    bitPat       : 0b00010000000000000000000000001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkuhus : ISAInfo(
    bitPat       : 0b00010000000000000000000010001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkuwum : ISAInfo(
    bitPat       : 0b00010000000000000000000001001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpkuwus : ISAInfo(
    bitPat       : 0b00010000000000000000000011001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpmsumb : ISAInfo(
    bitPat       : 0b00010000000000000000010000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpmsumd : ISAInfo(
    bitPat       : 0b00010000000000000000010011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpmsumh : ISAInfo(
    bitPat       : 0b00010000000000000000010001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpmsumw : ISAInfo(
    bitPat       : 0b00010000000000000000010010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vpopcntb : ISAInfo(
    bitPat       : 0b00010000000000000000011100000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vpopcntd : ISAInfo(
    bitPat       : 0b00010000000000000000011111000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vpopcnth : ISAInfo(
    bitPat       : 0b00010000000000000000011101000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vpopcntw : ISAInfo(
    bitPat       : 0b00010000000000000000011110000011.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vprtybd : ISAInfo(
    bitPat       : 0b00010000000010010000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vprtybq : ISAInfo(
    bitPat       : 0b00010000000010100000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vprtybw : ISAInfo(
    bitPat       : 0b00010000000010000000011000000010.uint32,
    dontCareMask : 0b00000011111000001111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vrefp : ISAInfo(
    bitPat       : 0b00010000000000000000000100001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vrfim : ISAInfo(
    bitPat       : 0b00010000000000000000001011001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vrfin : ISAInfo(
    bitPat       : 0b00010000000000000000001000001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vrfip : ISAInfo(
    bitPat       : 0b00010000000000000000001010001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vrfiz : ISAInfo(
    bitPat       : 0b00010000000000000000001001001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vrlb : ISAInfo(
    bitPat       : 0b00010000000000000000000000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrld : ISAInfo(
    bitPat       : 0b00010000000000000000000011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrldmi : ISAInfo(
    bitPat       : 0b00010000000000000000000011000101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrldnm : ISAInfo(
    bitPat       : 0b00010000000000000000000111000101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrlh : ISAInfo(
    bitPat       : 0b00010000000000000000000001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrlw : ISAInfo(
    bitPat       : 0b00010000000000000000000010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrlwmi : ISAInfo(
    bitPat       : 0b00010000000000000000000010000101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrlwnm : ISAInfo(
    bitPat       : 0b00010000000000000000000110000101.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vrsqrtefp : ISAInfo(
    bitPat       : 0b00010000000000000000000101001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vsbox : ISAInfo(
    bitPat       : 0b00010000000000000000010111001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX14
    ),
  MnemonicEnums.vsel : ISAInfo(
    bitPat       : 0b00010000000000000000000000101010.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vshasigmad : ISAInfo(
    bitPat       : 0b00010000000000000000011011000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vshasigmaw : ISAInfo(
    bitPat       : 0b00010000000000000000011010000010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.NONE
    ),
  MnemonicEnums.vsl : ISAInfo(
    bitPat       : 0b00010000000000000000000111000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vslb : ISAInfo(
    bitPat       : 0b00010000000000000000000100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsld : ISAInfo(
    bitPat       : 0b00010000000000000000010111000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsldoi : ISAInfo(
    bitPat       : 0b00010000000000000000000000101100.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA2
    ),
  MnemonicEnums.vslh : ISAInfo(
    bitPat       : 0b00010000000000000000000101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vslo : ISAInfo(
    bitPat       : 0b00010000000000000000010000001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vslv : ISAInfo(
    bitPat       : 0b00010000000000000000011101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vslw : ISAInfo(
    bitPat       : 0b00010000000000000000000110000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vspltb : ISAInfo(
    bitPat       : 0b00010000000000000000001000001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX7
    ),
  MnemonicEnums.vsplth : ISAInfo(
    bitPat       : 0b00010000000000000000001001001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX6
    ),
  MnemonicEnums.vspltisb : ISAInfo(
    bitPat       : 0b00010000000000000000001100001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX12
    ),
  MnemonicEnums.vspltish : ISAInfo(
    bitPat       : 0b00010000000000000000001101001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX12
    ),
  MnemonicEnums.vspltisw : ISAInfo(
    bitPat       : 0b00010000000000000000001110001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX12
    ),
  MnemonicEnums.vspltw : ISAInfo(
    bitPat       : 0b00010000000000000000001010001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX5
    ),
  MnemonicEnums.vsr : ISAInfo(
    bitPat       : 0b00010000000000000000001011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrab : ISAInfo(
    bitPat       : 0b00010000000000000000001100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrad : ISAInfo(
    bitPat       : 0b00010000000000000000001111000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrah : ISAInfo(
    bitPat       : 0b00010000000000000000001101000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsraw : ISAInfo(
    bitPat       : 0b00010000000000000000001110000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrb : ISAInfo(
    bitPat       : 0b00010000000000000000001000000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrd : ISAInfo(
    bitPat       : 0b00010000000000000000011011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrh : ISAInfo(
    bitPat       : 0b00010000000000000000001001000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsro : ISAInfo(
    bitPat       : 0b00010000000000000000010001001100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrv : ISAInfo(
    bitPat       : 0b00010000000000000000011100000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsrw : ISAInfo(
    bitPat       : 0b00010000000000000000001010000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubcuq : ISAInfo(
    bitPat       : 0b00010000000000000000010101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubcuw : ISAInfo(
    bitPat       : 0b00010000000000000000010110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubecuq : ISAInfo(
    bitPat       : 0b00010000000000000000000000111111.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vsubeuqm : ISAInfo(
    bitPat       : 0b00010000000000000000000000111110.uint32,
    dontCareMask : 0b00000011111111111111111111000000.uint32,
    form         : FormEnums.VA3
    ),
  MnemonicEnums.vsubfp : ISAInfo(
    bitPat       : 0b00010000000000000000000001001010.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubsbs : ISAInfo(
    bitPat       : 0b00010000000000000000011100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubshs : ISAInfo(
    bitPat       : 0b00010000000000000000011101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubsws : ISAInfo(
    bitPat       : 0b00010000000000000000011110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsububm : ISAInfo(
    bitPat       : 0b00010000000000000000010000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsububs : ISAInfo(
    bitPat       : 0b00010000000000000000011000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubudm : ISAInfo(
    bitPat       : 0b00010000000000000000010011000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubuhm : ISAInfo(
    bitPat       : 0b00010000000000000000010001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubuhs : ISAInfo(
    bitPat       : 0b00010000000000000000011001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubuqm : ISAInfo(
    bitPat       : 0b00010000000000000000010100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubuwm : ISAInfo(
    bitPat       : 0b00010000000000000000010010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsubuws : ISAInfo(
    bitPat       : 0b00010000000000000000011010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsum2sws : ISAInfo(
    bitPat       : 0b00010000000000000000011010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsum4sbs : ISAInfo(
    bitPat       : 0b00010000000000000000011100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsum4shs : ISAInfo(
    bitPat       : 0b00010000000000000000011001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsum4ubs : ISAInfo(
    bitPat       : 0b00010000000000000000011000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vsumsws : ISAInfo(
    bitPat       : 0b00010000000000000000011110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.vupkhpx : ISAInfo(
    bitPat       : 0b00010000000000000000001101001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupkhsb : ISAInfo(
    bitPat       : 0b00010000000000000000001000001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupkhsh : ISAInfo(
    bitPat       : 0b00010000000000000000001001001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupkhsw : ISAInfo(
    bitPat       : 0b00010000000000000000011001001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupklpx : ISAInfo(
    bitPat       : 0b00010000000000000000001111001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupklsb : ISAInfo(
    bitPat       : 0b00010000000000000000001010001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupklsh : ISAInfo(
    bitPat       : 0b00010000000000000000001011001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vupklsw : ISAInfo(
    bitPat       : 0b00010000000000000000011011001110.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX4
    ),
  MnemonicEnums.vxor : ISAInfo(
    bitPat       : 0b00010000000000000000010011000100.uint32,
    dontCareMask : 0b00000011111111111111100000000000.uint32,
    form         : FormEnums.VX17
    ),
  MnemonicEnums.op_wait : ISAInfo(
    bitPat       : 0b01111100000000000000000000111100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X13
    ),
  MnemonicEnums.xnop : ISAInfo(
    bitPat       : 0b01101000000000000000000000000000.uint32,
    dontCareMask : 0b00000000000000000000000000000000.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.xor_dot : ISAInfo(
    bitPat       : 0b01111100000000000000001001111000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X68
    ),
  MnemonicEnums.xori : ISAInfo(
    bitPat       : 0b01101000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.xoris : ISAInfo(
    bitPat       : 0b01101100000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111111111111111.uint32,
    form         : FormEnums.D6
    ),
  MnemonicEnums.xsabsdp : ISAInfo(
    bitPat       : 0b11110000000000000000010101100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsabsqp : ISAInfo(
    bitPat       : 0b11111100000000000000011001001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xsadddp : ISAInfo(
    bitPat       : 0b11110000000000000000000100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsaddqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000000000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsaddsp : ISAInfo(
    bitPat       : 0b11110000000000000000000000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xscmpeqdp : ISAInfo(
    bitPat       : 0b11110000000000000000000000011000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xscmpexpdp : ISAInfo(
    bitPat       : 0b11110000000000000000000111011000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_1
    ),
  MnemonicEnums.xscmpexpqp : ISAInfo(
    bitPat       : 0b11111100000000000000000101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X28
    ),
  MnemonicEnums.xscmpgedp : ISAInfo(
    bitPat       : 0b11110000000000000000000010011000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xscmpgtdp : ISAInfo(
    bitPat       : 0b11110000000000000000000001011000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xscmpodp : ISAInfo(
    bitPat       : 0b11110000000000000000000101011000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_1
    ),
  MnemonicEnums.xscmpoqp : ISAInfo(
    bitPat       : 0b11111100000000000000000100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X28
    ),
  MnemonicEnums.xscmpudp : ISAInfo(
    bitPat       : 0b11110000000000000000000100011000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_1
    ),
  MnemonicEnums.xscmpuqp : ISAInfo(
    bitPat       : 0b11111100000000000000010100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X28
    ),
  MnemonicEnums.xscpsgndp : ISAInfo(
    bitPat       : 0b11110000000000000000010110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xscpsgnqp : ISAInfo(
    bitPat       : 0b11111100000000000000000011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X93
    ),
  MnemonicEnums.xscvdphp : ISAInfo(
    bitPat       : 0b11110000000100010000010101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvdpqp : ISAInfo(
    bitPat       : 0b11111100000101100000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvdpsp : ISAInfo(
    bitPat       : 0b11110000000000000000010000100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvdpspn : ISAInfo(
    bitPat       : 0b11110000000000000000010000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvdpsxds : ISAInfo(
    bitPat       : 0b11110000000000000000010101100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvdpsxws : ISAInfo(
    bitPat       : 0b11110000000000000000000101100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvdpuxds : ISAInfo(
    bitPat       : 0b11110000000000000000010100100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvdpuxws : ISAInfo(
    bitPat       : 0b11110000000000000000000100100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvhpdp : ISAInfo(
    bitPat       : 0b11110000000100000000010101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvqpdp_o : ISAInfo(
    bitPat       : 0b11111100000101000000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X91
    ),
  MnemonicEnums.xscvqpsdz : ISAInfo(
    bitPat       : 0b11111100000110010000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvqpswz : ISAInfo(
    bitPat       : 0b11111100000010010000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvqpudz : ISAInfo(
    bitPat       : 0b11111100000100010000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvqpuwz : ISAInfo(
    bitPat       : 0b11111100000000010000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvsdqp : ISAInfo(
    bitPat       : 0b11111100000010100000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvspdp : ISAInfo(
    bitPat       : 0b11110000000000000000010100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvspdpn : ISAInfo(
    bitPat       : 0b11110000000000000000010100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvsxddp : ISAInfo(
    bitPat       : 0b11110000000000000000010111100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvsxdsp : ISAInfo(
    bitPat       : 0b11110000000000000000010011100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvudqp : ISAInfo(
    bitPat       : 0b11111100000000100000011010001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xscvuxddp : ISAInfo(
    bitPat       : 0b11110000000000000000010110100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xscvuxdsp : ISAInfo(
    bitPat       : 0b11110000000000000000010010100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsdivdp : ISAInfo(
    bitPat       : 0b11110000000000000000000111000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsdivqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000010001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsdivsp : ISAInfo(
    bitPat       : 0b11110000000000000000000011000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsiexpdp : ISAInfo(
    bitPat       : 0b11110000000000000000011100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X84
    ),
  MnemonicEnums.xsiexpqp : ISAInfo(
    bitPat       : 0b11111100000000000000011011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X93
    ),
  MnemonicEnums.xsmaddadp : ISAInfo(
    bitPat       : 0b11110000000000000000000100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmaddasp : ISAInfo(
    bitPat       : 0b11110000000000000000000000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmaddmdp : ISAInfo(
    bitPat       : 0b11110000000000000000000101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmaddmsp : ISAInfo(
    bitPat       : 0b11110000000000000000000001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmaddqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000001100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsmaxcdp : ISAInfo(
    bitPat       : 0b11110000000000000000010000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmaxdp : ISAInfo(
    bitPat       : 0b11110000000000000000010100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmaxjdp : ISAInfo(
    bitPat       : 0b11110000000000000000010010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmincdp : ISAInfo(
    bitPat       : 0b11110000000000000000010001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmindp : ISAInfo(
    bitPat       : 0b11110000000000000000010101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsminjdp : ISAInfo(
    bitPat       : 0b11110000000000000000010011000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmsubadp : ISAInfo(
    bitPat       : 0b11110000000000000000000110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmsubasp : ISAInfo(
    bitPat       : 0b11110000000000000000000010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmsubmdp : ISAInfo(
    bitPat       : 0b11110000000000000000000111001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmsubmsp : ISAInfo(
    bitPat       : 0b11110000000000000000000011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmsubqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000001101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsmuldp : ISAInfo(
    bitPat       : 0b11110000000000000000000110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsmulqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000000001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsmulsp : ISAInfo(
    bitPat       : 0b11110000000000000000000010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnabsdp : ISAInfo(
    bitPat       : 0b11110000000000000000010110100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsnabsqp : ISAInfo(
    bitPat       : 0b11111100000010000000011001001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xsnegdp : ISAInfo(
    bitPat       : 0b11110000000000000000010111100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsnegqp : ISAInfo(
    bitPat       : 0b11111100000100000000011001001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xsnmaddadp : ISAInfo(
    bitPat       : 0b11110000000000000000010100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmaddasp : ISAInfo(
    bitPat       : 0b11110000000000000000010000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmaddmdp : ISAInfo(
    bitPat       : 0b11110000000000000000010101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmaddmsp : ISAInfo(
    bitPat       : 0b11110000000000000000010001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmaddqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000001110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsnmsubadp : ISAInfo(
    bitPat       : 0b11110000000000000000010110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmsubasp : ISAInfo(
    bitPat       : 0b11110000000000000000010010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmsubmdp : ISAInfo(
    bitPat       : 0b11110000000000000000010111001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmsubmsp : ISAInfo(
    bitPat       : 0b11110000000000000000010011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xsnmsubqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000001111001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xsrdpi : ISAInfo(
    bitPat       : 0b11110000000000000000000100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrdpic : ISAInfo(
    bitPat       : 0b11110000000000000000000110101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrdpim : ISAInfo(
    bitPat       : 0b11110000000000000000000111100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrdpip : ISAInfo(
    bitPat       : 0b11110000000000000000000110100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrdpiz : ISAInfo(
    bitPat       : 0b11110000000000000000000101100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsredp : ISAInfo(
    bitPat       : 0b11110000000000000000000101101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsresp : ISAInfo(
    bitPat       : 0b11110000000000000000000001101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrqpi_x : ISAInfo(
    bitPat       : 0b11111100000000000000000000001010.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_9
    ),
  MnemonicEnums.xsrqpxp : ISAInfo(
    bitPat       : 0b11111100000000000000000001001010.uint32,
    dontCareMask : 0b00000011111111111111111000000001.uint32,
    form         : FormEnums.Z23_8
    ),
  MnemonicEnums.xsrsp : ISAInfo(
    bitPat       : 0b11110000000000000000010001100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrsqrtedp : ISAInfo(
    bitPat       : 0b11110000000000000000000100101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xsrsqrtesp : ISAInfo(
    bitPat       : 0b11110000000000000000000000101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xssqrtdp : ISAInfo(
    bitPat       : 0b11110000000000000000000100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xssqrtqp_o : ISAInfo(
    bitPat       : 0b11111100000110110000011001001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X91
    ),
  MnemonicEnums.xssqrtsp : ISAInfo(
    bitPat       : 0b11110000000000000000000000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xssubdp : ISAInfo(
    bitPat       : 0b11110000000000000000000101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xssubqp_o : ISAInfo(
    bitPat       : 0b11111100000000000000010000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X94
    ),
  MnemonicEnums.xssubsp : ISAInfo(
    bitPat       : 0b11110000000000000000000001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xstdivdp : ISAInfo(
    bitPat       : 0b11110000000000000000000111101000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_1
    ),
  MnemonicEnums.xstsqrtdp : ISAInfo(
    bitPat       : 0b11110000000000000000000110101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_1
    ),
  MnemonicEnums.xststdcdp : ISAInfo(
    bitPat       : 0b11110000000000000000010110101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_2
    ),
  MnemonicEnums.xststdcqp : ISAInfo(
    bitPat       : 0b11111100000000000000010110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000001.uint32,
    form         : FormEnums.X31
    ),
  MnemonicEnums.xststdcsp : ISAInfo(
    bitPat       : 0b11110000000000000000010010101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_2
    ),
  MnemonicEnums.xsxexpdp : ISAInfo(
    bitPat       : 0b11110000000000000000010101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_3
    ),
  MnemonicEnums.xsxexpqp : ISAInfo(
    bitPat       : 0b11111100000000100000011001001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xsxsigdp : ISAInfo(
    bitPat       : 0b11110000000000010000010101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_3
    ),
  MnemonicEnums.xsxsigqp : ISAInfo(
    bitPat       : 0b11111100000100100000011001001000.uint32,
    dontCareMask : 0b00000011111000001111100000000001.uint32,
    form         : FormEnums.X90
    ),
  MnemonicEnums.xvabsdp : ISAInfo(
    bitPat       : 0b11110000000000000000011101100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvabssp : ISAInfo(
    bitPat       : 0b11110000000000000000011001100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvadddp : ISAInfo(
    bitPat       : 0b11110000000000000000001100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvaddsp : ISAInfo(
    bitPat       : 0b11110000000000000000001000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvcmpeqdp_dot : ISAInfo(
    bitPat       : 0b11110000000000000000001100011000.uint32,
    dontCareMask : 0b00000011111111111111110000000111.uint32,
    form         : FormEnums.XX3_4
    ),
  MnemonicEnums.xvcmpeqsp_dot : ISAInfo(
    bitPat       : 0b11110000000000000000001000011000.uint32,
    dontCareMask : 0b00000011111111111111110000000111.uint32,
    form         : FormEnums.XX3_4
    ),
  MnemonicEnums.xvcmpgedp_dot : ISAInfo(
    bitPat       : 0b11110000000000000000001110011000.uint32,
    dontCareMask : 0b00000011111111111111110000000111.uint32,
    form         : FormEnums.XX3_4
    ),
  MnemonicEnums.xvcmpgesp_dot : ISAInfo(
    bitPat       : 0b11110000000000000000001010011000.uint32,
    dontCareMask : 0b00000011111111111111110000000111.uint32,
    form         : FormEnums.XX3_4
    ),
  MnemonicEnums.xvcmpgtdp_dot : ISAInfo(
    bitPat       : 0b11110000000000000000001101011000.uint32,
    dontCareMask : 0b00000011111111111111110000000111.uint32,
    form         : FormEnums.XX3_4
    ),
  MnemonicEnums.xvcmpgtsp_dot : ISAInfo(
    bitPat       : 0b11110000000000000000001001011000.uint32,
    dontCareMask : 0b00000011111111111111110000000111.uint32,
    form         : FormEnums.XX3_4
    ),
  MnemonicEnums.xvcpsgndp : ISAInfo(
    bitPat       : 0b11110000000000000000011110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvcpsgnsp : ISAInfo(
    bitPat       : 0b11110000000000000000011010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvcvdpsp : ISAInfo(
    bitPat       : 0b11110000000000000000011000100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvdpsxds : ISAInfo(
    bitPat       : 0b11110000000000000000011101100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvdpsxws : ISAInfo(
    bitPat       : 0b11110000000000000000001101100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvdpuxds : ISAInfo(
    bitPat       : 0b11110000000000000000011100100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvdpuxws : ISAInfo(
    bitPat       : 0b11110000000000000000001100100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvhpsp : ISAInfo(
    bitPat       : 0b11110000000110000000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvspdp : ISAInfo(
    bitPat       : 0b11110000000000000000011100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvsphp : ISAInfo(
    bitPat       : 0b11110000000110010000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvspsxds : ISAInfo(
    bitPat       : 0b11110000000000000000011001100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvspsxws : ISAInfo(
    bitPat       : 0b11110000000000000000001001100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvspuxds : ISAInfo(
    bitPat       : 0b11110000000000000000011000100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvspuxws : ISAInfo(
    bitPat       : 0b11110000000000000000001000100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvsxddp : ISAInfo(
    bitPat       : 0b11110000000000000000011111100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvsxdsp : ISAInfo(
    bitPat       : 0b11110000000000000000011011100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvsxwdp : ISAInfo(
    bitPat       : 0b11110000000000000000001111100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvsxwsp : ISAInfo(
    bitPat       : 0b11110000000000000000001011100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvuxddp : ISAInfo(
    bitPat       : 0b11110000000000000000011110100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvuxdsp : ISAInfo(
    bitPat       : 0b11110000000000000000011010100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvuxwdp : ISAInfo(
    bitPat       : 0b11110000000000000000001110100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvcvuxwsp : ISAInfo(
    bitPat       : 0b11110000000000000000001010100000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvdivdp : ISAInfo(
    bitPat       : 0b11110000000000000000001111000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvdivsp : ISAInfo(
    bitPat       : 0b11110000000000000000001011000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xviexpdp : ISAInfo(
    bitPat       : 0b11110000000000000000011111000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xviexpsp : ISAInfo(
    bitPat       : 0b11110000000000000000011011000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmaddadp : ISAInfo(
    bitPat       : 0b11110000000000000000001100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmaddasp : ISAInfo(
    bitPat       : 0b11110000000000000000001000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmaddmdp : ISAInfo(
    bitPat       : 0b11110000000000000000001101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmaddmsp : ISAInfo(
    bitPat       : 0b11110000000000000000001001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmaxdp : ISAInfo(
    bitPat       : 0b11110000000000000000011100000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmaxsp : ISAInfo(
    bitPat       : 0b11110000000000000000011000000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmindp : ISAInfo(
    bitPat       : 0b11110000000000000000011101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvminsp : ISAInfo(
    bitPat       : 0b11110000000000000000011001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmsubadp : ISAInfo(
    bitPat       : 0b11110000000000000000001110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmsubasp : ISAInfo(
    bitPat       : 0b11110000000000000000001010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmsubmdp : ISAInfo(
    bitPat       : 0b11110000000000000000001111001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmsubmsp : ISAInfo(
    bitPat       : 0b11110000000000000000001011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmuldp : ISAInfo(
    bitPat       : 0b11110000000000000000001110000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvmulsp : ISAInfo(
    bitPat       : 0b11110000000000000000001010000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnabsdp : ISAInfo(
    bitPat       : 0b11110000000000000000011110100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvnabssp : ISAInfo(
    bitPat       : 0b11110000000000000000011010100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvnegdp : ISAInfo(
    bitPat       : 0b11110000000000000000011111100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvnegsp : ISAInfo(
    bitPat       : 0b11110000000000000000011011100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvnmaddadp : ISAInfo(
    bitPat       : 0b11110000000000000000011100001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmaddasp : ISAInfo(
    bitPat       : 0b11110000000000000000011000001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmaddmdp : ISAInfo(
    bitPat       : 0b11110000000000000000011101001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmaddmsp : ISAInfo(
    bitPat       : 0b11110000000000000000011001001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmsubadp : ISAInfo(
    bitPat       : 0b11110000000000000000011110001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmsubasp : ISAInfo(
    bitPat       : 0b11110000000000000000011010001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmsubmdp : ISAInfo(
    bitPat       : 0b11110000000000000000011111001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvnmsubmsp : ISAInfo(
    bitPat       : 0b11110000000000000000011011001000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvrdpi : ISAInfo(
    bitPat       : 0b11110000000000000000001100100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrdpic : ISAInfo(
    bitPat       : 0b11110000000000000000001110101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrdpim : ISAInfo(
    bitPat       : 0b11110000000000000000001111100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrdpip : ISAInfo(
    bitPat       : 0b11110000000000000000001110100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrdpiz : ISAInfo(
    bitPat       : 0b11110000000000000000001101100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvredp : ISAInfo(
    bitPat       : 0b11110000000000000000001101101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvresp : ISAInfo(
    bitPat       : 0b11110000000000000000001001101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrspi : ISAInfo(
    bitPat       : 0b11110000000000000000001000100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrspic : ISAInfo(
    bitPat       : 0b11110000000000000000001010101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrspim : ISAInfo(
    bitPat       : 0b11110000000000000000001011100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrspip : ISAInfo(
    bitPat       : 0b11110000000000000000001010100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrspiz : ISAInfo(
    bitPat       : 0b11110000000000000000001001100100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrsqrtedp : ISAInfo(
    bitPat       : 0b11110000000000000000001100101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvrsqrtesp : ISAInfo(
    bitPat       : 0b11110000000000000000001000101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvsqrtdp : ISAInfo(
    bitPat       : 0b11110000000000000000001100101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvsqrtsp : ISAInfo(
    bitPat       : 0b11110000000000000000001000101100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvsubdp : ISAInfo(
    bitPat       : 0b11110000000000000000001101000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvsubsp : ISAInfo(
    bitPat       : 0b11110000000000000000001001000000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xvtdivdp : ISAInfo(
    bitPat       : 0b11110000000000000000001111101000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_1
    ),
  MnemonicEnums.xvtdivsp : ISAInfo(
    bitPat       : 0b11110000000000000000001011101000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_1
    ),
  MnemonicEnums.xvtsqrtdp : ISAInfo(
    bitPat       : 0b11110000000000000000001110101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_1
    ),
  MnemonicEnums.xvtsqrtsp : ISAInfo(
    bitPat       : 0b11110000000000000000001010101000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_1
    ),
  MnemonicEnums.xvtstdcdp : ISAInfo(
    bitPat       : 0b11110000000000000000011110101000.uint32,
    dontCareMask : 0b00000011111111111111100001000111.uint32,
    form         : FormEnums.XX2_7
    ),
  MnemonicEnums.xvtstdcsp : ISAInfo(
    bitPat       : 0b11110000000000000000011010101000.uint32,
    dontCareMask : 0b00000011111111111111100001000111.uint32,
    form         : FormEnums.XX2_7
    ),
  MnemonicEnums.xvxexpdp : ISAInfo(
    bitPat       : 0b11110000000000000000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvxexpsp : ISAInfo(
    bitPat       : 0b11110000000010000000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvxsigdp : ISAInfo(
    bitPat       : 0b11110000000000010000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xvxsigsp : ISAInfo(
    bitPat       : 0b11110000000010010000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xxbrd : ISAInfo(
    bitPat       : 0b11110000000101110000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xxbrh : ISAInfo(
    bitPat       : 0b11110000000001110000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xxbrq : ISAInfo(
    bitPat       : 0b11110000000111110000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xxbrw : ISAInfo(
    bitPat       : 0b11110000000011110000011101101100.uint32,
    dontCareMask : 0b00000011111000001111100000000011.uint32,
    form         : FormEnums.XX2_4
    ),
  MnemonicEnums.xxextractuw : ISAInfo(
    bitPat       : 0b11110000000000000000001010010100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_6
    ),
  MnemonicEnums.xxinsertw : ISAInfo(
    bitPat       : 0b11110000000000000000001011010100.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_6
    ),
  MnemonicEnums.xxland : ISAInfo(
    bitPat       : 0b11110000000000000000010000010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxlandc : ISAInfo(
    bitPat       : 0b11110000000000000000010001010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxleqv : ISAInfo(
    bitPat       : 0b11110000000000000000010111010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxlnand : ISAInfo(
    bitPat       : 0b11110000000000000000010110010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxlnor : ISAInfo(
    bitPat       : 0b11110000000000000000010100010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxlor : ISAInfo(
    bitPat       : 0b11110000000000000000010010010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxlorc : ISAInfo(
    bitPat       : 0b11110000000000000000010101010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxlxor : ISAInfo(
    bitPat       : 0b11110000000000000000010011010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxmrghw : ISAInfo(
    bitPat       : 0b11110000000000000000000010010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxmrglw : ISAInfo(
    bitPat       : 0b11110000000000000000000110010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxperm : ISAInfo(
    bitPat       : 0b11110000000000000000000011010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxpermdi : ISAInfo(
    bitPat       : 0b11110000000000000000000001010000.uint32,
    dontCareMask : 0b00000011111111111111101100000111.uint32,
    form         : FormEnums.XX3_2
    ),
  MnemonicEnums.xxpermr : ISAInfo(
    bitPat       : 0b11110000000000000000000111010000.uint32,
    dontCareMask : 0b00000011111111111111100000000111.uint32,
    form         : FormEnums.XX3_5
    ),
  MnemonicEnums.xxsel : ISAInfo(
    bitPat       : 0b11110000000000000000000000110000.uint32,
    dontCareMask : 0b00000011111111111111111111001111.uint32,
    form         : FormEnums.XX4_1
    ),
  MnemonicEnums.xxsldwi : ISAInfo(
    bitPat       : 0b11110000000000000000000000010000.uint32,
    dontCareMask : 0b00000011111111111111101100000111.uint32,
    form         : FormEnums.XX3_3
    ),
  MnemonicEnums.xxspltib : ISAInfo(
    bitPat       : 0b11110000000000000000001011010000.uint32,
    dontCareMask : 0b00000011111001111111100000000001.uint32,
    form         : FormEnums.X82
    ),
  MnemonicEnums.xxspltw : ISAInfo(
    bitPat       : 0b11110000000000000000001010010000.uint32,
    dontCareMask : 0b00000011111111111111100000000011.uint32,
    form         : FormEnums.XX2_5
    ),
}.toTable