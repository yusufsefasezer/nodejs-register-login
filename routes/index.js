var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', function (req, res, next) {

  var sqlQuery = `SELECT * FROM users`;

  db.query(sqlQuery, function (err, results, fields) {

    res.render('index', {
      title: 'Register - Login',
      authorised: req.session.authorised,
      fname: req.session.fname,
      users: results
    });

  });

});

module.exports = router;