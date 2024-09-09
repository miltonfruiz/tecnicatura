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

//Funciones |Función flecha (arrowFunction)
//Función tradicional
function cuadrado(x) {
  return x * x;
}
console.log(cuadrado(2));

// Función Flecha (Arrow)
var aCuadrado = (x) => x * x;
console.log(aCuadrado(2));

// Función tradicional (con 2 parametros)
function multiplicar(num1, num2) {
  producto = num1 * num2;
  return producto;
}
console.log(multiplicar(2, 3));

// Función Arrow (con 2 parametros)
var aMultiplicar = (num1, num2) => {
  producto = num1 * num2;
  return producto;
};
console.log(aMultiplicar(6, 7));

// Función flecha válida
function a(a) {
  return a + 100;
}
// Desglose de la función flecha
// 1. Elimina la palabra "function" y coloca la flecha entre el argumento y las llaves de apertura.
(a) => {
  return a + 100;
};
// 2. Quita los llaves{} del cuerpo y la palabra "return" (el return está implícito).
(a) => a + 100;
// 3. Suprime los paréntesis de los argumentos
(a) => a + 100;

// Función anónima "saludo"
const saludo1 = function () {
  return "Hola";
};
// Función anónima "saludo"
const saludo2 = function (nombre) {
  var mensaje = "Hola " + nombre;
  return mensaje;
};
