var express = require('express');
const userController = require('../controllers/userController');
var router = express.Router();
const db = require('../database/models')
const { body } = require('express-validator');
const { Op } = require('sequelize');
const bcrypt = require("bcryptjs");

let validations = [
    body('mail')
        .notEmpty().withMessage('Debe ingresar un mail').bail()
        .isEmail().withMessage('Debe ingresar un mail valido')
        .custom(function (value, { req }) {
            return db.Usuario.findOne({
                where: { email: req.body.mail }
            })
                .then(function (user) {
                    if (user) {
                        throw new Error('el mail ingresado ya existe')
                    }
                })
        }),
    body("usuario")
        .notEmpty().withMessage('Debe ingresar un nombre de usuario').bail(),
    body('pass')
        .notEmpty().withMessage('Debe ingresar una contraseña').bail()
        .isLength({ min: 4 }).withMessage('La contraseña debe ser mas larga'),

];

let validationsProfileUpdate = [
    body('email')
        .notEmpty().withMessage('Debe ingresar un mail').bail()
        .isEmail().withMessage('Debe ingresar un mail valido')
        .custom(function (value, { req }) {
            return db.Usuario.findOne({
                where: {
                    email: req.body.email,
                    id_usuario: { [Op.ne]: req.body.userId }
                }

            })
                .then(function (user) {
                    if (user) {
                        throw new Error('El mail ingresado ya existe')
                    }
                })
        }),
    body("nombre_usuario")
        .notEmpty().withMessage('Debe ingresar un nombre de usuario').bail(),
    body('pass')
        .notEmpty().withMessage('Debe ingresar una contraseña').bail()
        .isLength({ min: 4 }).withMessage('La contraseña debe ser mas larga'),

];

let validationLogin = [
    body('email')
        .notEmpty().withMessage('Debe ingresar un mail').bail()
        .isEmail().withMessage('Debe ingresar un mail valido')
        .custom(function (value, { req }) {
            return db.Usuario.findOne({
                where: {
                    email: req.body.email
                }
            })
                .then(function (user) {
                    if (!user) {
                        throw new Error('El mail ingresado no existe')
                    }
                })
        }),

    body('password')
        .notEmpty().withMessage('Debe ingresar una contraseña').bail()
        .isLength({ min: 4 }).withMessage('La contraseña debe ser mas larga')
        .custom(function (value, { req }) {
            return db.Usuario.findOne({
                where: {
                    email: req.body.email
                }
            })
                .then(function (user) {

                    if (user == null) {
                        throw new Error('Ingrese un usuario valido')
                    } else {
                        let check = bcrypt.compareSync(req.body.password, user.contrasenas);
                        if (!check) {
                            throw new Error('La contraseña es incorrecta')
                        }
                    }
                })
        }),
];

router.get('/profile-edit/:id', userController.profileEdit);

router.post('/profile/update', validationsProfileUpdate, userController.profileUpdate);

router.get('/login', userController.login);

router.post('/login', validationLogin, userController.loginUser);

router.post('/logout',  userController.logout);

router.get('/register', userController.register);

router.post('/register', validations, userController.store);




module.exports = router;





