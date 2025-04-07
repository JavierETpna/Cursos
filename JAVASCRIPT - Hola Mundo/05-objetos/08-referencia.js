//
let a = 1;
let b = a;

b++;
console.log(a, b);
// aumento solamente b


//
c = {};
d = c;

d.prop = 1;
console.log(c, d);
// agrega 1 a variables c y d (porque están en la misma dirección)


//
let x = 1;
function incrementa1(n) {
    n++;
}

incrementa1(x);
console.log(x);
// x & n son variables diferentes, almacenados en lugares diferentes
// lo que aumenta es n pero no cambia x


//
let z = {prop: 1};
function suma(n) {
    n.prop++;
}

suma(z);
console.log(z);
// cambio la propiedad que está en otra dirección
// por lo tanto cambia la propiedad asignada a z


/**
 * Datos Primitivos se copian en RAM
 * Referencias se 'referencian':
 * - Objetos
 * - Arrays
 * - Funciones
 */