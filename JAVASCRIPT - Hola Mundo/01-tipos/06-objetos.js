console.log("---------------------");

// personaje de TV
let nombre06 = "Homero";
let anime = "Los Simpsons";
let edad = 48;

let personaje = {
    nombre06: "Homero",
    anime: "Los Simpsons",
    edad: 48,
};

console.log(personaje);
console.log(personaje.nombre06);
console.log(personaje['anime']);

personaje.edad = 52;
personaje['edad'] = 52;
console.log(personaje.edad);

delete personaje.anime;

console.log(personaje);