//--------------------------------- Importación de Funciones ------------------------------//

//-------------------------------------- Captura de ID's ----------------------------------//

const formCurso = document.getElementById("form-curso");
const formEstudiante = document.getElementById("form-estudiante");
const edadEstudiante = document.getElementById("edad-estudiante");
const notaEstudiante = document.getElementById("nota-estudiante");
const cursoEstudianteSelect = document.getElementById("curso-estudiante");
const listaCursos = document.getElementById("lista-cursos");
const nombreCurso = document.getElementById("nombre-curso");
const formularioEdicion = document.getElementById("formulario-edicion");
const nuevoNombreCurso = document.getElementById("nuevo-nombre-curso");
const nuevoNombreProfesor = document.getElementById("nuevo-nombre-profesor");
const profesorCurso = document.getElementById("profesor-curso");
const guardarEdicion = document.getElementById("guardar-edicion");
const cancelarEdicion = document.getElementById("cancelar-edicion");
const nombreEstudiante = document.getElementById("nombre-estudiante");
const busquedaIngresada = document.getElementById("busqueda-ingresada");
const filtroEstudiantes = document.getElementById("filtro-estudiantes");
const mensajeConfirmacion = document.getElementById("mensaje-confirmacion");
const modalConfirmacion = document.getElementById("modal-confirmacion");
const botonConfirmar = document.getElementById("btn-confirmar");
const botonCancelar = document.getElementById("btn-cancelar");
const listaEstudiantesEdicion = document.getElementById(
  "lista-estudiantes-edicion"
);
const cancelarEdicionEstudiante = document.getElementById(
  "cancelar-edicion-estudiante"
);
const formEdicionEstudiante = document.getElementById(
  "formulario-edicion-estudiante"
);
const nombreEstudianteEditar = document.getElementById(
  "nombre-estudiante-editar"
);
const edadEstudianteEditar = document.getElementById("edad-estudiante-editar");
const notaEstudianteEditar = document.getElementById("nota-estudiante-editar");
const guardarEdicionEstudiante = document.getElementById(
  "guardar-edicion-estudiante"
);
const graficaCanvas = document.getElementById("graficaEstudiantes");
const totalEstudiantesElem = document.getElementById("total-estudiantes");
const promedioGeneralElem = document.getElementById("promedio-general");
const totalCursosElem = document.getElementById("total-cursos");
const mejorCursoElem = document.getElementById("mejor-curso");
const botonEmpezar = document.getElementById("boton-empezar");
const botonArriba = document.getElementById("boton-arriba");

//------------------------------------ Clase Estudiante -----------------------------------//

class Estudiante {
  constructor(nombre, edad, nota) {
    this.nombre = nombre;
    this.edad = edad;
    this.nota = nota;
  }

  presentarse() {
    return `${this.nombre} (${this.edad} años) - Nota: ${this.nota}`;
  }
}
//-------------------------------------- Clase Curso --------------------------------------//

class Curso {
  constructor(nombre, profesor) {
    this.nombre = nombre;
    this.profesor = profesor;
    this.estudiantes = [];
  }

  agregarEstudiante(estudiante) {
    this.estudiantes.push(estudiante);
  }

  listarEstudiantes() {
    return this.estudiantes.map((est) => est.presentarse()).join("<br>");
  }

  obtenerPromedio() {
    const totalNotas = this.estudiantes.reduce(
      (total, est) => total + est.nota,
      0
    );
    return this.estudiantes.length > 0
      ? (totalNotas / this.estudiantes.length).toFixed(2)
      : "N/A";
  }
}
//------------------------------------ Arreglo y Variables  -------------------------------//

let cursos = [];
let cursoActual = null;

//-------------------------------- * Funciones especiales * --------------------------------//

