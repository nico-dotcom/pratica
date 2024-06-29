const db = require("../database/models");
const bcrypt = require("bcryptjs");
const { validationResult } = require('express-validator');


const userController = {
    profile: function (req, res) {

        let id = req.params.id
        db.Usuario.findByPk(id, {
            include: [
                {
                    association: "Comentario",
                },
                {
                    association: "Producto", 
                    include: [{association: "Comentario"}]

                } 
                   

            ], 
            order:[[{model: db.Producto}, 'created_at', 'DESC']]
        })

            .then(function (resultado) {
                return res.render("profile", { lista: resultado })

            }).catch(function (errores) {
                return console.log(errores);;
            })
    },

    profileEdit: function (req, res) {
        if (req.session.user != undefined) {

        let id_url = req.params.id;
        const userId_session = res.locals.user.id_usuario;

        if (id_url == userId_session) {

            db.Usuario.findByPk(id_url)
                .then(function (resultado) {
                    return res.render("profile-edit", { lista: resultado })

                }).catch(function (errores) {
                    return console.log(errores);;
                })

        } else {
            return res.send('Solo puedes editar tu usuario, porfavor vuelve al inicio')
        }
    } else {
        return res.redirect('/user/login');
    }

    },
    profileUpdate:function (req, res) {
        let form = req.body;
        let idUsuario = res.locals.user.id_usuario;
        let contrasenaSession = res.locals.user.contrasena;
        let errors = validationResult(req);

        if(form.pass == ""){
             contrasenaNueva = contrasenaSession;
        }else{
             contrasenaNueva = bcrypt.hashSync(form.pass, 10)
        }

        let filtro = {
            where: [{ id_usuario: idUsuario }]
        };

        let nuevoProducto = {
            nombre_usuario: form.nombre_usuario,
            email: form.email,
            contrasenas: contrasenaNueva,
            fecha: form.fecha,
            dni: form.dni,
            foto: form.foto
        }

        if (errors.isEmpty()) {

        db.Usuario.update(nuevoProducto, filtro)
            .then((result) => {
                return res.redirect("/");
            }).catch((err) => {
                return console.log(err);
            });

        }else {
            
        db.Usuario.findByPk(idUsuario)
        .then(function (resultado) {
            return res.render('profile-edit', {
                errors: errors.mapped(),
                old: req.body,
                lista: resultado });

        }).catch(function (errores) {
            return console.log(errores);;
        })

};


    },

    login: function (req,res) {
        if(req.session.user != undefined){
            return res.redirect("/")
        }else{
            return res.render('login');
        }
    },

    register: function (req, res) {
        if (req.session.user != undefined) {
            return res.redirect('/');
        } else {
        res.render('register')

            
        }
    },

    loginUser: (req, res) => {
        let errors = validationResult(req);
        let form = req.body;
        let filtro = {
            where: [{ email: form.email }]
        };

        if (errors.isEmpty()) {

        db.Usuario.findOne(filtro)
            .then((result) => {
                    req.session.user = result;

                    if (form.rememberme != undefined) {
                        res.cookie("userId", result.id_usuario, { maxAge: 1000 * 60 * 15 });
                    }

                    return res.redirect("/");
                })

            .catch((err) => {
                return console.log(err);
            });
        } else {
            return res.render('login', { errors: errors.mapped(), old: req.body })
        }

    },
    store: function (req, res) {
        let errors = validationResult(req);
        if (errors.isEmpty()) {
            
            let form = req.body;

            let user = {
                nombre_usuario: form.usuario,
                email: form.mail,
                contrasenas: bcrypt.hashSync(form.pass, 10),
                fecha: form.nacimiento,
                dni: form.documento,
                foto: "/images/users/" + form.foto

            };
            db.Usuario.create(user)

                .then(function (result) {
                    return res.redirect('/user/login');
                })
                .catch(function (error) {
                    return console.log(error);
                });


        } else {
           return res.render('register', {errors: errors.mapped(), old: req.body})
            }
        },

    logout: function (req, res) {
        req.session.destroy();
        res.clearCookie("userId");
        return res.redirect('/');
    }
    }

;

module.exports = userController;
