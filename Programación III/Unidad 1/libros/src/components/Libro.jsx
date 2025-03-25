import React from "react";

const Libro = ({ librito }) => {
  return (
    <div className="libro-container">
      <img className="libro-image" src={librito.image} alt="Libro1" />
      <p className="libro-text">Autor: {librito.author}</p>
      <p className="libro-title">Titulo: {librito.title}</p>
      <p className="libro-text">Páginas: {librito.pages}</p>
      <p className="libro-text">Descripción: {librito.description}</p>
    </div>
  );
};
export default Libro;
