const { Router} = require('express');
const categoriaController = require ('../controllers/Categoria');

const router = Router();

router.get('/categoria', categoriaController.index);
router.post('/categoria', categoriaController.save);
router.put('/categoria/:id', categoriaController.update);




module.exports = router;