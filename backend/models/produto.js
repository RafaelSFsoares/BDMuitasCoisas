'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Produto extends Model {
    
    static associate(models) {
      
    }
  };
  Produto.init({
    Codigo: DataTypes.INTEGER,
    Nome: DataTypes.STRING,
    Descrição: DataTypes.STRING,
    CategoriaID: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Produto',
  });
  return Produto;
};