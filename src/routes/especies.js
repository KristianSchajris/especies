const express = require('express')
const router = express.Router();

const Especiecontroller = require('../controllers/Especiecontroller');

router.get('/listar_espoecies', Especiecontroller.index);
router.post('/agrgar_especie', Especiecontroller.store);
router.get('/eliminar/:id', Especiecontroller.destroy);
router.get('/actualizar/:id', Especiecontroller.edit);
router.post('/actualizar/:id', Especiecontroller.update);

module.exports = router;