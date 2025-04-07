console.log("---------------------")

let user = {                // esto es un objeto
    id: 1,
    name: 'Chancho feliz',
    age: 25,
};

for (let prop in user) {
    console.log(prop, user[prop]);
}

// for in NO SE USA PARA ACCEDERA ELEMENTOS DE UN ARRAY, SE USA for of
// sin embargo se puede hacer
for(let indice in animales) {
    console.log(indice, animales[indice]);
}