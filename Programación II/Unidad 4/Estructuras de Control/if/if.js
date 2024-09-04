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
