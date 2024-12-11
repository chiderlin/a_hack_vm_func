// Function
(call$Sys.init) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Sys.vm$0) // loop_start_label // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0 // local_vars->value.int
D=D-A
@auto$Sys.vm$1 // loop_end_label
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Sys.vm$0 // loop_start_label
0;JMP
(auto$Sys.vm$1) //loop_end_label
@0 // Set SP  // local_vars->value.int
D=A
@LCL
D=M+D
@SP
M=D

//push
@4000
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@THIS
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
@5000
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@THAT
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
@auto$Sys.vm$2 // Push call frame to stack
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
@call$Sys.main // Jump to function
0;JMP
(auto$Sys.vm$2) // Return label

//pop
@R6
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
// Label
(manual$Sys.vm$LOOP)
// Goto
@manual$Sys.vm$LOOP
0;JMP

// Function
(call$Sys.main) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Sys.vm$3) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@5
D=D-A
@auto$Sys.vm$4
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Sys.vm$3
0;JMP
(auto$Sys.vm$4)
@5 // Set SP
D=A
@LCL
D=M+D
@SP
M=D

//push
@4001
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@THIS
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
@5001
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@THAT
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
@200
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@1
D=A
@LCL
A=M+D
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
@40
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@2
D=A
@LCL
A=M+D
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
@6
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@3
D=A
@LCL
A=M+D
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
@123
D=A
@SP
M=M+1
A=M-1
M=D

// Call
@auto$Sys.vm$5 // Push call frame to stack
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
@1
D=D-A
@ARG
M=D
@call$Sys.add12 // Jump to function
0;JMP
(auto$Sys.vm$5) // Return label

//pop //pop temp 0
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
// push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
// push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
// push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
// push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
// push local 4
@4
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D

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
(call$Sys.add12) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$Sys.vm$6) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$Sys.vm$7
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$Sys.vm$6
0;JMP
(auto$Sys.vm$7)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D

//push
@4002
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@THIS
D=A
@R13
M=D
@SP
M=M-1tion Sys.

//push
@5002
D=A
@SP
M=M+1
A=M-1
M=D

//pop
@THAT
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
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

//push
@12
D=A
@SP
M=M+1
A=M-1
M=D
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D

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
(HaltInfiniteLoop)
@HaltInfiniteLoop
0;JMP