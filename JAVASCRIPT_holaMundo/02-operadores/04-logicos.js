console.log("---------------------");

// AND, OR, NOT

console.log("- - AND - -");// &&
let mayor = true;
let suscripto = true;

console.log(suscripto && mayor); // AND = true

mayor = false;
console.log(suscripto && mayor); // AND = false

console.log("- - OR - -");// || dos barras paralelas

console.log(suscripto || mayor); // OR = true

suscripto = false;
console.log(suscripto || mayor); // OR = false

console.log("- - NOT - -");// ! signo de exclamación antes de la variable. invierte los valores true/false

console.log(!mayor); // NOT = true

mayor = true
let soloCatalogoInfantil = !mayor
console.log(soloCatalogoInfantil); // NOT = false