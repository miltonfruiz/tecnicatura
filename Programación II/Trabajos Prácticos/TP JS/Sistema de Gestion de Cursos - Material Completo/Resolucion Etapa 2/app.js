//----------------------------- Importación de Funciones -----------------------------//

import {
  edicionEstudiantes,
  editarCurso,
  primeraMayuscula,
  mostrarMensaje,
  cadenaValida,
  guardarDatos,
  calcularEstadisticas,
  mostrarEstudiantes,
  actualizarEstadisticas,
} from "../Resolución Etapa 3/etapa3.js";

//---------------------------------- Captura de ID's --------------------------------//

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
const tablaEstadisticas = document.getElementById("tabla-estadisticas");
const totalEstudiantesElem = document.getElementById("total-estudiantes");
const promedioGeneralElem = document.getElementById("promedio-general");
const totalCursosElem = document.getElementById("total-cursos");
const mejorCursoElem = document.getElementById("mejor-curso");
const botonEmpezar = document.getElementById("boton-empezar");
//---------------------------- Clase Estudiante -------------------------------------//

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
//----------------------------- Clase Curso ----------------------------------------//

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
//----------------------- Arreglo y Variables  -------------------------//

export let cursos = [];
export let cursoActual = null;
let ordenarPorEdad = false;
let ordenarPorNota = false;

//------------------ Cargar datos desde localStorage al cargar la página ------------------//

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
//------------------ Evento para agregar un curso ----------------------//

formCurso.addEventListener("submit", (e) => {
  e.preventDefault();
  const cursoCorregido = primeraMayuscula(nombreCurso.value);
  const profesorCorregido = primeraMayuscula(profesorCurso.value);
  const nombreValido = cadenaValida(cursoCorregido);
  const profesorValido = cadenaValida(profesorCorregido);
  const cursoExistente = cursos.find(
    (curso) => curso.nombre.toLowerCase() === cursoCorregido.toLowerCase()
  );
  if (cursoExistente) {
    mostrarMensaje("¡Ese curso ya existe!", "error");
  } else if (!nombreValido && !profesorValido) {
    mostrarMensaje("¡Valores ingresados incorrectos!", "error");
  } else if (!nombreValido) {
    mostrarMensaje("¡Nombre de curso incorrecto!", "error");
  } else if (!profesorValido) {
    mostrarMensaje("¡Nombre de profesor incorrecto!", "error");
  } else {
    const nuevoCurso = new Curso(cursoCorregido, profesorCorregido);
    cursos.push(nuevoCurso);
    formCurso.reset();
    actualizarCursosSelect();
    mostrarCursos();
    mostrarMensaje("¡Curso creado correctamente!", "success");
    guardarDatos();
  }
});
//------------------ Evento para agregar un estudiante --------------------//

