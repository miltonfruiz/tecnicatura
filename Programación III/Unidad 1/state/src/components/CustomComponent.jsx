import React, { useState } from "react";

const CustomComponent = () => {
  const [colors, setColors] = useState("black");
  const [stringColor, setStringColor] = useState("Negro");

  function colorHandler() {
    setColors(colors === "black" ? "red " : "black");
    setStringColor(stringColor == "Negro" ? "Rojo" : "Negro");
  }
  return (
    <div>
      <p style={{ color: colors }}>Soy de color: {stringColor}</p>
      <button onClick={colorHandler}>Rojo</button>
    </div>
  );
};
export default CustomComponent;
