const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => { // req = making request, res = getting response
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, avatar, Name, Logo, JobTitle FROM tbl_card";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        //console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { people: result }); // home = handing back data that comes through
    })
})
// localhost:3000/anything
router.get('/:id', (req, res) => { // colon is a dynamic placeholder, what you're passing through will come after
    console.log('hit a dynamic route');
    console.log(req.params.id);
   
    let query = `SELECT * FROM tbl_bio WHERE profID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        //res.render('home', { people: result }); // home = handing back data that comes through
    })
}) 

module.exports = router;