formEstudiante.addEventListener("submit", (e) => {
  e.preventDefault();
  const nombreEstudianteValor = primeraMayuscula(nombreEstudiante.value);
  const edadEstudianteValor = parseInt(edadEstudiante.value);
  const notaEstudianteValor = parseFloat(notaEstudiante.value);
  const cursoIndex = cursoEstudianteSelect.value;
  const nombreValido = cadenaValida(nombreEstudianteValor);
  const cursoActual = cursos[cursoIndex];
  const estudianteExistente = cursoActual.estudiantes.find(
    (est) => est.nombre.toLowerCase() === nombreEstudianteValor.toLowerCase()
  );
  if (estudianteExistente) {
    mostrarMensaje("¡Ese alumno ya existe!", "error");
  } else if (
    (!nombreValido && edadEstudianteValor <= 0 && notaEstudianteValor < 0) ||
    notaEstudianteValor > 10
  ) {
    mostrarMensaje("¡Valores ingresados incorrectos!", "error");
  } else if (!nombreValido && edadEstudianteValor <= 0) {
    mostrarMensaje("¡Nombre y Edad ingresado Incorrectos!", "error");
  } else if (
    (!nombreValido && notaEstudianteValor < 0) ||
    notaEstudianteValor > 10
  ) {
    mostrarMensaje("¡Nombre y Nota ingresado Incorrectos!", "error");
  } else if (
    (edadEstudianteValor <= 0 && notaEstudianteValor < 0) ||
    notaEstudianteValor > 10
  ) {
    mostrarMensaje("¡Edad y Nota ingresadas Incorrectas!", "error");
  } else if (!nombreValido) {
    mostrarMensaje("Nombre ingresado Incorrecto!", "error");
  } else if (edadEstudianteValor <= 0) {
    mostrarMensaje("Edad ingresada Incorrecta!", "error");
  } else if (notaEstudianteValor < 0 || notaEstudianteValor > 10) {
    mostrarMensaje("¡Nota ingresada Incorrecta!", "error");
  } else {
    const nuevoEstudiante = new Estudiante(
      nombreEstudianteValor,
      edadEstudianteValor,
      notaEstudianteValor
    );
    cursoActual.agregarEstudiante(nuevoEstudiante);
    formEstudiante.reset();
    mostrarCursos();
    mostrarMensaje("¡Estudiante agregado correctamente!", "success");
    guardarDatos();
    actualizarEstadisticas();
  }
});
//------------------------- Eventos de eliminar estudiante -----------------------//

listaEstudiantesEdicion.addEventListener("click", (e) => {
  if (e.target.id === "boton-eliminar-estudiante") {
    const index = e.target.dataset.index;
    const estudiante = cursoActual.estudiantes[index];
    mensajeConfirmacion.innerHTML = `<i class="fa-solid fa-triangle-exclamation" style="color: red; margin-right: 8px;"></i>
    ¿Estás seguro de que deseas eliminar al estudiante "<strong>${estudiante.nombre}</strong>"? 
    <i class="fa-solid fa-triangle-exclamation"></i> `;
    modalConfirmacion.style.display = "block";
    botonConfirmar.onclick = () => {
      cursoActual.estudiantes.splice(index, 1);
      mostrarEstudiantes();
      guardarDatos();
      mostrarMensaje(
        `<i class="fa-solid fa-triangle-exclamation" style="color: green; margin-right: 8px;"></i>
        Se ha eliminado al estudiante "<strong>${estudiante.nombre}</strong>"`,
        "success"
      );
      modalConfirmacion.style.display = "none";
      actualizarEstadisticas();
    };
    botonCancelar.onclick = () => {
      modalConfirmacion.style.display = "none";
    };
  }
});
//------------------- Función para actualizar el select de cursos --------------//

export function actualizarCursosSelect() {
  cursoEstudianteSelect.innerHTML = "";
  cursos.forEach((curso, index) => {
    const option = document.createElement("option");
    option.value = index;
    option.textContent = curso.nombre;
    cursoEstudianteSelect.appendChild(option);
  });
}
//------------------- Función para mostrar los cursos y estudiantes -------------------//

