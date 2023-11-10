'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Transaksi_hs', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      no_inpeksi: {
        type: Sequelize.STRING
      },
      toko_inpeksi: {
        type: Sequelize.STRING
      },
      tanggal_inpeksi: {
        type: Sequelize.DATE
      },
      dibuat_oleh: {
        type: Sequelize.STRING
      },
      tanggal_dibuat: {
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Transaksi_hs');
  }
};