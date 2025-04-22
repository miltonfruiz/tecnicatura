import { useNavigate } from "react-router-dom";
import Form from "../components/Form";
import Validations from "../components/Validations";
import { useRef, useState } from "react";

function FormPage() {
  const nameRef = useRef(null);
  const emailRef = useRef(null);
  const passwordRef = useRef(null);
  const confirmPasswordRef = useRef(null);
  const [errores, setErrores] = useState({});
  const navigate = useNavigate();

  const manejarEnvio = (FormData) => {
    const errores = Validations({ datos: FormData });
    if (Object.keys(errores).length > 0) {
      if (errores.name && nameRef.current) {
        nameRef.current.focus();
      } else if (errores.email && emailRef.current) {
        emailRef.current.focus();
      } else if (errores.password && passwordRef.current) {
        passwordRef.current.focus();
      } else if (errores.confirmPassword && confirmPasswordRef.current) {
        confirmPasswordRef.current.focus();
      }
      setErrores(errores);
    } else {
      setErrores({});
      alert("Formulario enviado con éxito");
      setTimeout(() => {
        navigate("/");
      }, 2000);
    }
  };

  return (
    <>
      <div>
        <h1>Registro</h1>
        <Form
          onSubmit={manejarEnvio}
          errores={errores}
          refs={{ nameRef, emailRef, passwordRef, confirmPasswordRef }}
        />
      </div>
    </>
  );
}

export default FormPage;
