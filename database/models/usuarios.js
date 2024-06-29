module.exports = function (sequelize , dataTypes){
    let alias = 'Usuario';
    let cols = {
        id_usuario:{
            autoIncrement: true,
            primaryKey: true,
            type : dataTypes.INTEGER
        },
        nombre_usuario:{
            type : dataTypes.STRING()
        },
       
        email:{
            type : dataTypes.STRING(250)
        },
      

        contrasenas:{
            type : dataTypes.STRING(250)
        },
        fecha:{
            type : dataTypes.DATE
        },
        dni:{
            type : dataTypes.INTEGER
        },
        foto:{
            type : dataTypes.STRING(250)
        },
        created_at:{
            type: dataTypes.DATE
        },
        updated_at:{
            type: dataTypes.DATE
        },
        deleted_at:{
            type: dataTypes.DATE
        }
    };
    let config = {
        tableName: "usuarios",
        timestamps: false,
        underscored: false
    }
    let Usuario = sequelize.define(alias, cols, config);


    Usuario.associate = function(models){
        Usuario.hasMany(models.Producto,{
            as: "Producto",
            foreignKey: "id_usuario"
        })


        Usuario.hasMany(models.Comentario,{
            as: "Comentario",
            foreignKey: "id_usuario"
        })
    };


    return Usuario;
};

