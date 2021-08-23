const express = require('express'),
    path = require('path'),
    morgan = require('morgan'),
    mysql = require('mysql'),
    myConnection = require('express-myconnection');

const app = express();

const especieRoutes = require('./routes/especies.js');
const dbConnection  = require('./config/conn.js');


app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use(morgan('dev'));

app.use(myConnection(mysql, dbConnection, 'single'));

app.use(express.urlencoded({extended: false}));

app.use(express.static(path.join(__dirname, 'public')));

app.use('/', especieRoutes);


app.listen(app.get('port'), () => {
    console.log('listeng on port 3000')
});