export function mostrarCursos(busqueda = "") {
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
    if (
      curso.nombre.toLowerCase().includes(busqueda) ||
      curso.profesor.toLowerCase().includes(busqueda)
    ) {
      resultadosEncontrados = true;
      let estudiantesAFiltrar = [...curso.estudiantes];
      if (ordenarPorEdad) {
        estudiantesAFiltrar.sort((a, b) => a.edad - b.edad);
      } else if (ordenarPorNota) {
        estudiantesAFiltrar.sort((a, b) => a.nota - b.nota);
      }
      const cantidadEstudiantes = estudiantesAFiltrar.length;
      const filaCurso = document.createElement("tr");
      filaCurso.innerHTML = `
        <td rowspan="${cantidadEstudiantes || 1}">${curso.nombre}</td>
        <td rowspan="${cantidadEstudiantes || 1}">${curso.profesor}</td>
        <td rowspan="${
          cantidadEstudiantes || 1
        }">${curso.obtenerPromedio()}</td>
        <td>${
          cantidadEstudiantes > 0
            ? estudiantesAFiltrar[0].nombre
            : "No hay estudiantes"
        }</td>
        <td>${
          cantidadEstudiantes > 0 ? estudiantesAFiltrar[0].edad : "N/A"
        }</td>
        <td>${
          cantidadEstudiantes > 0 ? estudiantesAFiltrar[0].nota : "N/A"
        }</td>
        <td class="td-contenedor-botones" rowspan="${cantidadEstudiantes || 1}">
          <div class="botones-acciones">
            <button title="Boton Editar" id="boton-editar-curso" class="editar-curso btn btn-warning boton-editar-curso" data-bs-toggle="modal" data-bs-target="#formulario-edicion" nombre="${
              curso.nombre
            }"><i class="fa-regular fa-pen-to-square"></i><span class="texto-editar-curso">Editar</span></button>
            <button title="Boton Eliminar" class="btn btn-danger boton-eliminar-curso" id="boton-eliminar-curso"><i class="fa-solid fa-trash"></i> <span class="texto-eliminar-curso">Eliminar</span></button>
          </div>
        </td>
      `;
      tabla.querySelector("tbody").appendChild(filaCurso);
      filaCurso.querySelector(".boton-editar-curso").classList.add("visible");
      filaCurso.querySelector(".boton-eliminar-curso").classList.add("visible");
      estudiantesAFiltrar.forEach((est, index) => {
        if (index > 0) {
          const filaEstudiante = document.createElement("tr");
          filaEstudiante.innerHTML = `
            <td>${est.nombre}</td>
            <td>${est.edad}</td>
            <td>${est.nota}</td>
          `;
          tabla.querySelector("tbody").appendChild(filaEstudiante);
        }
      });
    }
  });
  if (!resultadosEncontrados) {
    const filaVacía = document.createElement("tr");
    filaVacía.innerHTML = `
      <td colspan="7">No se encontraron resultados</td>
    `;
    tabla.querySelector("tbody").appendChild(filaVacía);
  }
  listaCursos.appendChild(tabla);
}
//---------------------- Eventos para filtrar estudiantes -------------------//

filtroEstudiantes.addEventListener("change", () => {
  const valorFiltro = filtroEstudiantes.value;
  if (valorFiltro === "edad") {
    ordenarPorEdad = true;
    ordenarPorNota = false;
  } else if (valorFiltro === "nota") {
    ordenarPorEdad = false;
    ordenarPorNota = true;
  } else {
    ordenarPorEdad = false;
    ordenarPorNota = false;
  }
  mostrarCursos(busquedaIngresada.value.toLowerCase());
});
//----------------------------- Eventos de búsqueda -------------------------//

busquedaIngresada.addEventListener("input", () => {
  mostrarCursos(busquedaIngresada.value.toLowerCase());
});
//---------------------- Eventos de guardar curso ---------------------------//

guardarEdicion.addEventListener("click", () => {
  if (nuevoNombreCurso.value && nuevoNombreProfesor.value) {
    editarCurso(
      cursoActual.nombre,
      primeraMayuscula(nuevoNombreCurso.value),
      primeraMayuscula(nuevoNombreProfesor.value)
    );
    guardarDatos();
    const modal = bootstrap.Modal.getInstance(
      document.getElementById("formulario-edicion")
    );
    modal.hide();
  } else {
    alert("Por favor, completa todos los campos antes de guardar.");
  }
});
//--------------------- Eventos de cancelación de edición -------------------//

cancelarEdicion.addEventListener("click", function () {
  const modal = bootstrap.Modal.getInstance(
    document.getElementById("formulario-edicion")
  );
  modal.hide();
});

//------------------------- Eventos de eliminar curso -----------------------//

