/**
 * Crear algoritmo que devuelva cantidad de
 * números posotivos de un array
 */

let array = [2, 5, 7, 15, -5, -100, 55];

function cuantosPositivos(arr) {
    let cant = 0;
    for(num of arr) {
        if(num > 0) {
            cant++;
        }
    }
    return cant;
}

let resultado = cuantosPositivos(array);
console.log(resultado);