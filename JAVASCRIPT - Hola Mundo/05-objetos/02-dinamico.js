console.log('<<<<<<<<<< 02-dinamico >>>>>>>>>>')

// const = constante, no se puede cambiar
// su carácterística principal (no puede dejar de ser un objeto)
// o si es un valor, no se puede cambiar el valor
const nombre = 'Javier';
// nombre = 'Nicolás'; --> No puedo hacer esto

const user = { id: 1 };

// si puedo hacer esto:
user.name = 'Javier';
user.guardar = function () {
    console.log('Guardando', user.name);
};
user.id = 5;


user.guardar();

console.log('Antes de delete', user);
delete user.name;
delete user.guardar;
console.log('Post delete', user);

// freeze = no se peude agregar o cambiar
// las propiedades del objeto
const user1 = Object.freeze({ id: 1 });
console.log(user1);
delete user1.id; // no devuelve error, pero no cambia el objeto
user1.id = 5; // no devuelve error, pero no cambia el objeto
user1.name = 'Javier;' // no devuelve error, pero no cambia el objeto
console.log(user1);

// seal = no se puede agregar o quitar propiedades,
// pero si se puede modificar las propiedades
const user2 = Object.seal({ id: 1 });
console.log(user2);
delete user2.id;  // no devuelve error, pero no cambia el objeto
user2.id = 5; // cambia el id del usuario
user2.name = 'Javier;'  // no devuelve error, pero no cambia el objeto
console.log(user2);
