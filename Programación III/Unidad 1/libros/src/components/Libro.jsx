import React from "react";

const Libro = ({ image, author, title, pages, description }) => {
  return (
    <div className="libro-container">
      <img className="libro-image" src={image} alt="Libro1" />
      <p className="libro-text">Autor: {author}</p>
      <p className="libro-title">Titulo: {title}</p>
      <p className="libro-text">Páginas: {pages}</p>
      <p className="libro-text">Descripción: {description}</p>
    </div>
  );
};
export default Libro;
