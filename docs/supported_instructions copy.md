# Adding a New Instruction
The codebase doesn't yet have infrastructural support for virtual memory,
(hopefully to be added in early July).

That being said, the way to add an instruction is to first determine the name
of the mnemonic you wish to support. All the POWER mnemnonics can be found in
``isa/mnemonic_enums.nim``. For example, if you wanted to implement the ``addis``
instruction, you would find the name for the mnemonic in ``isa/mnemonic_enums.nim``,
which in this case happens to ``addis``, and then you would create a file
``instructions/addis.nim`` that contains a function with the signature,
``proc addis*(instruction : uint32) = ``

Within that function, you would do your implementation of ``addis``. You can access
all registers and memory arbitrarily within that function, which should be enough to
implement most instructions at the moment.

Next you would need to register your instruction. You can do this by adding ``include 
addis ``to ``instructions/instructions.nim``.

Lastly, to make sure that your mnemonic actually gets executed when the simulator
encounters it, you need to add it to the large case statement in ``executeOP`` in
``cpu/execute.nim``.
