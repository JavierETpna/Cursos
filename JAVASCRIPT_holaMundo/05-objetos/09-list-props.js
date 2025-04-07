const punto = {
    x: 10,
    y: 15,
    z: 10000,
    dibujar() { // puedo crear un método sin escribir 'function' esto es lo mismo que "dibujar: function()"
        console.log('dibujando...');
    }
};

if ('z' in punto) {
    console.log(punto.z);
} else console.log('No existe "z"');

delete punto.z;

if ('z' in punto) {
    console.log(punto.z);
} else console.log('No existe "z"');



// para acceder a las propiedades de un objeto
// y saber de antemano si existe o no "z"

console.log('-----(01)-----')
// (01) devuelve sólo propiedades sin sus valores
console.log(Object.keys(punto));

console.log('-----(02)-----')
// (02) devuelve nombres, valores y comentarios
for (let llave of Object.keys(punto)) {
    console.log(llave, punto[llave]);
}

console.log('-----(03)-----')
// (03) devuelve nombres y valores como arrays
for (let entry of Object.entries(punto)) {
    console.log(entry);
}

console.log('-----(04)-----')
// (04) la opción más reciente, igual a (02)
for (let llave in punto) {
    console.log(llave, punto[llave]);
}