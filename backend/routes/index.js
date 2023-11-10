var express = require('express');
var router = express.Router();
const transaksiRouter = require('../controller/TransaksiController/router')
const masterInpeksiRouter = require('../controller/MasterInpeksiController/router')

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});
router.use('/tansaksi', transaksiRouter)
router.use('/master-inpeksi', masterInpeksiRouter)
module.exports = router;
