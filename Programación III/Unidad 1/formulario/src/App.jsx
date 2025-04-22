import { BrowserRouter, Routes, Route } from "react-router-dom";
import FormPage from "./pages/FormPage";
import Home from "./pages/Home";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />}></Route>
        <Route path="/formulario" element={<FormPage />}></Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