//--- Cargar datos desde localStorage al cargar la página ---//
document.addEventListener("DOMContentLoaded", () => {
  const cursosGuardados = JSON.parse(localStorage.getItem("cursos"));
  if (cursosGuardados) {
    cursos = cursosGuardados.map((curso) => {
      const nuevoCurso = new Curso(curso.nombre, curso.profesor);
      curso.estudiantes.forEach((est) => {
        nuevoCurso.agregarEstudiante(
          new Estudiante(est.nombre, est.edad, est.nota)
        );
      });
      return nuevoCurso;
    });
  }
  actualizarCursosSelect();
  mostrarCursos();
  document.getElementById("formulario-edicion-estudiante").style.display =
    "none";
});
//--- Convertir primera letra Mayuscula ---//
function primeraMayuscula(nombreCompleto) {
  return nombreCompleto
    .split(" ")
    .map(
      (palabra) =>
        palabra.charAt(0).toUpperCase() + palabra.slice(1).toLowerCase()
    )
    .join(" ");
}
//--- Mostrar mensaje de creado ---//
function mostrarMensaje(mensaje, tipo) {
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
//--- Validar Cadena ---//
function cadenaValida(cadena) {
  return (
    typeof cadena === "string" && cadena.trim() !== "" && !/\d/.test(cadena)
  );
}
//--- Guardar en localStorage ---//
function guardarDatos() {
  localStorage.setItem("cursos", JSON.stringify(cursos));
}
//--- Calcular estadísticas ---//
function calcularEstadisticas() {
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
// --- Exportar datos en archivo JSON ---//
function exportarDatosAJson() {
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
//--- Actualizar select en Cursos ---//
function actualizarCursosSelect() {
  cursoEstudianteSelect.innerHTML = "";
  cursos.forEach((curso, index) => {
    const option = document.createElement("option");
    option.value = index;
    option.textContent = curso.nombre;
    cursoEstudianteSelect.appendChild(option);
  });
}
//--- Mostrar tabla de Cursos y Estudiantes ---//
let tablaModificada = false;
function mostrarCursos(busqueda = "") {
  listaCursos.innerHTML = "";
  const tabla = document.createElement("table");
  tabla.classList.add("tabla-cursos");
  tabla.innerHTML = `
    <thead>
      <tr>
        <th>Curso</th>
        <th>Profesor</th>
        <th>Promedio</th>
        <th>Estudiante</th>
        <th>Edad</th>
        <th>Nota</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
  `;
  let resultadosEncontrados = false;
  cursos.forEach((curso) => {
    const coincideBusquedaCurso = curso.nombre.toLowerCase().includes(busqueda);
    const coincideBusquedaProfesor = curso.profesor
      .toLowerCase()
      .includes(busqueda);
    const estudiantesFiltrados = curso.estudiantes.filter((est) =>
      est.nombre.toLowerCase().includes(busqueda)
    );
    if (
      coincideBusquedaCurso ||
      coincideBusquedaProfesor ||
      estudiantesFiltrados.length > 0
    ) {
      resultadosEncontrados = true;
      const estudiantesAMostrar =
        estudiantesFiltrados.length > 0
          ? estudiantesFiltrados
          : curso.estudiantes;
      if (ordenarPorEdad) {
        estudiantesAMostrar.sort((a, b) => a.edad - b.edad);
      } else if (ordenarPorNota) {
        estudiantesAMostrar.sort((a, b) => a.nota - b.nota);
      } else if (ordenarPorNombre) {
        estudiantesAMostrar.sort((a, b) => a.nombre.localeCompare(b.nombre));
      }
      const cantidadEstudiantes = estudiantesAMostrar.length;
      const filaCurso = document.createElement("tr");
      filaCurso.classList.add("fade-in");
      filaCurso.innerHTML = `
        <td class="celda-verde" rowspan="${cantidadEstudiantes || 1}">${
        curso.nombre
      }</td>
        <td class="celda-verde" rowspan="${cantidadEstudiantes || 1}">${
        curso.profesor
      }</td>
        <td class="celda-verde ${
          cantidadEstudiantes > 0 ? "" : "celda-roja"
        }" rowspan="${cantidadEstudiantes || 1}">${curso.obtenerPromedio()}</td>
        <td class="celda-verde ${
          cantidadEstudiantes > 0 ? "" : "celda-roja"
        }">${
        cantidadEstudiantes > 0
          ? estudiantesAMostrar[0].nombre
          : "No hay estudiantes"
      }</td>
        <td class="celda-verde ${
          cantidadEstudiantes > 0 ? "" : "celda-roja"
        }">${cantidadEstudiantes > 0 ? estudiantesAMostrar[0].edad : "N/A"}</td>
        <td class="celda-verde ${
          cantidadEstudiantes > 0 ? "" : "celda-roja"
        }">${cantidadEstudiantes > 0 ? estudiantesAMostrar[0].nota : "N/A"}</td>
        <td class="td-contenedor-botones" rowspan="${cantidadEstudiantes || 1}">
          <div class="botones-acciones">
            <button title="Boton Editar" id="boton-editar-curso" class="editar-curso btn btn-warning boton-editar-curso" 
              data-bs-toggle="modal" data-bs-target="#formulario-edicion" nombre="${
                curso.nombre
              }">
              <i class="fa-regular fa-pen-to-square"></i><span class="texto-editar-curso">Editar</span>
            </button>
            <button title="Boton Eliminar" class="btn btn-danger boton-eliminar-curso" 
              data-bs-toggle="modal" data-bs-target="#modal-confirmacion" id="boton-eliminar-curso">
              <i class="fa-solid fa-trash"></i> <span class="texto-eliminar-curso">Eliminar</span>
            </button>
          </div>
        </td>
      `;
      tabla.querySelector("tbody").appendChild(filaCurso);
      filaCurso.querySelector(".boton-editar-curso").classList.add("visible");
      filaCurso.querySelector(".boton-eliminar-curso").classList.add("visible");
      estudiantesAMostrar.forEach((est, index) => {
        if (index > 0) {
          const filaEstudiante = document.createElement("tr");
          filaEstudiante.classList.add("fade-in");
          filaEstudiante.innerHTML = `
            <td class="celda-verde">${est.nombre}</td>
            <td class="celda-verde">${est.edad}</td>
            <td class="celda-verde">${est.nota}</td>
          `;
          tabla.querySelector("tbody").appendChild(filaEstudiante);
        }
      });
    }
  });
  if (!resultadosEncontrados) {
    const filaVacía = document.createElement("tr");
    filaVacía.classList.add("fade-in");
    filaVacía.innerHTML = `
      <td colspan="7">No se encontraron resultados</td>
    `;
    tabla.querySelector("tbody").appendChild(filaVacía);
  }
  listaCursos.appendChild(tabla);
  if (tablaModificada) {
    const ahora = new Date();
    const fecha = ahora.toLocaleDateString("es-ES", { dateStyle: "short" });
    const horas = ahora.getHours().toString().padStart(2, "0");
    const minutos = ahora.getMinutes().toString().padStart(2, "0");
    const horaFormateada = `${horas}:${minutos}`;
    const fechaFormateada = `${fecha} ${horaFormateada}`;
    localStorage.setItem("ultimaActualizacion", fechaFormateada);
    const ultimaActualizacion = document.getElementById("ultima-actualizacion");
    if (ultimaActualizacion) {
      ultimaActualizacion.innerHTML = `<i class="fa-solid fa-calendar-days"></i> * Última actualización de datos: ${fechaFormateada}`;
    }
    tablaModificada = false;
  }
}
//--- Editar Curso ---//
function editarCurso(
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
//--- Listar de Estudiantes a Editar / Eliminar ---//
function mostrarEstudiantes() {
  const listaEstudiantesEdicion = document.getElementById(
    "lista-estudiantes-edicion"
  );
  listaEstudiantesEdicion.innerHTML = "";
  if (cursoActual.estudiantes.length === 0) {
    listaEstudiantesEdicion.innerHTML =
      "<p>No hay estudiantes en este curso.</p>";
    return;
  }
  const tablaEstudiantes = document.createElement("table");
  tablaEstudiantes.classList.add("table", "tabla-estudiante");
  tablaEstudiantes.innerHTML = `
    <thead>
      <tr>
        <th class="bg-body-tertiary">Nombre</th>
        <th class="bg-body-tertiary">Edad</th>
        <th class="bg-body-tertiary">Nota</th>
        <th class="bg-body-tertiary">Acciones</th>
      </tr>
    </thead>
    <tbody>
  `;
  cursoActual.estudiantes.forEach((estudiante, index) => {
    const fila = document.createElement("tr");
    fila.innerHTML = `
      <td>${estudiante.nombre}</td>
      <td>${estudiante.edad}</td>
      <td>${estudiante.nota}</td>
      <td>
        <button title="Boton Editar" class="btn btn-warning boton-editar-estudiante" id="boton-editar-estudiante" data-index="${index}">
          <i class="fa-regular fa-pen-to-square"></i> <span class="texto-editar-estudiante">Editar</span>
        </button>
        <button title="Boton Eliminar" class="btn btn-danger" id="boton-eliminar-estudiante" data-index="${index}">
          <i class="fa-solid fa-trash"></i> <span class="texto-eliminar-estudiante">Eliminar</span>
        </button>
      </td>
    `;
    tablaEstudiantes.querySelector("tbody").appendChild(fila);
  });
  listaEstudiantesEdicion.appendChild(tablaEstudiantes);
  const botonesEditar = document.querySelectorAll(".boton-editar-estudiante");
  botonesEditar.forEach((boton) => {
    boton.addEventListener("click", function () {
      const index = boton.getAttribute("data-index");
      const estudiante = cursoActual.estudiantes[index];
      document.getElementById("nombre-estudiante-editar").value =
        estudiante.nombre;
      document.getElementById("edad-estudiante-editar").value = estudiante.edad;
      document.getElementById("nota-estudiante-editar").value = estudiante.nota;
      estudianteActualIndex = index;
      const modal = new bootstrap.Modal(
        document.getElementById("formulario-edicion-estudiante")
      );
      modal.show();
    });
  });
}
//--- Actualizar Estadísticas ---//
let graficaEstudiantes;
function actualizarEstadisticas() {
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
//--- Mostrar estadísticas ---//
let graficaEstudiantesInstance = null;
document.addEventListener("DOMContentLoaded", () => {
  const graficaCanvas = document.getElementById("graficaEstudiantes");
  const contenedorGrafica = document.getElementById("contenedor-grafica");
  const cargarGrafica = () => {
    const { totalEstudiantes, promedioGeneral, totalCursos, mejorCurso } =
      calcularEstadisticas();
    totalEstudiantesElem.textContent = totalEstudiantes;
    promedioGeneralElem.textContent = promedioGeneral;
    totalCursosElem.textContent = totalCursos;
    mejorCursoElem.textContent = mejorCurso || "N/A";
    const ctx = graficaCanvas.getContext("2d");
    if (graficaEstudiantesInstance) {
      graficaEstudiantesInstance.destroy();
    }
    graficaEstudiantesInstance = new Chart(ctx, {
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
        animation: {
          duration: 2000,
          easing: "easeOutQuart",
        },
      },
    });
    graficaCanvas.style.display = "block";
  };
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          contenedorGrafica.classList.add("visible");
          cargarGrafica();
        }
      });
    },
    { threshold: 0.5 }
  );
  observer.observe(contenedorGrafica);
});
//----------------------------------- * Eventos para Curso * -------------------------------//

