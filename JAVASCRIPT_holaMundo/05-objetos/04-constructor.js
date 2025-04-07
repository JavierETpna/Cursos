console.log('<<<<<<<<<< 04-constructor >>>>>>>>>>')

// funciones constructoras se usa UpperCamelCase o PasalCase (primera letra con mayúscula)
// se usa "this" para crear sus propiedades
function Usuario() {
    this.id = 1;
    this.recuperarClave = function () { // esta función asignada como una propiedad ya no se llama función, es un método!
        console.log('Recuperando clave...');
    };
};
/**
 * Para crear un usuario usamos "new"
 * esto crea un objeto vacío
 * le asigana el prototipo al objeto
 * asigna el objeto a "this"
 * si la función no devulve nada, retorna "this"
 */
let user = new Usuario();

console.log(user);