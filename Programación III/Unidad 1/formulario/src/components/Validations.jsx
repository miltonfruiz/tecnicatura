const Validations = ({ datos }) => {
  const errores = {};

  if (!datos.name.trim()) {
    errores.name = "El nombre es obligatorio";
  } else if (!/^[A-Za-zÁÉÍÓÚáéíóúÑñ\s]+$/.test(datos.name)) {
    errores.name = "Solo se permiten letras";
  }

  if (!datos.email.trim()) {
    errores.email = "El email es obligatorio";
  } else if (!/\S+@\S+\.\S+/.test(datos.email)) {
    errores.email = "El email no es válido";
  }

  if (!datos.password.trim()) {
    errores.password = "La contraseña es obligatoria";
  } else if (!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/.test(datos.password)) {
    errores.password = "Mínimo 8 caracteres, incluyendo letras y números";
  }
  if (datos.password !== datos.confirmPassword) {
    errores.confirmPassword = "La contraseña no coincide";
  }
  return errores;
};

export default Validations;
