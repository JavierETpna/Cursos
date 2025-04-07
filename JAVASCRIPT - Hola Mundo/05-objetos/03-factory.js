console.log('<<<<<<<<<< 03-factory >>>>>>>>>>')

let user1 = {
    id: 1,
    email: 'javier.emilio@email.com',
    name: 'Javier',
    activo: true,
    recuperarClave: function () {
        console.log('recuperando clave...');
    },
};

let user2 = {
    id: 2,
    email: 'javier.trevi@email.com',
    name: 'Emilio',
    activo: false,
    recuperarClave: function () {
        console.log('recuperando clave...');
    },
};

// usamos una factory function para código repetitivo
// por convención usan camelCase

function crearUsuario (id, name, email, activo) {
    return {
        id: id,
        email: email,
        name, // como el nombre es igual a su propiedad (parámetro de la función), es lo mismo que hacer name: name o email: email
        activo,
        recuperarClave: function () {
            console.log('recuperando clave...');
        },
    };
};

let user3 = crearUsuario(3, 'Chancho3', 'Chancho@email.com', true);
let user4 = crearUsuario(4, 'Chancho4', 'Chancho@email.com', false);
let user5 = crearUsuario(5, 'Chancho5', 'Chancho@email.com', false);
console.log(user2, user3, user4, user5);