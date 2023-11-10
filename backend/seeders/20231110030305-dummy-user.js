'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert('Master_users', [
      {
        nama: 'Margi',
        dibuat_oleh: 'Admin',
        tanggal_buat: new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      // tambahkan data lain jika diperlukan
    ], {});
    await queryInterface.bulkInsert('Master_roles', [
      {
        name_role: 'Admin',
        dibuat_oleh: 'Admin',
        tanggal_buat: new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        name_role: 'Audit',
        dibuat_oleh: 'Admin',
        tanggal_buat: new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      // tambahkan data lain jika diperlukan
    ], {});

    await queryInterface.bulkInsert('Asign_user_roles', [
      {
        id_role: 1,
        id_user: 2,
        tanggal_buat: new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      // tambahkan data lain jika diperlukan
    ], {});

  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  }
};
