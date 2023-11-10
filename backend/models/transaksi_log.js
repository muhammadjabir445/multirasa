'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Transaksi_log extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Transaksi_log.init({
    log_transaksi_hd: DataTypes.INTEGER,
    log_keterangan: DataTypes.STRING,
    dibuat_oleh: DataTypes.STRING,
    tanggal_buat: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Transaksi_log',
  });
  return Transaksi_log;
};