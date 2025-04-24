import { Router } from "express";

const router = Router();

router.get("/books/:id", (req, res) => {
  const { id } = req.params;
  res.send(`Obteniendo libros con id ${id}`);
});

export default router;
