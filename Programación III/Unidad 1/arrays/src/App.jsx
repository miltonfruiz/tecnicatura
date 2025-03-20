//1. Combinar los dos arreglos

export default function App() {
  const name1 = ["Ana", "Luis", "María"];
  const name2 = ["Carlos", "Sofía", "Pedro"];
  const name3 = [...name1, ...name2];
  console.log(name3);

  return <></>;
}
