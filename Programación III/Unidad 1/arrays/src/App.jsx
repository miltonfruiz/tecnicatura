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

  //Metodos - Ejemplos
  const numbersX5 = [5, 10, 15, 20, 25];
  const x = numbersX5.map((element) => element / 2);
  const y = numbersX5.filter((element) => element % 2);
  const z = numbersX5.reduce((acumulator, element) => acumulator + element, 0);

  //1. Crear un nuevo arreglo con los números multiplicado por 2
  const multipliedArray = numbersX5.map((e) => e * 2);
  console.log(multipliedArray);
  //2. Nuevo arreglo que haga interpolación que el resultado sea "Numero : Num"
  const interpolationArray = numbersX5.map((e) => `Numero: ${e}`);
  console.log(interpolationArray);

  return <></>;
}
