pragma circom 2.0.0;

//This circuit template subtracts the product of s1 and s2 by 1 

template NAND () {  

   // Declaration of signals.  
   signal input s1;   
   signal input s2;  
   signal output s3;  

   // Assigns value to s3 and adds constraints  
   s3 <== 1 - s1 * s2;  
}

// Instantiate template
component main = NAND();

// --r1cs generates circuit.r1cs file which contains the R1CS constraint system of the circuit in binary format
// --wasm generates circuit_js folder which contains wasm code and other files needed to generate the witness
// --sym generates circuit.sym file which is a symbols file required for debugging or printing the constraint system in an annotated mode
// --c generates circuit_cpp folder which contains several files needed to compile the C code to generate the witness
