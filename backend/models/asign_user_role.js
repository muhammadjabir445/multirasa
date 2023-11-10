'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Asign_user_role extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Asign_user_role.init({
    id_role: DataTypes.INTEGER,
    id_user: DataTypes.INTEGER,
    dibuat_oleh: DataTypes.STRING,
    tanggal_buat: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Asign_user_role',
  });
  return Asign_user_role;
};