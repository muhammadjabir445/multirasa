var express = require('express');
var router = express.Router();
const indexController = require('./index')

router.get('/', indexController)

module.exports = router;
