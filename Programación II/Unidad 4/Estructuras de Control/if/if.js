// Ejemplo if

var nota = 7;
console.log("Nota: ", nota);
// Condición (si nota es mayor o igual a
if (nota >= 5) {
  console.log("¡Estoy aprobado!");
}

// Ejemplo if/ else
var nota = 7;
console.log("El examen ha resultado:");
// Condición
if (nota < 5) {
  // Acción A (nota es menor que
  calificacion = "suspendido";
} else {
  // Acción B: (nota es mayor o igual que
  calificacion = "aprobado";
}
console.log("Estoy", calificacion);

// Operador ternario: (condición ? verdadero : falso)
var calificacion = nota < 5 ? "suspendido" : "aprobado";
console.log("Estoy", calificacion);

// Ejemplo if multiple
var nota = 7;
var calificacion = "";
console.log("He realizado mi examen.");
// Condición
if (nota < 5) {
  calificacion = "Insuficiente";
} else if (nota < 6) {
  calificacion = "Suficiente";
} else if (nota < 8) {
  calificacion = "Bien";
} else {
  calificacion = "Sobresaliente";
}
console.log("He obtenido un", calificacion);

// Ejemplo switch

var nota = 7;
console.log("He realizado mi examen. Mi resultado es el siguiente:");
switch (nota) {
  case 10:
    calificacion = "Sobresaliente";
    break;
  case 9:
  case 8:
    calificacion = "Notable";
    break;
  case 7:
  case 6:
    calificacion = "Bien";
    break;
  case 5:
    calificacion = "Suficiente";
    break;
  case 4:
  case 3:
  case 2:
  case 1:
  case 0:
    calificacion = "Insuficiente";
    break;
  default:
    //Cualquier otro caso
    calificacion = "Nota errónea";
    break;
}
console.log("He obtenido un", calificacion);

// Ejemplo If con && (AND)
/*var altura = 0;
var edad = 0;
altura = parseFloat(prompt("Ingrese la altura"));
edad = parseInt(prompt("Ingrese la edad"));
if (altura > 1.3 && edad > 14) {
  console.log("Cumple con los requisitos");
} else {
  console.log("No cumple con los requisitos");
}*/

// Ejemplo If con ||(OR)
/* var color;
color = prompt("Ingrese el color del auto");
if (color == "Rojo" || color == "Verde") {
  console.log("El auto pertenece a la categoría A");
} else {
  console.log("El auto pertenece a la categoría B");
} */

// Ejemplo while

i = 0; // Inicialización de la variable contador
// Condición: Mientras la variable contador sea menor de
while (i < 5) {
  console.log("Valor de i:", i);
  i = i + 1; // Incrementamos el valor de i
}

// Ejemplo for

for (var i = 1; i <= 10; i++) {
  console.log(i);
}
for (var i = 2; i <= 100; i += 2) {
  console.log(i);
}
