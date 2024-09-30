// JSON | JSON.stringify( ) y JSON.parse( )
// Objeto a JSON (a string)
var persona = { nombre: "Juan", edad: 30, casado: false };
var personaJSON = JSON.stringify(persona);
console.log(personaJSON);

// JSON a Objeto (a objeto)
var datosJSON = '{"nombre":"Juan","edad":30,"casado":false}';
var datos = JSON.parse(datosJSON);
console.log(datos);
console.log(datos.nombre);
