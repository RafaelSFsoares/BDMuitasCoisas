const { Router} = require('express');
const clienteController = require ('../controllers/Cliente');

const router = Router();

router.get('/cliente', clienteController.index);
router.post('/cliente', clienteController.save);
router.put('/cliente/:id', clienteController.update);




module.exports = router;