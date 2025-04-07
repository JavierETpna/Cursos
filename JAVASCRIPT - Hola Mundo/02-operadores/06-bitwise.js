console.log("---------------------");

//bit = 0 o 1
//byte = 8 bits
//byte = 0000 0000 -> 0
//byte = 0000 0001 -> 1
//byte = 0000 0010 -> 2
//byte = 0000 0011 -> 3
//byte = 0000 0100 -> 4
//byte = 0000 0101 -> 5
//byte = 0000 0110 -> 6
//byte = 0000 0111 -> 7
//byte = 0000 1000 -> 8
//byte = 0000 1001 -> 9
//byte = 0000 1010 -> 10
//Decimal: 0,1,2,3,4,5,6,7,8,9
//Binario:0,1

console.log("- - operador bitwise con OR - -");
console.log(1 | 3); // 0000 0011 = 3
console.log(3 | 7); // 0000 0111 = 7
console.log(8 | 2); // 0000 1010 = 10
console.log(3 | 5); // 0000 0111 = 7

console.log("- - operador bitwise con AND - -");
console.log(1 & 3); // 0000 0001 = 1
console.log(3 & 7); // 0000 0011 = 3
console.log(8 & 2); // 0000 0000 = 0
console.log(3 & 5); // 0000 0001 = 1