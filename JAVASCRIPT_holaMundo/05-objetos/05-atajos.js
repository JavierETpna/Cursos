/**
 * al crear un objeto, la sintaxis "let OBJ = {}" es un atajo
 * lo que hacemos es usar una función constructora predefinida
 * que se llama Object()
 */

let obj1 = {};
let obj2 = new Object();

/**
 * de igual forma hay otros constructores predefinidos
 * new Array(); --> let xxx = []
 * new String(); --> let xxx = "" o let xxx = ''
 * new Number(); --> let xxx = 00 (un número)
 * new Boolean(); --> let xxx = true o false
 *  */

function Usuario() {
    this.name = "Chanchito feliz";
}

let user = new Usuario();
console.log(user.constructor);

/**
 * es importante cómo se define el valor de la variable
 * sea como un valor LITERAL (haciendo let xLITx = 00)
 * o usando la función constructora let xFCONx = new Number(00)
 * por la forma en que JS maneja las variables y
 * llama a los métodos que hay dentro de las funciones constructoras
 * El valor de xLITx es un Number
 * El valor de xFCONx es un Objeto
 */