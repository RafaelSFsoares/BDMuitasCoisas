'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Estoque extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Estoque.belongsTo(models.Produto, {
        foreignKey: 'ProdutoID'
      })
    }
  };
  Estoque.init({
    Quantidade: DataTypes.INTEGER,
    Preço: DataTypes.DECIMAL,
    ProdutoID:{
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: { msg: "O campo ProdutoID precisa ser preenchido." },
        notNull: { msg: 'O campo ProdutoID precisa ser preenchido' },
   
      }}
  }, {
    sequelize,
    modelName: 'Estoque',
  });
  return Estoque;
};