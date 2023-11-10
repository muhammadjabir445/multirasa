const models = require('../../models/index')
const { Op } = require("sequelize");
const Sequelize = require("../../models/index").sequelize;
let update = async function (req, res, next) {
    try {

        await Sequelize.transaction(async (t) => {
            let inpeksi = await models.Transaksi_h.update(req.body, { where: { id: req.params.id }, transaction: t })

            await models.Transaksi_d.destroy({
                where: {
                    trx_transaksi_hid: req.params.id
                },
                transaction: t
            })
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


module.exports = update