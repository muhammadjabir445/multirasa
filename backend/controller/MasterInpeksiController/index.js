const models = require('../../models/index')
const { Op } = require("sequelize");
const { resourceCollection } = require('./resource')
let index = async function (req, res, next) {

    let data = await models.Kategori_inpeksi.findAndCountAll({
        include: [
            {
                model: models.master_inpeksi
            },

        ],
    })
    let count = data.count
    data = await resourceCollection(data.rows)
    return res.status(200).json({
        data: data,
        count: count
    })
}


module.exports = index

