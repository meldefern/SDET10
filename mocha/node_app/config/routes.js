var express = require('express');
var router = express.Router();

var appController = require('../controllers/appController');
var personalController  = require('../controllers/personalController');

router.route('/')
	.get(appController.helloWorld)

router.route('/melinda')
	.get(personalController.myName)

module.exports = router