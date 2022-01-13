'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Categoria extends Model {
    
    static associate(models) {
      Categoria.hasMany(models.Produto, {
        foreignKey: 'CategoriaID'
      })
    }
  };
  Categoria.init({
    Codigo: DataTypes.INTEGER,
    Nome: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Categoria',
  });
  return Categoria;
};