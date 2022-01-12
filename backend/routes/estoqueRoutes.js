const { Router} = require('express');
const estoqueController = require ('../controllers/Estoque');

const router = Router();

router.get('/estoque', estoqueController.index);
router.get('/estoque/:id', estoqueController.show);
router.post('/estoque', estoqueController.save);
router.put('/estoque/:id', estoqueController.update);




module.exports = router;