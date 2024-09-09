// Declaración de la función "saludar"
function saludar() {
  // Contenido de la función
  console.log("Hola, soy una función");
}

saludar();

for (let i = 0; i < 10; i++) {
  saludar();
}

//Funcion con parametro

function saludarPorNombre(nombre, edad) {
  console.log("Hola", nombre, "tenes", edad, "años");
}

let nombreEnviado = "Milton";
let edadEnviiado = 35;

saludarPorNombre(nombreEnviado, edadEnviiado);
