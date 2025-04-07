console.log("---------------------")

animales = ['Chancho', 'Vaca', 'Pollo', 'Gato']; // esto es un array

for (let animal of animales) {
    console.log(animal);
}

i = 0;
while (i < animales.length && i < 2) {
    console.log(animales[i]);
    i++;
}