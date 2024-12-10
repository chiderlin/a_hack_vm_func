@261
D=A
@LCL
M=D
@call$Sys.init
0;JMP// Function
(call$Main.fibonacci) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$FibonacciElement/Main.vm$0) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$FibonacciElement/Main.vm$1
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$FibonacciElement/Main.vm$0
0;JMP
(auto$FibonacciElement/Main.vm$1)
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
//push
@2
D=A
@SP
M=M+1
A=M-1
M=D
// lt
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=D-M
@auto$FibonacciElement/Main.vm$2
D;JGT
@SP
A=M-1
M=0
@auto$FibonacciElement/Main.vm$3
0;JMP
(auto$FibonacciElement/Main.vm$2)
@SP
A=M-1
M=-1
(auto$FibonacciElement/Main.vm$3)
// If-goto
@SP
M=M-1
A=M
D=M
@manual$FibonacciElement/Main.vm$IF_TRUE
D;JNE
// Goto
@manual$FibonacciElement/Main.vm$IF_FALSE
0;JMP
// Label
(manual$FibonacciElement/Main.vm$IF_TRUE)
@0
D=A
@ARG
A=M+D
D=M
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
// Label
(manual$FibonacciElement/Main.vm$IF_FALSE)
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
@2
D=A
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
// Call
@auto$FibonacciElement/Main.vm$4 // Push call frame to stack
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
@call$Main.fibonacci // Jump to function
0;JMP
(auto$FibonacciElement/Main.vm$4) // Return label
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
@1
D=A
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
// Call
@auto$FibonacciElement/Main.vm$5 // Push call frame to stack
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
@call$Main.fibonacci // Jump to function
0;JMP
(auto$FibonacciElement/Main.vm$5) // Return label
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
(call$Sys.init) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$FibonacciElement/Sys.vm$6) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@0
D=D-A
@auto$FibonacciElement/Sys.vm$7
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$FibonacciElement/Sys.vm$6
0;JMP
(auto$FibonacciElement/Sys.vm$7)
@0 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
//push
@4
D=A
@SP
M=M+1
A=M-1
M=D
// Call
@auto$FibonacciElement/Sys.vm$8 // Push call frame to stack
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
@call$Main.fibonacci // Jump to function
0;JMP
(auto$FibonacciElement/Sys.vm$8) // Return label
// Label
(manual$FibonacciElement/Sys.vm$WHILE)
// Goto
@manual$FibonacciElement/Sys.vm$WHILE
0;JMP
