import { Router } from "express";

const router = Router();

router.get("/books/:id", (req, res) => {
  const { id } = req.params;
  res.send(`Obteniendo libros con id ${id}`);
});
router.post("/books/:id", (req, res) => {
  const { id } = req.params;
  res.send(`Creando libros con id ${id}`);
});
router.delete("/books/:id", (req, res) => {
  const { id } = req.params;
  res.send(`Borrando libros con id ${id}`);
});
router.put("/books/:id", (req, res) => {
  const { id } = req.params;
  res.send(`Actualizando libros con id ${id}`);
});
export default router;
