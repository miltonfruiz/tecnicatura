//Objetos |¿Cómo se crean?
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

//Objetos
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
console.log("El nombre de la persona2:", persona2.nombre);
console.log(
  `Nombre de la primer persona: ${persona1.nombre},nombre de la segunda persona ${persona2.nombre}`
);

//Objetos |Métodos
var perro = {
  nombre: "Milo",
  edad: 12,
  vivo: true,
  quienSoy() {
    return "Soy " + this.nombre;
  },
  ladrar() {
    return this.nombre + " dice guau!";
  },
};
console.log(perro.nombre, "tiene", perro.edad, "años");
console.log(perro.quienSoy());
if (perro.vivo) {
  console.log(perro.ladrar());
}

//
var usuario = {
  nombre: "Ana García",
  edad: 25,
  correo: "ana@example.com",
  direccion: {
    calle: "Calle Principal",
    ciudad: "Rosario",
    codigoPostal: "2000",
  },
  intereses: ["Programacion", "Viajes", "Bailar"],
  saludar: function () {
    console.log("Hola!! Soy: " + this.nombre + ". Como estas?");
  },
};

console.log("Nombre del usuario:", usuario.nombre);
console.log("Edad del Usuario:", usuario.edad);
console.log("Correo del usuario:", usuario.correo);

// Mostrar Dirección
console.log(
  `Dirección del usuario: ${usuario.direccion.calle}, ${usuario.direccion.ciudad}`
);
console.log(usuario.direccion);

//Mostrar Intereses
console.log("Intereses del usuario: ", usuario.intereses);
console.log(`El interes que mas le gusta al usuario ${usuario.intereses[1]}`);

//Mostrar Saludo
console.log(usuario.saludar());
usuario.saludar();

// Clase Perro, con su constructor:
class Perro {
  constructor(nombre, edad, vivo) {
    this.nombre = nombre;
    this.edad = edad;
    this.vivo = vivo;
  }
}
// Instanciamos dos objetos clase Perro:
var perro1 = new Perro("Lola", 4, true);
var perro2 = new Perro("Lassie", 10, false);

// Modificamos alguna de sus PROPIEDADES:
perro1.nombre = "Toby";
perro2.edad = 6;

console.log(perro1);
console.log(perro2);
console.log(Perro);
