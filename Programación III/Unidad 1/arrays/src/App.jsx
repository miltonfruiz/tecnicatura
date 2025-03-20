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

  //3. Modificar el usuario
  // (opcion 1)
  const user = { nombre: "Carlos", age: 25, city: "Madrid" };
  const modifiedUser = {
    ...user,
    age: 30,
    country: "España",
  };
  console.log(modifiedUser);
  // (opcion2)
  function userModifier(usertest, newAge, newCountry) {
    return { ...usertest, age: newAge, country: newCountry };
  }
  console.log(userModifier(user, 30, "Argentina"));
  return <></>;
}
