import React, { useState } from "react";

const CustomComponent = () => {
  const [colors, setColors] = useState("black");
  const [stringColor, setStringColor] = useState("Negro");
  const [counter, setCounter] = useState(0);
  const [isClicked, setIsClicked] = useState(false);

  function colorHandler() {
    setColors(colors === "black" ? "red " : "black");
    setStringColor(stringColor == "Negro" ? "Rojo" : "Negro");
  }
  function addHandler() {
    setCounter(counter + 1);
  }
  function subtractHandler() {
    setCounter(counter > 0 ? counter - 1 : setCounter);
  }

  function resetHandler() {
    setCounter(0);
  }
  function onclickHandler() {
    setIsClicked(!isClicked);
  }
  return (
    <div>
      <p style={{ color: colors }}>Soy de color: {stringColor}</p>
      <button onClick={colorHandler}>Click</button>
      <p>Contador: {counter}</p>
      <button onClick={subtractHandler}>-</button>
      <button onClick={addHandler}>+</button>
      <button onClick={resetHandler}>Reiniciar</button>
      <p>Aca abajo hay un mensaje secreto</p>
      <button onClick={onclickHandler}>Mostrar mensaje secreto</button>
      {isClicked && <p>Este es el mensaje secreto!</p>}
    </div>
  );
};
export default CustomComponent;
