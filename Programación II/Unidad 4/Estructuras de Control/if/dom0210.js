//Crear boton
const btn = document.createElement("button"); //Creamos el boton y lo guardamos en btn
btn.innerHTML = "Soy un botón!"; // Le ponemos el texto
document.body.appendChild(btn); // Lo agregamos al <body>

//Crear texto
let nuevoParrafo = document.createElement("p");
nuevoParrafo.textContent = "Este es un nuevo parrafo";
let div = document.getElementById("miDiv");
div.appendChild(nuevoParrafo);
