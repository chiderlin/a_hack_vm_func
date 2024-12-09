// Function
(call$SimpleFunction.test) // Function label
@R13 // Initialise local segment via loop
M=0  // (NB this is horribly slow, especially for small local segments!)
(auto$SimpleFunction.vm$0) // Here R13 stores the i for which we're initialising local i
@R13
D=M
@2
D=D-A
@auto$SimpleFunction.vm$1
D;JEQ
@R13
D=M
M=M+1
@LCL
A=M+D
M=0
@auto$SimpleFunction.vm$0
0;JMP
(auto$SimpleFunction.vm$1)
@2 // Set SP
D=A
@LCL
D=M+D
@SP
M=D
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D
@1
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
// not
@SP
A=M-1
D=!M
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
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
@1
D=A
@ARG
A=M+D
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
(HaltInfiniteLoop)
@HaltInfiniteLoop
0;JMP