//--- Agregar curso ---//
formCurso.addEventListener("submit", async (e) => {
  e.preventDefault();
  const cursoCorregido = primeraMayuscula(nombreCurso.value);
  const profesorCorregido = primeraMayuscula(profesorCurso.value);
  try {
    const response = await fetch("http://localhost:5000/api/cursos", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        nombre: cursoCorregido,
        profesor: profesorCorregido,
      }),
    });
    const data = await response.json();
    if (!response.ok) {
      mostrarMensaje(data.mensaje, data.tipo);
      return;
    }
    mostrarMensaje(data.mensaje, data.tipo);
    cursos.push({ nombre: cursoCorregido, profesor: profesorCorregido });
    formCurso.reset();
    actualizarCursosSelect();
    mostrarCursos();
  } catch (error) {
    mostrarMensaje("Error al conectar con el servidor.", "error");
    console.error("Error:", error);
  }
});
//--- Guardar curso ---//
guardarEdicion.addEventListener("click", async () => {
  if (nuevoNombreCurso.value && nuevoNombreProfesor.value) {
    try {
      const response = await fetch(
        `http://localhost:5000/api/cursos/${cursoActual.nombre}`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            nombre: primeraMayuscula(nuevoNombreCurso.value),
            profesor: primeraMayuscula(nuevoNombreProfesor.value),
          }),
        }
      );
      const data = await response.json();
      if (!response.ok) {
        mostrarMensaje(data.mensaje, data.tipo);
        return;
      }
      mostrarMensaje(data.mensaje, data.tipo);
      guardarDatos();
      tablaModificada = true;
      mostrarCursos();
      const modal = bootstrap.Modal.getInstance(
        document.getElementById("formulario-edicion")
      );
      modal.hide();
    } catch (error) {
      mostrarMensaje("Error al conectar con el servidor.", "error");
      console.error("Error:", error);
    }
  } else {
    alert("Por favor, completa todos los campos antes de guardar.");
  }
});
//--- Eliminar curso ---//
listaCursos.addEventListener("click", async (e) => {
  if (e.target.id === "boton-eliminar-curso") {
    const cursoNombre = e.target.closest("tr").querySelector("td").textContent;
    mensajeConfirmacion.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> 
    ¿Estás seguro de que deseas eliminar el curso "<strong>${cursoNombre}</strong>"? 
    <i class="fa-solid fa-triangle-exclamation"></i>`;
    modalConfirmacion.style.display = "block";
    botonConfirmar.onclick = async () => {
      try {
        const response = await fetch(
          `http://localhost:5000/api/cursos/${cursoNombre}`,
          {
            method: "DELETE",
          }
        );
        const data = await response.json();
        if (!response.ok) {
          mostrarMensaje(data.mensaje, data.tipo);
          return;
        }
        mostrarMensaje(data.mensaje, data.tipo);
        cursos = cursos.filter((curso) => curso.nombre !== cursoNombre);
        actualizarCursosSelect();
        mostrarCursos();
      } catch (error) {
        mostrarMensaje("Error al conectar con el servidor.", "error");
        console.error("Error:", error);
      }
      const cerrar = bootstrap.Modal.getInstance(
        document.getElementById("modal-confirmacion")
      );
      cerrar.hide();
    };
    botonCancelar.onclick = () => {
      const cerrar = bootstrap.Modal.getInstance(
        document.getElementById("modal-confirmacion")
      );
      cerrar.hide();
    };
  }
});
//--- Editar curso ---//
listaCursos.addEventListener("click", (e) => {
  if (e.target.classList.contains("editar-curso")) {
    cursoActual = cursos.find(
      (curso) => curso.nombre === e.target.getAttribute("nombre")
    );
    nuevoNombreCurso.value = cursoActual.nombre;
    nuevoNombreProfesor.value = cursoActual.profesor;
    formularioEdicion.style.display = "block";
    mostrarEstudiantes();
  }
});
//-------------------------------- * Eventos para Estudiante * -----------------------------//

