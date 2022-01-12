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
    Preço: DataTypes.DECIMAL
  }, {
    sequelize,
    modelName: 'Estoque',
  });
  return Estoque;
};