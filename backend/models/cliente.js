'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Cliente extends Model {
   
     
    static associate(models) {
      
    }
  };
  Cliente.init({
    Codigo: DataTypes.INTEGER,
    Nome: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: { msg: "O campo Nome precisa ser preenchido." },
        notNull: { msg: 'O campo Nome precisa ser preenchido' },
   
      }

    },
    DataDeNascimento:{
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: { msg: "O campo Data de nascimento precisa ser preenchido." },
        notNull: { msg: 'O campo Data de nascimento precisa ser preenchido' }
        
      }
    },
    Email: {
      type: DataTypes.STRING,
      validate: {
        isEmail: {
          args: true,
          msg: 'dado do tipo email inválido'
        }
      }
    }
  }, {
    sequelize,
    modelName: 'Cliente',
  });
  return Cliente;
};