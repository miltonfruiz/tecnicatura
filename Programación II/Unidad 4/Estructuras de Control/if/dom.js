let titulo = document.getElementById("titulo");
let boton = document.getElementById("button");

boton.addEventListener("click", function () {
  titulo.textContent = "Titulo cambiado!";
});

var campoTexto = document.getElementById("campoTexto");
var mensaje = document.getElementById("mensaje");

campoTexto.addEventListener("input", function () {
  mensaje.textContent = "Escribiste esto: " + campoTexto.value;
});
