@261
D=A
@LCL
M=D
@call$Sys.init
0;JMP// Function
(call$Sys.init) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Test 4/StaticsTest//Sys.vm$0) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$Test 4/StaticsTest//Sys.vm$1
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Test 4/StaticsTest//Sys.vm$0
0;JMP
(auto$Test 4/StaticsTest//Sys.vm$1)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
//push
@6
D=A
@SP
M=M+1
A=M-1
M=D
//push
@8
D=A
@SP
M=M+1
A=M-1
M=D
// Call
@auto$Test 4/StaticsTest//Sys.vm$2 // Push call frame to stack
D=A
@SP
A=M
M=D
@LCL
D=M
@SP
A=M+1
M=D
@ARG
D=M
@SP
A=M+1
A=A+1
M=D
@THIS
D=M
@SP
A=M+1
A=A+1
A=A+1
M=D
@THAT
D=M
@SP
A=M+1
A=A+1
A=A+1
A=A+1
M=D 
D=A+1 // Update LCL
@LCL
M=D
@SP // Update ARG
D=M
@2
D=D-A
@ARG
M=D
@call$Class1.set // Jump to function
0;JMP
(auto$Test 4/StaticsTest//Sys.vm$2) // Return label
//pop
@R5
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
//push
@23
D=A
@SP
M=M+1
A=M-1
M=D
//push
@15
D=A
@SP
M=M+1
A=M-1
M=D
// Call
@auto$Test 4/StaticsTest//Sys.vm$3 // Push call frame to stack
D=A
@SP
A=M
M=D
@LCL
D=M
@SP
A=M+1
M=D
@ARG
D=M
@SP
A=M+1
A=A+1
M=D
@THIS
D=M
@SP
A=M+1
A=A+1
A=A+1
M=D
@THAT
D=M
@SP
A=M+1
A=A+1
A=A+1
A=A+1
M=D 
D=A+1 // Update LCL
@LCL
M=D
@SP // Update ARG
D=M
@2
D=D-A
@ARG
M=D
@call$Class2.set // Jump to function
0;JMP
(auto$Test 4/StaticsTest//Sys.vm$3) // Return label
//pop
@R5
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// Call
@auto$Test 4/StaticsTest//Sys.vm$4 // Push call frame to stack
D=A
@SP
A=M
M=D
@LCL
D=M
@SP
A=M+1
M=D
@ARG
D=M
@SP
A=M+1
A=A+1
M=D
@THIS
D=M
@SP
A=M+1
A=A+1
A=A+1
M=D
@THAT
D=M
@SP
A=M+1
A=A+1
A=A+1
A=A+1
M=D 
D=A+1 // Update LCL
@LCL
M=D
@SP // Update ARG
D=M
@0
D=D-A
@ARG
M=D
@call$Class1.get // Jump to function
0;JMP
(auto$Test 4/StaticsTest//Sys.vm$4) // Return label
// Call
@auto$Test 4/StaticsTest//Sys.vm$5 // Push call frame to stack
D=A
@SP
A=M
M=D
@LCL
D=M
@SP
A=M+1
M=D
@ARG
D=M
@SP
A=M+1
A=A+1
M=D
@THIS
D=M
@SP
A=M+1
A=A+1
A=A+1
M=D
@THAT
D=M
@SP
A=M+1
A=A+1
A=A+1
A=A+1
M=D 
D=A+1 // Update LCL
@LCL
M=D
@SP // Update ARG
D=M
@0
D=D-A
@ARG
M=D
@call$Class2.get // Jump to function
0;JMP
(auto$Test 4/StaticsTest//Sys.vm$5) // Return label
// Label
(manual$Test 4/StaticsTest//Sys.vm$WHILE)
// Goto
@manual$Test 4/StaticsTest//Sys.vm$WHILE
0;JMP
// Function
(call$Class1.set) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Test 4/StaticsTest//Class1.vm$6) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$Test 4/StaticsTest//Class1.vm$7
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Test 4/StaticsTest//Class1.vm$6
0;JMP
(auto$Test 4/StaticsTest//Class1.vm$7)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//pop
@Test 4/StaticsTest//Class1.vm.0
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//pop
@Test 4/StaticsTest//Class1.vm.1
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
//push
@0
D=A
@SP
M=M+1
A=M-1
M=D
// Return
@5 // Store return address in R13
D=A
@LCL 
A=M-D
D=M
@R13
M=D
@SP // Copy return value to argument 0, NB this may overwrite
A=M-1 // return address if argument has length 0
D=M
@ARG
A=M
M=D
D=A+1 // Update SP
@SP
M=D
@LCL // Restore THAT
A=M-1
D=M
@THAT
M=D
@LCL // Restore THIS
A=M-1
A=A-1
D=M
@THIS
M=D
@3 // Restore ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Restore LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@R13 // Jump to return address
A=M
0;JMP
// Function
(call$Class1.get) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Test 4/StaticsTest//Class1.vm$8) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$Test 4/StaticsTest//Class1.vm$9
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Test 4/StaticsTest//Class1.vm$8
0;JMP
(auto$Test 4/StaticsTest//Class1.vm$9)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
@Test 4/StaticsTest//Class1.vm.0
D=M
@SP
M=M+1
A=M-1
M=D
@Test 4/StaticsTest//Class1.vm.1
D=M
@SP
M=M+1
A=M-1
M=D
// sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Return
@5 // Store return address in R13
D=A
@LCL 
A=M-D
D=M
@R13
M=D
@SP // Copy return value to argument 0, NB this may overwrite
A=M-1 // return address if argument has length 0
D=M
@ARG
A=M
M=D
D=A+1 // Update SP
@SP
M=D
@LCL // Restore THAT
A=M-1
D=M
@THAT
M=D
@LCL // Restore THIS
A=M-1
A=A-1
D=M
@THIS
M=D
@3 // Restore ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Restore LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@R13 // Jump to return address
A=M
0;JMP
// Function
(call$Class2.set) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Test 4/StaticsTest//Class2.vm$10) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$Test 4/StaticsTest//Class2.vm$11
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Test 4/StaticsTest//Class2.vm$10
0;JMP
(auto$Test 4/StaticsTest//Class2.vm$11)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//pop
@Test 4/StaticsTest//Class2.vm.0
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
//pop
@Test 4/StaticsTest//Class2.vm.1
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
//push
@0
D=A
@SP
M=M+1
A=M-1
M=D
// Return
@5 // Store return address in R13
D=A
@LCL 
A=M-D
D=M
@R13
M=D
@SP // Copy return value to argument 0, NB this may overwrite
A=M-1 // return address if argument has length 0
D=M
@ARG
A=M
M=D
D=A+1 // Update SP
@SP
M=D
@LCL // Restore THAT
A=M-1
D=M
@THAT
M=D
@LCL // Restore THIS
A=M-1
A=A-1
D=M
@THIS
M=D
@3 // Restore ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Restore LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@R13 // Jump to return address
A=M
0;JMP
// Function
(call$Class2.get) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Test 4/StaticsTest//Class2.vm$12) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$Test 4/StaticsTest//Class2.vm$13
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Test 4/StaticsTest//Class2.vm$12
0;JMP
(auto$Test 4/StaticsTest//Class2.vm$13)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
@Test 4/StaticsTest//Class2.vm.0
D=M
@SP
M=M+1
A=M-1
M=D
@Test 4/StaticsTest//Class2.vm.1
D=M
@SP
M=M+1
A=M-1
M=D
// sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Return
@5 // Store return address in R13
D=A
@LCL 
A=M-D
D=M
@R13
M=D
@SP // Copy return value to argument 0, NB this may overwrite
A=M-1 // return address if argument has length 0
D=M
@ARG
A=M
M=D
D=A+1 // Update SP
@SP
M=D
@LCL // Restore THAT
A=M-1
D=M
@THAT
M=D
@LCL // Restore THIS
A=M-1
A=A-1
D=M
@THIS
M=D
@3 // Restore ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Restore LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@R13 // Jump to return address
A=M
0;JMP
