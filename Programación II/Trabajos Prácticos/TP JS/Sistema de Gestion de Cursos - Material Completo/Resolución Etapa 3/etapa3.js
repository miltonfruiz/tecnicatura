//----------------------------- Importacion de Funciones -----------------------------//

import {
  actualizarCursosSelect,
  mostrarCursos,
  cursos,
  cursoActual,
} from "../Resolucion Etapa 2/app.js";

//----------------------------- Exportaciones de Variables ---------------------------//

//--------------------------------- Captura de ID's ----------------------------------//

const totalEstudiantesElem = document.getElementById("total-estudiantes");
const promedioGeneralElem = document.getElementById("promedio-general");
const totalCursosElem = document.getElementById("total-cursos");
const mejorCursoElem = document.getElementById("mejor-curso");

//--------------------------- Función para eliminar un curso -------------------------//

export function eliminarCurso(nombreCurso) {
  const indice = cursos.findIndex((curso) => curso.nombre === nombreCurso);
  if (indice !== -1) {
    cursos.splice(indice, 1);
    actualizarCursosSelect();
    mostrarCursos();
  }
  botonEliminar.addEventListener("click", () => {
    eliminarCurso(nombreCurso.value);
  });
}
//--------------------------- Función para editar un curso ---------------------------//

export function editarCurso(
  nombreCursoAntiguo,
  nuevoNombreCurso,
  nuevoNombreProfesor
) {
  const indice = cursos.findIndex(
    (curso) => curso.nombre === nombreCursoAntiguo
  );
  if (indice !== -1) {
    cursos[indice].nombre = nuevoNombreCurso;
    cursos[indice].profesor = nuevoNombreProfesor;
    actualizarCursosSelect();
    mostrarCursos();
  }
}
//----------------------- Función para primera letra Mayuscula -----------------------//

export function primeraMayuscula(nombreCompleto) {
  return nombreCompleto
    .split(" ")
    .map(
      (palabra) =>
        palabra.charAt(0).toUpperCase() + palabra.slice(1).toLowerCase()
    )
    .join(" ");
}
//------------- Función para manejar eventos de edición de estudiantes --------------//

export function edicionEstudiantes() {
  document.querySelectorAll(".editar-estudiante").forEach((boton) => {
    boton.addEventListener("click", () => {
      const nombreEstudiante = boton.getAttribute("data-nombre");
      const estudiante = cursoActual.estudiantes.find(
        (est) => est.nombre === nombreEstudiante
      );
      const formularioEdicionEstudiante = crearFormularioEdicion(estudiante);
      const listaEstudiantesEdicion = document.getElementById(
        "lista-estudiantes-edicion"
      );
      listaEstudiantesEdicion.innerHTML = "";
      listaEstudiantesEdicion.appendChild(formularioEdicionEstudiante);
    });
  });
}
function crearFormularioEdicion(estudiante) {
  const formulario = document.createElement("form");
  formulario.classList.add("row", "mb-3");
  const campos = [
    {
      label: "Nombre",
      id: "nombre-estudiante-editar",
      type: "text",
      value: estudiante.nombre,
    },
    {
      label: "Edad",
      id: "edad-estudiante-editar",
      type: "number",
      value: estudiante.edad,
    },
    {
      label: "Nota",
      id: "nota-estudiante-editar",
      type: "number",
      value: estudiante.nota,
    },
  ];
  campos.forEach((campo) => {
    const divCampo = document.createElement("div");
    divCampo.classList.add("col-md-4");
    divCampo.innerHTML = `
      <label for="${campo.id}">${campo.label}:</label>
      <input type="${campo.type}" id="${campo.id}" class="form-control" value="${campo.value}" required />
    `;
    formulario.appendChild(divCampo);
  });
  const botonGuardar = document.createElement("button");
  botonGuardar.type = "submit";
  botonGuardar.classList.add("btn", "btn-info", "col-12");
  botonGuardar.innerHTML = `<i class="fa-solid fa-floppy-disk"></i> Guardar`;
  formulario.appendChild(botonGuardar);

  formulario.addEventListener("submit", (e) => {
    e.preventDefault();
    const nuevoNombre = document.getElementById(
      "nombre-estudiante-editar"
    ).value;
    const nuevaEdad = parseInt(
      document.getElementById("edad-estudiante-editar").value
    );
    const nuevaNota = parseFloat(
      document.getElementById("nota-estudiante-editar").value
    );
    if (validarDatos(nuevoNombre, nuevaEdad, nuevaNota)) {
      estudiante.nombre = primeraMayuscula(nuevoNombre);
      estudiante.edad = nuevaEdad;
      estudiante.nota = nuevaNota;
      mostrarTablaEstudiantesEdicion(cursoActual);
      listaEstudiantesEdicion.innerHTML = "";
    } else {
      alert("Por favor, introduce valores válidos.");
    }
  });

  return formulario;
}
function validarDatos(nombre, edad, nota) {
  return nombre && edad > 0 && nota >= 0 && nota <= 10;
}
export function mostrarTablaEstudiantesEdicion(curso) {
  let tablaEstudiantes = document.getElementById("tabla-estudiantes");
  if (!tablaEstudiantes) {
    tablaEstudiantes = document.createElement("table");
    tablaEstudiantes.id = "tabla-estudiantes";
    document
      .getElementById("lista-estudiantes-edicion")
      .appendChild(tablaEstudiantes);
  }
  tablaEstudiantes.innerHTML = "";
}
//------------------------- Función mostrar mensaje de creado -----------------------//

