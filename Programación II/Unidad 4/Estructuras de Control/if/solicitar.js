/* Solicitar al usuario ingresar una contraseña.
El programa verificara si la clave ingresada coincide con una clave predefinida,
Si la clave es incorrecta, se le permitira al usuario intentarlo nuevamente
pero se le informara despues de tres intentos fallidos. */

intentos = 1;
do {
  let clave = parseInt(prompt("Ingrese contraseña"));
  if (clave === 1234) {
    alert("¡Contraseña correcta!");
    break;
  } else {
    alert("!Contraseña Incorrecta!");
    alert(`Intentos: ${intentos}`);
    intentos += 1;
  }
} while (intentos < 4 || clave == 1234);
