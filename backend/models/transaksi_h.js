'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Transaksi_h extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Transaksi_h.hasMany(models.Transaksi_d, {
        foreignKey: 'trx_transaksi_hid',
      });
    }
  }
  Transaksi_h.init({
    no_inpeksi: DataTypes.STRING,
    toko_inpeksi: DataTypes.STRING,
    tanggal_inpeksi: DataTypes.DATE,
    dibuat_oleh: DataTypes.STRING,
    tanggal_dibuat: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Transaksi_h',
  });
  return Transaksi_h;
};