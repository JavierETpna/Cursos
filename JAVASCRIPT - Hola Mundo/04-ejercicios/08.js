/**
 * Crear algoritmo que tome un array de
 * objetos y devuelva un array de pares
 */

let array = [{
    id: 1,
    name: 'Nicolás',
}, {
    id: 2,
    name: 'Felipe',
}, {
    id: 3,
    name: 'Chanchito',
}];

let pairsEjemplo = [
    [1, {id: 1, name: "Nicolás"}],
    [2, {id: 2, name: "Felipe"}],
    [3, {id: 3, name: "Chanchito"}],
]

// RESOLUCIÓN DE VIDEO
// ------------------
function toPairs(arr) {
    let pairs = [];
    for(idx in arr) {
        let elemento = arr[idx];
        pairs[idx] = [elemento.id, elemento];
    }
    return pairs;
}

// MI RESOLUCIÓN - corregida
// -------------
function toPares(arr) {
    let pares = [];
    for(idx in arr) {
        pares[idx] = [arr[idx].id, arr[idx]];
    }
        return pares;
}


let result = toPairs(array);
console.log(result);
let resultado = toPares(array);
console.log(resultado);