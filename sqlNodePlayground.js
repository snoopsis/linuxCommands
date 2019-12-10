// Start Basic Connection and Query With Node to Mysql

const mysql = require('mysql');

// Get the Host from Environment or use default
const host = process.env.DB_HOST || 'localhost';

// Get the User for DB from Environment or use default
const user = process.env.DB_USER || 'root';

// Get the Password for DB from Environment or use default
const password = process.env.DB_PASS || '';

// Get the Database from Environment or use default
const database = process.env.DB_DATABASE || 'twitter_clone';

// Create the connection with required details
const con = mysql.createConnection({
  host, user, password, database,
});

// Query tweets from Database
const query = "SELECT * FROM tweets";
 
// make to connection to the database.
con.connect(function(err) {
  if (err) throw err;

  // if connection is successful
  con.query(query, (err, result, fields) => {
    // if any error while executing above query, throw error
    if (err) throw err;

    // if there is no error, you have the result
    console.log(result);
 });
});

// Insert Single Record
var sql = "INSERT INTO customers (name, address) VALUES ('Company Inc', 'Highway 37')";
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("1 record inserted");
  });

// End Basic Connection and Query With Node to Mysql

//Connect as a Promise

const mysql = require('mysql');

module.exports = async (params) => new Promise(
(resolve, reject) => {
	const connection = mysql.createConnection(params);
  connection.connect(error => {
	  if (error) {
      reject(error);
      return;
    }
    resolve(connection);
  })
});

// Query as Promise

module.exports = async (conn, q, params) => new Promise(
(resolve, reject) => {
  const handler = (error, result) => {
	  if (error) {
      reject(error);
      return;
    }
    resolve(result);
  }
  conn.query(q, params, handler);
});