export function mostrarMensaje(mensaje, tipo) {
  const mensajeDiv = document.createElement("div");
  mensajeDiv.textContent = mensaje;
  mensajeDiv.className = `mensaje ${tipo}`;
  document.body.appendChild(mensajeDiv);
  setTimeout(() => {
    mensajeDiv.classList.add("mostrar");
  }, 10);
  setTimeout(() => {
    mensajeDiv.classList.add("oculto");
    setTimeout(() => {
      mensajeDiv.remove();
    }, 2000);
  }, 3000);
}
//------------------------------- Función validar cadena ----------------------------//

export function cadenaValida(cadena) {
  return (
    typeof cadena === "string" && cadena.trim() !== "" && !/\d/.test(cadena)
  );
}
//-------------------------- Función para guardar en localStorage ------------------//

export function guardarDatos() {
  localStorage.setItem("cursos", JSON.stringify(cursos));
}
//---------------------------- Función para calcular estadísticas ------------------//

export function calcularEstadisticas() {
  let totalEstudiantes = 0;
  let sumaNotas = 0;
  let totalCursos = cursos.length;
  let mejorCurso = null;
  let mejorPromedio = 0;
  cursos.forEach((curso) => {
    totalEstudiantes += curso.estudiantes.length;
    const promedioCurso = curso.obtenerPromedio();

    if (promedioCurso !== "N/A") {
      const promedioNum = parseFloat(promedioCurso);
      sumaNotas += curso.estudiantes.reduce(
        (total, estudiante) => total + estudiante.nota,
        0
      );
      if (promedioNum > mejorPromedio) {
        mejorPromedio = promedioNum;
        mejorCurso = curso.nombre;
      }
    }
  });
  const promedioGeneral =
    totalEstudiantes > 0 ? (sumaNotas / totalEstudiantes).toFixed(2) : "N/A";

  return { totalEstudiantes, promedioGeneral, totalCursos, mejorCurso };
}
//--------------------------------------- JSON -------------------------------------//

document.addEventListener("DOMContentLoaded", () => {
  document
    .getElementById("exportar-json")
    .addEventListener("click", exportarDatosAJson);
});
// ----------------------- Función exportar datos archivo JSON----------------------//

export function exportarDatosAJson() {
  const data = JSON.stringify(cursos, null, 2);
  const blob = new Blob([data], { type: "application/json" });
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.href = url;
  a.download = "cursos.json";
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
}
document.addEventListener("DOMContentLoaded", () => {
  document
    .getElementById("exportar-json")
    .addEventListener("click", exportarDatosAJson);
});
// --------------------- Función actualizar datos de estadistica -------------------//

let graficaEstudiantes;
export function actualizarEstadisticas() {
  const { totalEstudiantes, promedioGeneral, totalCursos, mejorCurso } =
    calcularEstadisticas();
  totalEstudiantesElem.textContent = totalEstudiantes;
  promedioGeneralElem.textContent = promedioGeneral;
  totalCursosElem.textContent = totalCursos;
  mejorCursoElem.textContent = mejorCurso || "N/A";
  const ctx = graficaCanvas.getContext("2d");
  if (graficaEstudiantes) {
    graficaEstudiantes.data.datasets[0].data = [
      totalEstudiantes,
      promedioGeneral,
      totalCursos,
    ];
    graficaEstudiantes.update();
  } else {
    graficaEstudiantes = new Chart(ctx, {
      type: "pie",
      data: {
        labels: ["Total de Estudiantes", "Promedio General", "Total de Cursos"],
        datasets: [
          {
            label: "Estadísticas",
            data: [totalEstudiantes, promedioGeneral, totalCursos],
            backgroundColor: ["#36a2eb", "#ff6384", "#ffce56"],
            hoverOffset: 4,
          },
        ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            position: "top",
          },
          title: {
            display: true,
            text: "Estadísticas de Estudiantes",
          },
        },
      },
    });
  }

  graficaCanvas.style.display = "block";
}
