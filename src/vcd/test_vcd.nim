import vcd

var a          = register_new_scope(name="a")
var sub_a_1    = register_new_scope(name="sub_a_1", parent=a)
var signal_a_1 = register_new_signal(name="sig1", num_bits=3, init=1, parent=sub_a_1)

# var sub_a_2 = register_new_scope(name="sub_a_2", parent=a)
# var sub_a_3 = register_new_scope(name="sub_a_3", parent=a)

# var b = register_new_scope(name="b")
# var sub_b_1 = register_new_scope(name="sub_b_1", parent=b)
# var sub_b_2 = register_new_scope(name="sub_b_2", parent=b)
# var sub_b_3 = register_new_scope(name="sub_b_3", parent=b)

freeze()
writeFile("toy.vcd", vcd_file)