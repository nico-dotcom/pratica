module.exports = function(sequelize, DataTypes) {
    let alias = "Comentario";
    let cols = {
        id_comentario: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
    },
        id_usuario: {
            type: DataTypes.INTEGER,
    },

        id_producto: {
            type: DataTypes.INTEGER,
    },

        comentario: {
            type: DataTypes.STRING(350),
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

    let config= {
        tableName: 'comentarios',
        timestamps: false,
        underscored: true,
        };
    let Comentario = sequelize.define(alias, cols, config);
    Comentario.associate = function(models) {
        Comentario.belongsTo(models.Producto, {
            as: "Producto",
            foreignKey: "id_producto"
        });
        Comentario.belongsTo(models.Usuario, {
            as: "Usuario",
            foreignKey: "id_usuario"
        });

};
    return Comentario;
    };
   