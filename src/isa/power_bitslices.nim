from bitops import bitsliced, testBit, setMasked

proc power_bitsliced*(value: uint32; slice: Slice[int]): uint64 = 
  value.bitsliced((31 - slice.b)..(31 - slice.a)).uint64

proc signed_power_bitsliced*(value: uint32; slice: Slice[int]): int64 = 
  var sign_extended = value.bitsliced((31 - slice.b)..(31 - slice.a)).uint64

  if value.testBit(31 - slice.a):
    var offset = (31 - slice.a) - (31 - slice.b)
    sign_extended = sign_extended.uint64.setMasked(offset..63)
  
  return cast[int64](sign_extended)

proc power_bitsliced*(value: uint64; slice: Slice[int]): uint64 = 
  value.bitsliced((63 - slice.b)..(63 - slice.a)).uint64

proc signed_power_bitsliced*(value: uint64; slice: Slice[int]): int64 = 
  var sign_extended = value.bitsliced((63 - slice.b)..(63 - slice.a)).uint64

  if value.testBit(63 - slice.a):
    var offset = (63 - slice.a) - (63 - slice.b)
    sign_extended = sign_extended.uint64.setMasked(offset..63)
  
  return cast[int64](sign_extended)
  
