var express = require('express');
var router = express.Router();
const productosController = require('../controllers/productosController');
const { body } = require('express-validator');


let validations= [
    body('imagen_producto')
    .notEmpty()
    .withMessage('Debes ingresar una imágen del producto')
    .bail(),

    body('nombre_producto')
    .notEmpty()
    .withMessage('Debes ingresar el nombre del producto')
    .bail(),

    body('descripcion')
    .notEmpty()
    .withMessage('Debes ingresar una descripción del producto')
    .bail(),
];


let validationComment= [
    body('comentario')
    .notEmpty().withMessage('Debe ingresar un comentario, no puede estar vacío')
    .bail()
    .isLength({ min: 3 }).withMessage('Su comentario debe tener al menos 3 caracteres'),
];


router.get('/', productosController.product);

router.post('/', validationComment, productosController.comment);

/* método GET para mostrar la vista del form */
router.get('/add', productosController.showFormAdd);

/* método POST para procesar la infor del form */
router.post('/add', validations, productosController.store);

router.get('/edit/:id', productosController.showFormUpdate);

router.post("/update", validations, productosController.update);

router.get('/search', productosController.search);

router.get('/id/:id', productosController.productInfo);

router.post('/delete/:id', productosController.delete);




module.exports = router;



