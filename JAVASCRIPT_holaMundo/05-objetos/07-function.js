// ESTO NO SE USA - pero puedo aparecer código así
// se puede llamar una función como argumento
// usando el constructor predefinido Function (con mayúscula)
const Point = new Function('x', 'y', `
    this.x =x;
    this.y = y;
    this.dibujar = function () { console.log('Dibujando...'); };
    `);
    const p = new Point(1, 2);
    console.log(p);
// --------------------------------------------------------

// propiedad "call" en funciones
function Punto(x, y) {
    this.x =x;
    this.y = y;
    this.dibujar = function () { console.log('Dibujando...'); };
}

let punto = { z: 7 };

// primer argumento reemplaza "this" dentro de la función
// luego defino los otros argumentos
// al reemplazar "this" con un objeto, lo que hago es agregar
// propiedades a ese objeto
// en este caso, agrego al objeto = punto{} las propiedades de x, y
// definidas según la función 'Punto'
Punto.call(punto, 1, 2);
console.log(punto);

// propiedad similar peor los argumentos se definen como un Array
Punto.apply(punto, [5, 9]);
console.log(punto);