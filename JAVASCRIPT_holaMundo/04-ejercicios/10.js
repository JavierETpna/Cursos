/**
 * Crear un array d elongitud N, y que sus elementos sean
 * números de 1 hasta N
 */

let longitud = 5;

function makeArray(n) {
    let array = [];
    if (n <= 0) {
        return array
    } else
    i = 0;
    do{
        array[i] = i + 1;
        i++;
    } while (i < n);
    return array;
}

function crearArray(n) {
    if(n <= 0) {
        return [];
    }
    let arr = [];
    for (let i = 0; i < n; i++) {
        arr[i] = i + 1;
    }
    return arr;
}

let result = makeArray(longitud);
console.log(result);
let resultado = crearArray(longitud);
console.log(resultado);