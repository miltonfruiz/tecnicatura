import { Router } from "express";
import { Book } from "../src/models/Book";

const router = Router();

router.get("/books", async (req, res) => {
  const books = await Book.findAll();
  res.json(books);
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