listaCursos.addEventListener("click", (e) => {
  if (e.target.id === "boton-eliminar-curso") {
    const cursoNombre = e.target.closest("tr").querySelector("td").textContent;
    mensajeConfirmacion.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> 
    ¿Estás seguro de que deseas eliminar el curso "${cursoNombre}"? 
    <i class="fa-solid fa-triangle-exclamation"></i>`;
    modalConfirmacion.style.display = "block";
    const cursoAEliminar = cursoNombre;
    botonConfirmar.onclick = () => {
      const indiceCurso = cursos.findIndex(
        (curso) => curso.nombre === cursoAEliminar
      );
      if (indiceCurso !== -1) {
        cursos.splice(indiceCurso, 1);
        mostrarCursos();
        guardarDatos();
        mostrarMensaje(
          `Se ha eliminado el curso "${cursoAEliminar}"`,
          "success"
        );
      }
      modalConfirmacion.style.display = "none";
    };
    botonCancelar.onclick = () => {
      modalConfirmacion.style.display = "none";
    };
  }
});
//------------------------ Eventos de edición de curso ---------------------//

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
//--------------------- Eventos de edición de estudiante -------------------//

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
//--------------------- Eventos para guardar los cambios del estudiante -------------------//

guardarEdicionEstudiante.addEventListener("click", () => {
  if (estudianteActualIndex !== null) {
    const nombreNuevo = nombreEstudianteEditar.value;
    const edadNueva = parseInt(edadEstudianteEditar.value);
    const notaNueva = parseFloat(notaEstudianteEditar.value);
    if (
      cadenaValida(nombreNuevo) &&
      edadNueva > 0 &&
      notaNueva >= 0 &&
      notaNueva <= 10
    ) {
      cursoActual.estudiantes[estudianteActualIndex].nombre =
        primeraMayuscula(nombreNuevo);
      cursoActual.estudiantes[estudianteActualIndex].edad = edadNueva;
      cursoActual.estudiantes[estudianteActualIndex].nota = notaNueva;
      const modal = bootstrap.Modal.getInstance(
        document.getElementById("formulario-edicion-estudiante")
      );
      modal.hide();
      mostrarEstudiantes();
      mostrarMensaje("¡Estudiante actualizado correctamente!", "success");
      guardarDatos();
    } else {
      mostrarMensaje("¡Valores ingresados incorrectos!", "error");
    }
  }
});
//------------------------------ Evento para cancelar la edición --------------------------//

cancelarEdicionEstudiante.addEventListener("click", () => {
  formEdicionEstudiante.style.display = "none";
  nombreEstudianteEditar.value = "";
  edadEstudianteEditar.value = "";
  notaEstudianteEditar.value = "";
});
//----------------------------- Función para mostrar estadísticas -------------------------//

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
//------------------------------- Evento para desplazar a elemento -----------------------//

botonEmpezar.addEventListener("click", function (event) {
  event.preventDefault();
  const target = document.getElementById("nombre-curso");
  target.scrollIntoView({ behavior: "smooth", block: "start" });
  target.focus();
});
//----------------------------- Evento efecto aparición Scroll ---------------------------//

document.addEventListener("DOMContentLoaded", () => {
  const elementos = [
    ...document.querySelectorAll(".oculto"),
    document.getElementById("boton-agregar-curso"),
    document.getElementById("boton-agregar-estudiante"),
    document.getElementById("exportar-json"),
    document.getElementById("filtro-estudiantes"),
    document.getElementById("tabla-estadisticas-tr"),
    document.getElementById("tabla-estadisticas-subtr"),
    document.getElementById("contenedor-grafica"),
    document.getElementById("graficaEstudiantes"),
    document.querySelector(".texto-arriba1"),
    document.querySelector(".texto-arriba2"),
    document.querySelector(".texto-arriba3"),
    document.querySelector(".texto-h2-estadisticas"),
    document.querySelector(".texto-h2-informacion"),
    document.querySelector("#link-empezar"),
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
