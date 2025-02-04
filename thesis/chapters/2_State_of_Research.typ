= State of Research <sec:state_of_research>

// _In relation to your own objectives and issues, the aim is to show how others have solved this or similar problems. What can you build on, what do you need to tackle anew? How does your solution differ from other solutions? For scientifically orientated work, please refer explicitly to @balzert2008wissenschaftliches. _

// There are some known techniques for creating ARM shellcode encoders from various sources, but not as many as for other, more common architectures such as
// x86/x64. And on top of that some of the known ARM encoders are not applicable on the chosen architecture AArch64. 
// One example for this are encoders for ARM thumb mode @arm_shellcode_great_again_pdf. \
// ARM thumb mode is an alternative 16-bit instruction set, which will get decompressed at runtime into 32-bit instructions before execution. The advantage of this is,
// that the resulting shell code, is only around 65% the length of the equivalent 32-bit shellcode. Some drawbacks on the other hand are, that you have a limited number of 
// accessible registers (r0-r7) and no conditional execution. Thumb mode and the 32-bit instruction set can be however mixed freely together in the same application 
// @ARM_technical_manual_thumb.

// *NEW* 

