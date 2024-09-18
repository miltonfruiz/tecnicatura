// Creamos el objeto
var miAuto = new Object();

// Creamos las propiedades
miAuto.marca = "Ford";
miAuto.tipo = "Ranger";
miAuto.modelo = 2019;
console.log(
  "El auto es:",
  miAuto.marca,
  miAuto.tipo,
  "y el modelo es",
  miAuto.modelo
);

var persona = {
  nombre: "Juan", //variable del objeto. Par variable: valor,
  apellido: "Paz",
  dni: 11223344,
  //Método: es una propiedad más
  nombreCompleto: function () {
    return this.nombre + " " + this.apellido;
    //El string que devuelve tiene información del propio objeto, por eso usamos “this”
  },
};
console.log(persona); // Imprimo el objeto
console.log(persona.nombre); // Imprimo una propiedad del objeto: Juan
console.log(persona.nombreCompleto()); // Imprimo el resultado del método: Juan Paz

var persona1 = {
  nombre: "Pedro",
  edad: 26,
  dni: 12345678,
  genero: "M",
};
var persona2 = {
  nombre: "Maria",
  edad: 36,
  dni: 2233445566,
  genero: "F",
};
console.log("El nombre de la persona1:", persona1.nombre);
console.log("El nombre de la persona2:", persona2.edad);
console.log(
  `Nombre de la primer persona: ${persona1.nombre},nombre de la segunda persona ${persona2.nombre}`
);