//--- Agregar un estudiante ---//
formEstudiante.addEventListener("submit", (e) => {
  e.preventDefault();
  const nombreEstudianteValor = primeraMayuscula(nombreEstudiante.value);
  const edadEstudianteValor = parseInt(edadEstudiante.value);
  const notaEstudianteValor = parseFloat(notaEstudiante.value);
  const cursoIndex = cursoEstudianteSelect.value;
  const data = {
    nombre: nombreEstudianteValor,
    edad: edadEstudianteValor,
    nota: notaEstudianteValor,
    curso_id: cursoIndex,
  };
  fetch("/api/estudiantes", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  })
    .then((response) => response.json())
    .then((data) => {
      if (data.tipo === "success") {
        mostrarMensaje(data.mensaje, "success");
        mostrarCursos();
        guardarDatos();
      } else {
        mostrarMensaje(data.mensaje, "error");
      }
    })
    .catch((error) => {
      console.error("Error:", error);
      mostrarMensaje("Error al agregar estudiante", "error");
    });
});
//--- Eliminar estudiante ---//
listaEstudiantesEdicion.addEventListener("click", (e) => {
  const botonEliminar = e.target.closest("#boton-eliminar-estudiante");
  if (botonEliminar) {
    const index = botonEliminar.dataset.index;
    const estudiante = cursoActual.estudiantes[index];
    const estudianteId = estudiante.id;
    fetch(`/api/estudiantes/${estudianteId}`, {
      method: "DELETE",
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.tipo === "success") {
          mostrarMensaje(data.mensaje, "success");
          mostrarEstudiantes();
          guardarDatos();
        } else {
          mostrarMensaje(data.mensaje, "error");
        }
      })
      .catch((error) => {
        console.error("Error:", error);
        mostrarMensaje("Error al eliminar estudiante", "error");
      });
  }
});
//--- Filtrar estudiantes ---//
let ordenarPorEdad = false;
let ordenarPorNota = false;
let ordenarPorNombre = false;
filtroEstudiantes.addEventListener("change", () => {
  const valorFiltro = filtroEstudiantes.value;
  if (valorFiltro === "edad") {
    ordenarPorEdad = true;
    ordenarPorNota = false;
    ordenarPorNombre = false;
  } else if (valorFiltro === "nota") {
    ordenarPorEdad = false;
    ordenarPorNota = true;
    ordenarPorNombre = false;
  } else if (valorFiltro === "nombre") {
    ordenarPorEdad = false;
    ordenarPorNota = false;
    ordenarPorNombre = true;
  } else {
    ordenarPorEdad = false;
    ordenarPorNota = false;
    ordenarPorNombre = false;
  }
  mostrarCursos(busquedaIngresada.value.toLowerCase());
});
//--- Editar estudiante ---//
let estudianteActualIndex = null;
listaEstudiantesEdicion.addEventListener("click", (e) => {
  if (e.target.id === "boton-editar-estudiante") {
    estudianteActualIndex = e.target.dataset.index;
    const estudiante = cursoActual.estudiantes[estudianteActualIndex];
    nombreEstudianteEditar.value = estudiante.nombre;
    edadEstudianteEditar.value = estudiante.edad;
    notaEstudianteEditar.value = estudiante.nota;
    formEdicionEstudiante.style.display = "flex";
  }
});
//--- Guardar cambios de estudiante ---//
guardarEdicionEstudiante.addEventListener("click", () => {
  if (estudianteActualIndex !== null) {
    const nombreNuevo = nombreEstudianteEditar.value;
    const edadNueva = parseInt(edadEstudianteEditar.value);
    const notaNueva = parseFloat(notaEstudianteEditar.value);
    const data = {
      nombre: nombreNuevo,
      edad: edadNueva,
      nota: notaNueva,
    };
    fetch(`/api/estudiantes/${estudianteId}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.tipo === "success") {
          mostrarMensaje(data.mensaje, "success");
          mostrarEstudiantes();
          guardarDatos();
        } else {
          mostrarMensaje(data.mensaje, "error");
        }
      })
      .catch((error) => {
        console.error("Error:", error);
        mostrarMensaje("Error al actualizar estudiante", "error");
      });
  }
});
//---------------------------------- * Eventos Especiales * --------------------------------//

//--- Buscar curso, estudiante, profesor ---//
busquedaIngresada.addEventListener("input", () => {
  mostrarCursos(busquedaIngresada.value.toLowerCase());
});
//--- Cancelar edición curso---//
cancelarEdicion.addEventListener("click", function () {
  const modal = bootstrap.Modal.getInstance(
    document.getElementById("formulario-edicion")
  );
  modal.hide();
});
//--- Cancelar edición estudiante---//
cancelarEdicionEstudiante.addEventListener("click", () => {
  formEdicionEstudiante.style.display = "none";
  nombreEstudianteEditar.value = "";
  edadEstudianteEditar.value = "";
  notaEstudianteEditar.value = "";
});
//--- Desplazar a elemento ---//
botonEmpezar.addEventListener("click", function (event) {
  event.preventDefault();
  const target = document.getElementById("nombre-curso");
  target.scrollIntoView({ behavior: "smooth", block: "start" });
  target.focus();
});
//--- Desplazar en scroll ---//
document.addEventListener("DOMContentLoaded", () => {
  const elementos = [
    ...document.querySelectorAll(".oculto"),
    document.getElementById("boton-agregar-curso"),
    document.getElementById("boton-agregar-estudiante"),
    document.getElementById("exportar-json"),
    document.getElementById("filtro-estudiantes"),
    document.getElementById("tabla-estadisticas"),
    document.getElementById("contenedor-grafica"),
    document.getElementById("graficaEstudiantes"),
    document.querySelector(".texto-arriba1"),
    document.querySelector(".texto-arriba2"),
    document.querySelector(".texto-arriba3"),
    document.querySelector(".texto-h2-estadisticas"),
    document.querySelector(".texto-h2-informacion"),
    document.querySelector("#link-empezar"),
    document.querySelector("#ultima-actualizacion"),

    ...document.querySelectorAll(".boton-editar-curso"),
    ...document.querySelectorAll(".boton-eliminar-curso"),
    ...document.querySelectorAll(".h3-mis-redes"),
    ...document.querySelectorAll(".texto-contacto"),
    ...document.querySelectorAll(".footer-subredes"),
    ...document.querySelectorAll(".info-redes"),
    ...document.querySelectorAll(".info-redes-cel"),
    ...document.querySelectorAll(
      ".texto-educativa, .texto-gestion, .texto-plataforma, .texto-solucion, .fa-bars-progress"
    ),
  ].filter((el) => el !== null);
  const ventanaAltura = window.innerHeight;
  function manejarScroll() {
    elementos.forEach((elemento) => {
      const rect = elemento.getBoundingClientRect();
      if (rect.top < ventanaAltura - 100) {
        elemento.classList.add("visible");
      }
      if (rect.bottom < 0 || rect.top > ventanaAltura) {
        elemento.classList.remove("visible");
      }
    });
  }
  let ticking = false;
  window.addEventListener("scroll", () => {
    if (!ticking) {
      window.requestAnimationFrame(() => {
        manejarScroll();
        ticking = false;
      });
      ticking = true;
    }
  });
  manejarScroll();
});
//--- Actualizar fecha de datos ---//
window.addEventListener("load", () => {
  const ultimaActualizacion = document.getElementById("ultima-actualizacion");
  const fechaGuardada = localStorage.getItem("ultimaActualizacion");

  if (ultimaActualizacion && fechaGuardada) {
    ultimaActualizacion.innerHTML = `<i class="fa-solid fa-calendar-days"></i> * Última actualización de datos: ${fechaGuardada}`;
  }
});
//--- Desplazar en Vertical ---//
window.addEventListener("scroll", () => {
  if (window.scrollY > 1500) {
    botonArriba.style.display = "block";
  } else {
    botonArriba.style.display = "none";
  }
});
botonArriba.addEventListener("click", () => {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  });
});
