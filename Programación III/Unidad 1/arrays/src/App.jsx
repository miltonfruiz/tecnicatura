export default function App() {
  //1. Combinar los dos arreglos
  const name1 = ["Ana", "Luis", "María"];
  const name2 = ["Carlos", "Sofía", "Pedro"];
  const name3 = [...name1, ...name2];
  console.log(name3);

  //2. Crear función y combinar arreglos
  const numbers = [10, 20, 30, 40];
  function newArray(star, ArraySP, end) {
    return [star, ...ArraySP, end];
  }
  console.log(newArray(1, numbers, 51));
  return <></>;
}
