function Usuario(nombre) {
    this.nombre = nombre;
};

// funciones son objetos de primera clase
// es decir que tienen propiedades, como los objetos:
console.log(Usuario.name);
console.log(Usuario.length);

// de igual forma puedo definir una función como valor de una constante:
const U = Usuario; // es decir U = objeto Usuario = función Usuario

// ejecuto U, que es la fn constructora Usuario
// por eso utilizo "new" para crear un Usuario usando "U = Usuario"
let user = new U('Javier');

console.log(user);

// puedo pasar una función como argumento
function OF(Fn, arg) {
    return new Fn(arg);
};
// paso la fn Usuario como argumento y uso la fn OF
// para crear un usuario con Usuario para 'Javier'
let user1 = OF(Usuario, 'Javier');
console.log(user1);

// también podemos retornalas dentro de otras funciones

function returned() {
    return function() {
        console.log('Hola mundo');
    }
}

let saludo = returned();
saludo();