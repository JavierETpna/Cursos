/**
 * Crear algoritmo que devuelva número
 * menor y mayor de un array
 */

let array = [2, 5, 7, 15, -5, -100, 55];

function getMenorMayor(arr) {
    let mayor = arr[0];
    let menor = arr[0];
    for (numero of arr) {
        menor = menor < numero ? menor : numero; // defino menor con = y pregunto: es menor < numero que está iterando ? si es así menor resulta = menor, si no menor = numero.
        mayor = mayor > numero ? mayor : numero;
    }
    return [menor, mayor]
}

let numeros = getMenorMayor(array);
console.log(numeros);