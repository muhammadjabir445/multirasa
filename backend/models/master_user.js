'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Master_user extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Master_user.init({
    nama: DataTypes.STRING,
    dibuat_oleh: DataTypes.STRING,
    tanggal_buat: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Master_user',
  });
  return Master_user;
};