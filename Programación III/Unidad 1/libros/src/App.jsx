import Libro from "./components/Libro";
import LIBROS from "./Data";
import libro1 from "./assets/libro1.jpg";
import "./App.css";
function App() {
  return (
    <>
      <Libro
        image={libro1}
        author="Saint E"
        title="El Principito"
        pages={75}
        description="Libro infantil con reflexiones adultas"
      />
      <Libro></Libro>
      <Libro
        author={LIBROS[0].autor}
        title={LIBROS[0].titulo}
        pages={LIBROS[0].paginas}
        description={LIBROS[0].descripcion}
      ></Libro>
    </>
  );
}

export default App;
