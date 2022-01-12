const { Router} = require('express');
const vendaController = require ('../controllers/Venda');

const router = Router();

router.get('/venda', vendaController.index);
router.post('/venda', vendaController.save);
router.put('/venda/:id', vendaController.update);




module.exports = router;