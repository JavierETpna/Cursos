/**
 * Crear algoritmo que devuelva
 * una array de objetos en base a pares
 */

let pairs = [
    [1, {name: "Nicolás"}],
    [2, {name: "Felipe"}],
    [3, {name: "Chanchito"}],
];

let arrayEjemplo = [{
    id: 1,
    name: 'Nicolás'
}, {
    id: 2,
    name: 'Felipe'
}, {
    id: 3,
    name: 'Chanchito'
}];

function toCollection(arr) {
    let collection = [];
    for(idx in arr) {
        let elemento = arr[idx];
        collection[idx] = elemento[1];
        collection[idx].id = elemento[0];
    }
    return collection;
}



// function toCollection(arr) {
//     let array = [];
//     for(idx in arr) {
//         array[idx] = [{id: idx}, {name: arr['name']}];
//     };
//     return array;
// }

let resultado = toCollection(pairs);
console.log(resultado);