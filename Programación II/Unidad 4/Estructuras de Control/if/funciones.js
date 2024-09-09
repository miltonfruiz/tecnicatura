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

//Funcion con parametro + calculo
function tabla(numero) {
  for (let i = 0; i <= 10; i++) {
    console.log(`${numero} x ${i} = ${numero * i}`); //Backticks
    console.log("ACA", numero + "x" + i + "=" + numero * i); //Concatenando
  }
}
tabla(1);

//Funcion con parámetro y retorno
//Funcion para calcular la longitud de cadena palabra o cadena de texto
function contarCaracteres(cadena) {
  let longitud = cadena.length;
  return longitud;
}
let texto = "Ejemplo de cadena";
let longitudTexto = contarCaracteres(texto);
console.log("La frase", texto, "tiene", longitudTexto, "caracteres.");

//Funciones | Devolución de valores
var suma = function sumarTres(numero1, numero2) {
  return numero1 + numero2;
};
console.log(suma(40, 15));

var numeroMaximo = function (valor1, valor2) {
  if (valor1 > valor2) {
    return valor1;
  }
  return valor2;
};
var v1 = parseInt(prompt("Ingrese un número entero"));
var v2 = parseInt(prompt("Ingrese otro número entero"));
console.log("El número máximo es:", numeroMaximo(v1, v2));
