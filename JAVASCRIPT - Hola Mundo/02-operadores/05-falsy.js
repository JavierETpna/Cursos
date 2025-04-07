console.log("---------------------");

// Falsy = operadores que evaluan en falso

// false
// 0 cero
// '' strings vacíos
// null
// undefined
// NaN

let nombreUsuario = '';

let usuario = nombreUsuario || 'Anonimo';
console.log(usuario);

nombreUsuario = 'Javier';
usuario = nombreUsuario || 'Anonimo';
console.log(usuario);


function fn1() {
    console.log('soy funcion 1');
    return true;
}
function fn2() {
    console.log('soy funcion 2');
    return false;
}

let x = fn1() && fn2() && fn1();
