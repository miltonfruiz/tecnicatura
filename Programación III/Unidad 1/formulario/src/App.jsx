import { BrowserRouter, Routes, Route } from "react-router-dom";
import FormPage from "./pages/FormPage";
import Home from "./pages/Home";
import Profile from "./pages/Profile";
import { useState } from "react";
import Protected from "./components/Protected";

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />}></Route>
        <Route
          path="/formulario"
          element={<FormPage setIsLoggedIn={setIsLoggedIn} />}
        ></Route>
        <Route
          path="/perfil"
          element={
            <Protected isSignedIn={isLoggedIn}>
              <Profile />
            </Protected>
          }
        ></Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
