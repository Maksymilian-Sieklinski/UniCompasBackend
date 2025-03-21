const mysql = require('mysql2') ;

const pool = mysql.createPool(
    {
        host: 'localhost',
        user: 'maks',
        password: 'Sm00k*2000',
        database: 'test1',
        waitForConnections: true,
        connectionLimit: 10,
        queueLimit: 0
    }
);

module.exports = pool.promise();