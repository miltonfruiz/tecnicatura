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

//Array | Métodos (funciones)

//Array |Métodos |Push y Pop
var frutas = ["Banana", "Naranja"];
console.log(frutas);
frutas.push("Kiwi", "Pera");
console.log(frutas);

var frutas = ["Banana", "Naranja"];
console.log(frutas);
console.log(frutas.pop());
console.log(frutas);

//Array | Métodos |Unshift y Shift
var colores = ["Rojo", "Celeste"];
console.log(colores);
colores.unshift("Azul", "Naranja");
console.log(colores);

var colores = ["Rojo", "Celeste"];
console.log(colores);
console.log(colores.shift());
console.log(colores);

//Ejemplo: Array | Métodos | Concat
var colores = ["Rojo", "Celeste"];
console.log(colores);
var masColores = ["Verde", "Negro"];
console.log(masColores);
//Los elementos de masColores se concatenan
//al final de los elementos de colores:
var todos = colores.concat(masColores);
console.log(todos);

//Ejemplo: Array | Métodos | IndexOf y LastIndexOf
var letras = ["A", "B", "C", "D", "E", "B", "C"];
//Buscamos de izquierda a derecha
var posB1 = letras.indexOf("B");
console.log("La primera 'B' tiene indice", posB1);
var posB2 = letras.indexOf("B", 2);
console.log("La segunda 'B' tiene indice", posB2);
//Buscamos de derecha a izquierda
var posA = letras.lastIndexOf("A");
console.log("La última 'A' tiene indice", posA);
var posB = letras.lastIndexOf("B");
console.log("La última 'B' tiene indice", posB);

//Ejemplo: Array | Otros métodos

//Ejemplo: Array | Métodos | Splice y Slice
const arreglo = ["a", "b", "c", "d", "e", "f"];
let trozo1 = arreglo.slice(1, 3); // ['b','c']
let trozo2 = arreglo.slice(5); // ['f']
console.log(trozo1);
console.log(trozo2);

const arreglosplice = ["a", "b", "c", "d"];
// Insertamos un elemento en la pos. 2:
arreglosplice.splice(2, 0, "n");
console.log(arreglo); //['a','b','n','c','d']
// Reemplazamos un elemento en la pos. 1:
arreglosplice.splice(1, 1, "t");
console.log(arreglosplice); //['a','t','n','c','d' ]

//Ejemplo: Array | Métodos | Sort y Reverse
// Arreglo de cadenas: Orden alfabético
const arregloSort = ["c", "d", "a", "b", "e"];
arregloSort.sort();
console.log(arregloSort); //['a','b','c','d','e']
const a = ["3", "10", "1", "31", "5"];
a.sort();
console.log(a); //['1','10','3','31','5']

// Arreglo de números: Orden "alfabético"
const arregloSort2 = [4, 45, 5, 59, 1, 2];
arregloSort2.sort();
console.log(arregloSort2); //[1,2,4,45,5,59]
// Arreglos mixtos: cuidado
const cuidado = ["a", 2, "b", 1, true];
cuidado.sort();
console.log(cuidado); //[1,2,'a','b',true]
