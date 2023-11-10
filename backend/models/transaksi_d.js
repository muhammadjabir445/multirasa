'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Transaksi_d extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Transaksi_d.init({
    trx_transaksi_hid: DataTypes.INTEGER,
    trx_id_inpeksi: DataTypes.INTEGER,
    trx_point: DataTypes.DOUBLE,
    trx_keterangan_inpeksi: DataTypes.STRING,
    dibuat_oleh: DataTypes.STRING,
    tanggal_buat: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Transaksi_d',
  });
  return Transaksi_d;
};