const { Router} = require('express');
const produtoController = require ('../controllers/Produto');

const router = Router();

router.get('/produto', produtoController.index);
router.get('/produto/:id', produtoController.show);
router.post('/produto', produtoController.save);
router.put('/produto/:id', produtoController.update);
router.delete('/produto/:id', produtoController.remove);



module.exports = router;