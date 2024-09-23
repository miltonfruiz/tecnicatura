// Ejemplo: String |.length y .concat(str1,str2...)

// Creamos una variable de texto
var texto1 = "¡Hola a todos!";
largo = texto1.length;
console.log(largo); //14
// Se puede usar directamente:
console.log("Hola".length); //4

// Creamos una variable de texto
var cad = "¡Hola ";
// Concatenamos con otra
var saludo = cad.concat("Codo a Codo!");
// Y en la consola vemos "¡Hola Codo a Codo!"
console.log(saludo);

//Ejemplo sin concatenar
var saludo = "Hola";
var nombre = "Juan";
var mensaje = saludo + "," + nombre + "!";
console.log(mensaje);

//Ejemplo concatenado
var saludo = "Hola";
var nombre = "Juan";
var final = "Como estas";
var mensaje = saludo.concat(", ", nombre, "! ", final, "?"); //Para concatenar se usa coma (,)
console.log(mensaje);

//Ejemplo concat2
var hola = "Hola ";
var concateno = hola.concat("Milton");
console.log(concateno);

// Ejemplo: String |charAt(pos)
var palabra = "Programación";
console.log(palabra.charAt(3));

//Ejemplo: String |.indexOf() y .lastIndexOf()
var frase = "Aprender a Programar JavaScript";
console.log(frase.indexOf("JavaScript"));

//Buscar un subcadena desde una posicion específica
var js = "Estoy aprendiendo JavaScript, el JavaScipt me gusta";
console.log(js.indexOf("JavaScript", 15));
console.log(js.indexOf("JavaScript", 20));

var encanta = "Me encanta Javascript, el JavaScript es genial, y tb JavaScript";
console.log(encanta.lastIndexOf("JavaScript"));
//lastIndefOf() devuelve la ultima posicion de una subcadena

var frase = "Hoy es un buen día para aprender algo nuevo";
console.log(frase.lastIndexOf("un", 10));
