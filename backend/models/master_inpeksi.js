'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class master_inpeksi extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  master_inpeksi.init({
    nama_inpeksi: DataTypes.STRING,
    kategori_id: DataTypes.INTEGER,
    nilai: DataTypes.DOUBLE
  }, {
    sequelize,
    modelName: 'master_inpeksi',
  });
  return master_inpeksi;
};