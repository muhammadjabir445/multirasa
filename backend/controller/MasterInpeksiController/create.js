const models = require('../../models/index')
const { Op } = require("sequelize");
const Sequelize = require("../../models/index").sequelize;
let craete = async function (req, res, next) {
    try {

        await Sequelize.transaction(async (t) => {
            let inpeksi = await models.Transaksi_h.create(req.body, { transaction: t })
            if (req.body.detail) {
                let transaksi_d = req.body.detail.map((e) => ({ trx_transaksi_hid: inpeksi.id }))
                await models.Transaksi_d.bulkCreate(transaksi_d, { transaction: t })
            }

        })
        return res.status(200).json({
            message: 'Success submit data'
        })

    } catch (error) {
        return res.status(400).json({
            message: 'Error data',
            error: error.toString()
        })
    }
}


module.exports = craete