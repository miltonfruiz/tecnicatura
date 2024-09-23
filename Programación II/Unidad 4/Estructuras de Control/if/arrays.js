//Ejemplos (crear,acceder y mostrar elementos)
const vector = [1, 3, 5, 8]; //0, 1, 2, 3: cantidad de elementos - 1
const vectorVacio = []; //Vector vacío
const vectorDos = new Array("a", "b", "c");
const vectorTres = new Array(1, 5, 10, 15, 20);

console.log(vector);
console.log("Vector vacio:", vectorVacio);
console.log(vectorDos);
console.log(vectorDos[1]);
console.log(vectorTres[2]);
console.log(vectorTres[6]);

//Ejemplo: Array | Bucle For
const vectorDoss = new Array("a", "b", "c");
console.log("Elementos del vector 2:");
for (i = 0; i < vectorDoss.length; i++) {
  console.log(vectorDoss[i]);
}
