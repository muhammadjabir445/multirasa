'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Kategori_inpeksi extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Kategori_inpeksi.hasMany(models.master_inpeksi, {
        foreignKey: 'kategori_id',
      });
    }
  }
  Kategori_inpeksi.init({
    name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Kategori_inpeksi',
  });
  return Kategori_inpeksi;
};