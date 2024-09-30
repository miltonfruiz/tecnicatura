// Array | Métodos con funciones
//.forEach()
var personas = ["Juan", "Ana", "Carlos", "Sofia"];
personas.forEach((parametro) => {
  console.log(parametro);
});
var saludos = {
  mensaje: "Hola",
  saludar: function (parametro) {
    console.log(`${this.mensaje}, ${parametro} !`);
  },
};
personas.forEach(function (parametro) {
  this.saludar(parametro);
}, saludos);

//.every()
var everyArray = [12, 45, 78, 34, 56];
var mayorDiez = everyArray.every((parametro) => parametro > 10);
console.log(mayorDiez);

//.some()
var someArray = [11, 23, 35, 40, 51];
var par = someArray.some((parametro) => parametro % 2 == 0);
console.log(par);

//.map()
var arrayMap = [2, 4, 6, 8];
var doble = arrayMap.map((parametro) => parametro * 2);
console.log(doble);

//.filter()
var estudiantes = [
  { nombre: "Juan", nota: 5 },
  { nombre: "Ana", nota: 8 },
  { nombre: "Carlos", nota: 9 },
  { nombre: "Sofia", nota: 4 },
];
var aprobados = estudiantes.filter((parametro) => parametro.nota >= 6);
console.log(aprobados);

//.findIndex()
var arrayFindIndex = [5, 12, 8, 130, 44];
var indice = arrayFindIndex.findIndex((parametro) => parametro > 10);
console.log(indice);

//.find()
var arrayFind = arrayFindIndex.find((parametro) => parametro > 10);
console.log(arrayFind);

//.reduce()
var arrayReduce = [1, 2, 3, 4];
var suma = arrayReduce.reduce((acumulador, numero) => acumulador + numero);
console.log(suma);

//.reduceRight()
var arrayReduceRight = ["uno", "dos", "tres", "cuatro"];
var resultado = arrayReduceRight.reduceRight(
  (acumulador, palabra) => acumulador + " " + palabra
);
console.log(resultado);

//for...in
var object = {
  nombre: "Ana",
  edad: 25,
  profesion: "Ingeniera",
};
for (let i in object) {
  console.log(`${i}: ${object[i]}`);
}
var arrayForIn = [10, 20, 30];
for (let i in arrayForIn) {
  console.log(i, arrayForIn[i]);
}

//for...of
var arrayForOf = [10, 20, 30];
for (let i of arrayForOf) {
  console.log(i);
}

//for...of con Objetos --> usar Object.values()
var objectValue = {
  nombre: "Ana",
  edad: 25,
  profesion: "Ingeniera",
};
for (let i of Object.values(objectValue)) {
  console.log(i);
}

//Guardar datos en localstorage
localStorage.setItem("nombre", "juan");

//Obtener datos en localstorage
var nombreGuardado = localStorage.getItem("nombre");
console.log(nombreGuardado);
