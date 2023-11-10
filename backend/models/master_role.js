'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Master_role extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Master_role.init({
    name_role: DataTypes.STRING,
    dibuat_oleh: DataTypes.STRING,
    tanggal_buat: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Master_role',
  });
  return Master_role;
};