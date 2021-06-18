# generated 2021-06-17 21:53:32.245631
from bitops import bitsliced, testBit, setMasked

proc power_bitsliced(insn: uint32; slice: Slice[int]): uint64 = 
  insn.bitsliced((31 - slice.b)..(31 - slice.a)).uint64

proc signed_power_bitsliced(insn: uint32; slice: Slice[int]): int64 = 
  var sign_extended = insn.bitsliced((31 - slice.b)..(31 - slice.a)).uint64

  if insn.testBit(31 - slice.a):
    var offset = (31 - slice.a) - (31 - slice.b)
    sign_extended = sign_extended.uint32.setMasked(offset..63)
  
  return cast[int64](sign_extended)
  
type NONE* = object

type A1* = object
proc FRT*(form : A1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRB*(form : A1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : A1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type A2* = object
proc FRT*(form : A2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : A2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRC*(form : A2, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)
proc Rc*(form : A2, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type A3* = object
proc FRT*(form : A3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : A3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : A3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : A3, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type A4* = object
proc FRT*(form : A4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : A4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : A4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc FRC*(form : A4, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)
proc Rc*(form : A4, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type A5* = object
proc RT*(form : A5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : A5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : A5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BC*(form : A5, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)

type B1* = object
proc BO*(form : B1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc BI*(form : B1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc BD*(form : B1, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)
proc AA*(form : B1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc LK*(form : B1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type D1* = object
proc BF*(form : D1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc L*(form : D1, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)
proc RA*(form : D1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SI*(form : D1, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type D2* = object
proc BF*(form : D2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc L*(form : D2, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)
proc RA*(form : D2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc UI*(form : D2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 31)

type D3* = object
proc FRS*(form : D3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc D*(form : D3, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type D4* = object
proc FRT*(form : D4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc D*(form : D4, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type D5* = object
proc RS*(form : D5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc D*(form : D5, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type D6* = object
proc RS*(form : D6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D6, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc UI*(form : D6, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 31)

type D7* = object
proc RT*(form : D7, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D7, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc D*(form : D7, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type D8* = object
proc RT*(form : D8, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D8, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SI*(form : D8, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type D9* = object
proc TO*(form : D9, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : D9, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SI*(form : D9, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 31)

type DQ1* = object
proc RTp*(form : DQ1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DQ1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DQ*(form : DQ1, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 27)
proc PT*(form : DQ1, insn : uint32) : uint64 = insn.power_bitsliced(28 .. 31)

type DQ2* = object
proc S*(form : DQ2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DQ2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DQ*(form : DQ2, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 27)
proc SX*(form : DQ2, insn : uint32) : uint64 = insn.power_bitsliced(28 .. 28)

type DQ3* = object
proc TO*(form : DQ3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DQ3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DQ*(form : DQ3, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 27)
proc TX*(form : DQ3, insn : uint32) : uint64 = insn.power_bitsliced(28 .. 28)

type DS1* = object
proc FRSp*(form : DS1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS1, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DS2* = object
proc FRTp*(form : DS2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS2, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DS3* = object
proc RS*(form : DS3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS3, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DS4* = object
proc RSp*(form : DS4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS4, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DS5* = object
proc RT*(form : DS5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS5, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DS6* = object
proc VRS*(form : DS6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS6, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS6, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DS7* = object
proc VRT*(form : DS7, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : DS7, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DS*(form : DS7, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 29)

type DX1* = object
proc RT*(form : DX1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc d1*(form : DX1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc d0*(form : DX1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 25)
proc d2*(form : DX1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type I1* = object
proc LI*(form : I1, insn : uint32) : int64 = insn.signed_power_bitsliced(6 .. 29)
proc AA*(form : I1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc LK*(form : I1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type M1* = object
proc RS*(form : M1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : M1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : M1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc MB*(form : M1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)
proc ME*(form : M1, insn : uint32) : uint64 = insn.power_bitsliced(26 .. 30)
proc Rc*(form : M1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type M2* = object
proc RS*(form : M2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : M2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SH*(form : M2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc MB*(form : M2, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)
proc ME*(form : M2, insn : uint32) : uint64 = insn.power_bitsliced(26 .. 30)
proc Rc*(form : M2, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type MD1* = object
proc RS*(form : MD1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : MD1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc sh1*(form : MD1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc mb*(form : MD1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 26)
proc sh2*(form : MD1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc Rc*(form : MD1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type MD2* = object
proc RS*(form : MD2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : MD2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc sh1*(form : MD2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc me*(form : MD2, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 26)
proc sh2*(form : MD2, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc Rc*(form : MD2, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type MDS1* = object
proc RS*(form : MDS1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : MDS1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : MDS1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc mb*(form : MDS1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 26)
proc sh*(form : MDS1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc Rc*(form : MDS1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type MDS2* = object
proc RS*(form : MDS2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : MDS2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : MDS2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc me*(form : MDS2, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 26)
proc sh*(form : MDS2, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc Rc*(form : MDS2, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type SC1* = object
proc LEV*(form : SC1, insn : uint32) : uint64 = insn.power_bitsliced(20 .. 26)

type VA1* = object
proc RT*(form : VA1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : VA1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : VA1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RC*(form : VA1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)

type VA2* = object
proc VRT*(form : VA2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VA2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VA2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc SHB*(form : VA2, insn : uint32) : uint64 = insn.power_bitsliced(22 .. 25)

type VA3* = object
proc VRT*(form : VA3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VA3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VA3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc VRC*(form : VA3, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)

type VC1* = object
proc VRT*(form : VC1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VC1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VC1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : VC1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)

type VX1* = object
proc VRB*(form : VX1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX2* = object
proc RT*(form : VX2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : VX2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX3* = object
proc VRT*(form : VX3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)

type VX4* = object
proc VRT*(form : VX4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRB*(form : VX4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX5* = object
proc VRT*(form : VX5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc UIM*(form : VX5, insn : uint32) : uint64 = insn.power_bitsliced(14 .. 15)
proc VRB*(form : VX5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX6* = object
proc VRT*(form : VX6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc UIM*(form : VX6, insn : uint32) : uint64 = insn.power_bitsliced(13 .. 15)
proc VRB*(form : VX6, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX7* = object
proc VRT*(form : VX7, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc UIM*(form : VX7, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 15)
proc VRB*(form : VX7, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX8* = object
proc VRT*(form : VX8, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : VX8, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX8, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX9* = object
proc VRT*(form : VX9, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : VX9, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX9, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc PS*(form : VX9, insn : uint32) : uint64 = insn.power_bitsliced(22 .. 22)

type VX10* = object
proc VRT*(form : VX10, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : VX10, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX10, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX11* = object
proc VRT*(form : VX11, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : VX11, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX11, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX12* = object
proc VRT*(form : VX12, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc SIM*(form : VX12, insn : uint32) : int64 = insn.signed_power_bitsliced(11 .. 15)

type VX13* = object
proc VRT*(form : VX13, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc UIM*(form : VX13, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX13, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX14* = object
proc VRT*(form : VX14, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VX14, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)

type VX15* = object
proc VRT*(form : VX15, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VX15, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX15, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type VX16* = object
proc VRT*(form : VX16, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VX16, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX16, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc PS*(form : VX16, insn : uint32) : uint64 = insn.power_bitsliced(22 .. 22)

type VX17* = object
proc VRT*(form : VX17, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : VX17, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : VX17, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X1* = object

type X2* = object

type X3* = object
proc RB*(form : X3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X4* = object
proc RA*(form : X4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)

type X5* = object
proc RA*(form : X5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)

type X6* = object
proc RA*(form : X6, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X6, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X7* = object
proc L*(form : X7, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)

type X8* = object
proc L*(form : X8, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)
proc RB*(form : X8, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X9* = object
proc RA*(form : X9, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X9, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X10* = object
proc L*(form : X10, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)
proc RA*(form : X10, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X10, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X11* = object
proc L*(form : X11, insn : uint32) : uint64 = insn.power_bitsliced(9 .. 10)

type X12* = object
proc L*(form : X12, insn : uint32) : uint64 = insn.power_bitsliced(9 .. 10)
proc RA*(form : X12, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X12, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X12, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X13* = object
proc WC*(form : X13, insn : uint32) : uint64 = insn.power_bitsliced(9 .. 10)

type X14* = object
proc IH*(form : X14, insn : uint32) : uint64 = insn.power_bitsliced(8 .. 10)

type X15* = object
proc CT*(form : X15, insn : uint32) : uint64 = insn.power_bitsliced(7 .. 10)
proc RA*(form : X15, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X15, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X16* = object
proc A*(form : X16, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 6)

type X17* = object
proc A*(form : X17, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 6)
proc R*(form : X17, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)

type X18* = object
proc BF*(form : X18, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)

type X19* = object
proc BF*(form : X19, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRB*(form : X19, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X20* = object
proc BF*(form : X20, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc W*(form : X20, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc U*(form : X20, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 19)
proc Rc*(form : X20, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X21* = object
proc BF*(form : X21, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc BFA*(form : X21, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 13)

type X22* = object
proc BF*(form : X22, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRA*(form : X22, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : X22, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X23* = object
proc BF*(form : X23, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRAp*(form : X23, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : X23, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X24* = object
proc BF*(form : X24, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRAp*(form : X24, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : X24, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X25* = object
proc BF*(form : X25, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc RA*(form : X25, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X25, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X26* = object
proc BF*(form : X26, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc UIM*(form : X26, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : X26, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X27* = object
proc BF*(form : X27, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc UIM*(form : X27, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : X27, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X28* = object
proc BF*(form : X28, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc VRA*(form : X28, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : X28, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X29* = object
proc BF*(form : X29, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc RA*(form : X29, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X29, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X30* = object
proc BF*(form : X30, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc L*(form : X30, insn : uint32) : uint64 = insn.power_bitsliced(10 .. 10)
proc RA*(form : X30, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X30, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X31* = object
proc BF*(form : X31, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc DCMX*(form : X31, insn : uint32) : uint64 = insn.power_bitsliced(9 .. 15)
proc VRB*(form : X31, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X32* = object
proc BT*(form : X32, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc Rc*(form : X32, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X33* = object
proc FRS*(form : X33, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X33, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X33, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X34* = object
proc FRSp*(form : X34, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X34, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X34, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X35* = object
proc FRT*(form : X35, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc Rc*(form : X35, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X36* = object
proc FRT*(form : X36, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRB*(form : X36, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X36, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X37* = object
proc FRT*(form : X37, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRBp*(form : X37, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X37, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X38* = object
proc FRT*(form : X38, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X38, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc Rc*(form : X38, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X39* = object
proc FRT*(form : X39, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X39, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)

type X40* = object
proc FRT*(form : X40, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X40, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RM*(form : X40, insn : uint32) : uint64 = insn.power_bitsliced(19 .. 20)

type X41* = object
proc FRT*(form : X41, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X41, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DRM*(form : X41, insn : uint32) : uint64 = insn.power_bitsliced(18 .. 20)

type X42* = object
proc FRT*(form : X42, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X42, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : X42, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X43* = object
proc FRT*(form : X43, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : X43, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : X43, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X44* = object
proc FRT*(form : X44, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : X44, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : X44, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X44, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X45* = object
proc FRT*(form : X45, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X45, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X45, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X46* = object
proc FRT*(form : X46, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc S*(form : X46, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 11)
proc FRB*(form : X46, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X46, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X47* = object
proc FRT*(form : X47, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc SP*(form : X47, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 12)
proc FRB*(form : X47, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X47, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X48* = object
proc FRTp*(form : X48, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRB*(form : X48, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X48, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X49* = object
proc FRTp*(form : X49, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRBp*(form : X49, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X49, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X50* = object
proc FRTp*(form : X50, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : X50, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : X50, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X50, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X51* = object
proc FRTp*(form : X51, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRAp*(form : X51, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : X51, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X51, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X52* = object
proc FRTp*(form : X52, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X52, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X52, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X53* = object
proc FRTp*(form : X53, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc S*(form : X53, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 11)
proc FRBp*(form : X53, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X53, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X54* = object
proc FRTp*(form : X54, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc SP*(form : X54, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 12)
proc FRBp*(form : X54, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X54, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X55* = object
proc RS*(form : X55, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RB*(form : X55, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X56* = object
proc RS*(form : X56, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc L*(form : X56, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)

type X57* = object
proc RS*(form : X57, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RIC*(form : X57, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 13)
proc PR*(form : X57, insn : uint32) : uint64 = insn.power_bitsliced(14 .. 14)
proc R*(form : X57, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc RB*(form : X57, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X58* = object
proc RS*(form : X58, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc SR*(form : X58, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 15)

type X59* = object
proc RS*(form : X59, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc BFA*(form : X59, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 13)

type X60* = object
proc RS*(form : X60, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X60, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)

type X61* = object
proc RS*(form : X61, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X61, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)

type X62* = object
proc RS*(form : X62, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X62, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc Rc*(form : X62, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X63* = object
proc RS*(form : X63, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X63, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FC*(form : X63, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X64* = object
proc RS*(form : X64, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X64, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc NB*(form : X64, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X65* = object
proc RS*(form : X65, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X65, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SH*(form : X65, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X65, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X66* = object
proc RS*(form : X66, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X66, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X66, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X67* = object
proc RS*(form : X67, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X67, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X67, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X68* = object
proc RS*(form : X68, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X68, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X68, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : X68, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X69* = object
proc RSp*(form : X69, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X69, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X69, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X70* = object
proc RT*(form : X70, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)

type X71* = object
proc RT*(form : X71, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RB*(form : X71, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X72* = object
proc RT*(form : X72, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RB*(form : X72, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X73* = object
proc RT*(form : X73, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc L*(form : X73, insn : uint32) : uint64 = insn.power_bitsliced(14 .. 15)

type X74* = object
proc RT*(form : X74, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc SR*(form : X74, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 15)

type X75* = object
proc RT*(form : X75, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X75, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FC*(form : X75, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X76* = object
proc RT*(form : X76, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X76, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc NB*(form : X76, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X77* = object
proc RT*(form : X77, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X77, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X77, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X78* = object
proc RT*(form : X78, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X78, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X78, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc EH*(form : X78, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X79* = object
proc RTp*(form : X79, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X79, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X79, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc EH*(form : X79, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X80* = object
proc S*(form : X80, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X80, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SX*(form : X80, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X81* = object
proc S*(form : X81, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X81, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X81, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc SX*(form : X81, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X82* = object
proc T*(form : X82, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X82, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 12)
proc IMM8*(form : X82, insn : uint32) : uint64 = insn.power_bitsliced(13 .. 20)
proc TX*(form : X82, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X83* = object
proc T*(form : X83, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X83, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc TX*(form : X83, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X84* = object
proc T*(form : X84, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X84, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X84, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc TX*(form : X84, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X85* = object
proc TH*(form : X85, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X85, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X85, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X86* = object
proc TO*(form : X86, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X86, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SI*(form : X86, insn : uint32) : int64 = insn.signed_power_bitsliced(16 .. 20)

type X87* = object
proc TO*(form : X87, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X87, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X87, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X88* = object
proc TO*(form : X88, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X88, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X88, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X89* = object
proc VRS*(form : X89, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X89, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X89, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X90* = object
proc VRT*(form : X90, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X90, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : X90, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X91* = object
proc VRT*(form : X91, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : X91, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : X91, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RO*(form : X91, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type X92* = object
proc VRT*(form : X92, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : X92, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : X92, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X93* = object
proc VRT*(form : X93, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : X93, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : X93, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type X94* = object
proc VRT*(form : X94, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc VRA*(form : X94, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc VRB*(form : X94, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RO*(form : X94, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XFL1* = object
proc L*(form : XFL1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 6)
proc FLM*(form : XFL1, insn : uint32) : uint64 = insn.power_bitsliced(7 .. 14)
proc W*(form : XFL1, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc FRB*(form : XFL1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : XFL1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XFX1* = object

type XFX2* = object
proc RS*(form : XFX2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FXM*(form : XFX2, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 19)

type XFX3* = object
proc RS*(form : XFX3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FXM*(form : XFX3, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 19)

type XFX4* = object
proc RS*(form : XFX4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc spr*(form : XFX4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 20)

type XFX5* = object
proc RT*(form : XFX5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)

type XFX6* = object
proc RT*(form : XFX6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FXM*(form : XFX6, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 19)

type XFX7* = object
proc RT*(form : XFX7, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc BHRBE*(form : XFX7, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 20)

type XFX8* = object
proc RT*(form : XFX8, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc spr*(form : XFX8, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 20)

type XFX9* = object
proc RT*(form : XFX9, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc tbr*(form : XFX9, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 20)

type XL1* = object

type XL2* = object
proc S*(form : XL2, insn : uint32) : uint64 = insn.power_bitsliced(20 .. 20)

type XL3* = object
proc BF*(form : XL3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc BFA*(form : XL3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 13)

type XL4* = object
proc BO*(form : XL4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc BI*(form : XL4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc BH*(form : XL4, insn : uint32) : uint64 = insn.power_bitsliced(19 .. 20)
proc LK*(form : XL4, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XL5* = object
proc BT*(form : XL5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc BA*(form : XL5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc BB*(form : XL5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type XO1* = object
proc RT*(form : XO1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : XO1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc OE*(form : XO1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : XO1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XO2* = object
proc RT*(form : XO2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : XO2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : XO2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)

type XO3* = object
proc RT*(form : XO3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : XO3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : XO3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : XO3, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XO4* = object
proc RT*(form : XO4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : XO4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc RB*(form : XO4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc OE*(form : XO4, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : XO4, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XS1* = object
proc RS*(form : XS1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc RA*(form : XS1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc sh1*(form : XS1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc sh2*(form : XS1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc Rc*(form : XS1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX2_1* = object
proc BF*(form : XX2_1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc B*(form : XX2_1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)

type XX2_2* = object
proc BF*(form : XX2_2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc DCMX*(form : XX2_2, insn : uint32) : uint64 = insn.power_bitsliced(9 .. 15)
proc B*(form : XX2_2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_2, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)

type XX2_3* = object
proc RT*(form : XX2_3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : XX2_3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX2_3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_3, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)

type XX2_4* = object
proc T*(form : XX2_4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc B*(form : XX2_4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_4, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX2_4, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX2_5* = object
proc T*(form : XX2_5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc UIM*(form : XX2_5, insn : uint32) : uint64 = insn.power_bitsliced(14 .. 15)
proc B*(form : XX2_5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_5, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX2_5, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX2_6* = object
proc T*(form : XX2_6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc UIM*(form : XX2_6, insn : uint32) : uint64 = insn.power_bitsliced(12 .. 15)
proc B*(form : XX2_6, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_6, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX2_6, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX2_7* = object
proc T*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc dx*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc dc*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(25 .. 25)
proc dm*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX2_7, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX2_8* = object
proc T*(form : XX2_8, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc EO*(form : XX2_8, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX2_8, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc BX*(form : XX2_8, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX2_8, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX3_1* = object
proc BF*(form : XX3_1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc A*(form : XX3_1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX3_1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc AX*(form : XX3_1, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX3_1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)

type XX3_2* = object
proc T*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc A*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc DM*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(22 .. 23)
proc AX*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX3_2, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX3_3* = object
proc T*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc A*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc SHW*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(22 .. 23)
proc AX*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX3_3, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX3_4* = object
proc T*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc A*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc Rc*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc AX*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX3_4, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX3_5* = object
proc T*(form : XX3_5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc A*(form : XX3_5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX3_5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc AX*(form : XX3_5, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX3_5, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX3_5, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type XX4_1* = object
proc T*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc A*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc B*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc C*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 25)
proc CX*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(28 .. 28)
proc AX*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(29 .. 29)
proc BX*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(30 .. 30)
proc TX*(form : XX4_1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z22_1* = object
proc BF*(form : Z22_1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRA*(form : Z22_1, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DCM*(form : Z22_1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 21)

type Z22_2* = object
proc BF*(form : Z22_2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRA*(form : Z22_2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DGM*(form : Z22_2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 21)

type Z22_3* = object
proc BF*(form : Z22_3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRAp*(form : Z22_3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DCM*(form : Z22_3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 21)

type Z22_4* = object
proc BF*(form : Z22_4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 8)
proc FRAp*(form : Z22_4, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc DGM*(form : Z22_4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 21)

type Z22_5* = object
proc FRT*(form : Z22_5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : Z22_5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SH*(form : Z22_5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 21)
proc Rc*(form : Z22_5, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z22_6* = object
proc FRTp*(form : Z22_6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRAp*(form : Z22_6, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc SH*(form : Z22_6, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 21)
proc Rc*(form : Z22_6, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_1* = object
proc FRT*(form : Z23_1, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc R*(form : Z23_1, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc FRB*(form : Z23_1, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_1, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_1, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_2* = object
proc FRT*(form : Z23_2, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRA*(form : Z23_2, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : Z23_2, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_2, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_2, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_3* = object
proc FRT*(form : Z23_3, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc TE*(form : Z23_3, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRB*(form : Z23_3, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_3, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_3, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_4* = object
proc FRTp*(form : Z23_4, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc R*(form : Z23_4, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc FRBp*(form : Z23_4, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_4, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_4, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_5* = object
proc FRTp*(form : Z23_5, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRAp*(form : Z23_5, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : Z23_5, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_5, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_5, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_6* = object
proc FRTp*(form : Z23_6, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc FRAp*(form : Z23_6, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : Z23_6, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_6, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_6, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_7* = object
proc FRTp*(form : Z23_7, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc TE*(form : Z23_7, insn : uint32) : uint64 = insn.power_bitsliced(11 .. 15)
proc FRBp*(form : Z23_7, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_7, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc Rc*(form : Z23_7, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)

type Z23_8* = object
proc VRT*(form : Z23_8, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc R*(form : Z23_8, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc VRB*(form : Z23_8, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_8, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)

type Z23_9* = object
proc VRT*(form : Z23_9, insn : uint32) : uint64 = insn.power_bitsliced(6 .. 10)
proc R*(form : Z23_9, insn : uint32) : uint64 = insn.power_bitsliced(15 .. 15)
proc VRB*(form : Z23_9, insn : uint32) : uint64 = insn.power_bitsliced(16 .. 20)
proc RMC*(form : Z23_9, insn : uint32) : uint64 = insn.power_bitsliced(21 .. 21)
proc EX*(form : Z23_9, insn : uint32) : uint64 = insn.power_bitsliced(31 .. 31)
