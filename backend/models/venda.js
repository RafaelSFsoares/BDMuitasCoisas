'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Venda extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Venda.belongsTo(models.Cliente, {
        foreignKey: 'ClienteID'
      })
    }
  };
  Venda.init({
    Codigo: DataTypes.INTEGER,
    Valor: DataTypes.STRING,
    DataDeNascimento: DataTypes.DATE,
    ClienteID:{
    type: DataTypes.STRING,
    allowNull: false,
    validate: {
      notEmpty: { msg: "O campo ClienteID precisa ser preenchido." },
      notNull: { msg: 'O campo ClienteID precisa ser preenchido' },
 
    }}
  }, {
    sequelize,
    modelName: 'Venda',
  });
  return Venda;
};