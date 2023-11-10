'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */
    await queryInterface.bulkInsert('Kategori_inpeksis', [
      {
        name: 'Product Quality',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        name: 'Store Look',
        createdAt: new Date(),
        updatedAt: new Date(),
      },
    ], {});

    await queryInterface.bulkInsert('master_inpeksis', [
      {
        nama_inpeksi: 'Rasa Beef Soup',
        kategori_id: 1,
        nilai: 2,
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nama_inpeksi: 'Kualitas Yakiniku ( Tidak belang, Tidak Pucat, Tidak Gosong, Etc  )',
        kategori_id: 1,
        nilai: 2,
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nama_inpeksi: 'Queue Line ( Bersih, Kaki searah dan penempatan materi diatasnya, Etc )',
        kategori_id: 2,
        nilai: 2,
        createdAt: new Date(),
        updatedAt: new Date(),
      },

      {
        nama_inpeksi: 'Kondisi Marketing Promo ( Menuboard, A3, A4, Header, Kupingan dll ) dalam kondisi dan penempatan yang seharusnya',
        kategori_id: 2,
        nilai: 2,
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nama_inpeksi: 'Pest Control ( Tidak ada gangguan serangga & hama di area Store )',
        kategori_id: 2,
        nilai: 2,
        createdAt: new Date(),
        updatedAt: new Date(),
      },

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
