module.exports = function(sequelize, DataTypes) {
    let alias = "Producto";
    let cols = {
    id_producto: {
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.INTEGER
    },

    id_usuario: {
        type: DataTypes.INTEGER, // foreing key
    },

    imagen_producto: {
        type: DataTypes.STRING(250),
    },

    nombre_producto: {
        type: DataTypes.STRING(250),
        },
    
    descripcion: {
        type: DataTypes.STRING(400),
        },

    created_at: {
        type: DataTypes.DATE,
        },

    updated_at: {
        type: DataTypes.DATE,
        },

    deleted_at: {
        type: DataTypes.DATE,
        }
 };

let config = {
    tableName: "productos",
    timestamps: false,
    underscored: true,
        };

let Producto = sequelize.define(alias, cols, config);
Producto.associate = function(models) {
    Producto.belongsTo(models.Usuario, {
        as: "Usuario",
        foreignKey: "id_usuario"
        });

    Producto.hasMany(models.Comentario, {
        as: "Comentario",
        foreignKey: "id_producto"
    });
};

return Producto;
}

    