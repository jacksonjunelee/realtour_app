// load express package and create app
var express = require("express")
	, app = express()
	, path = require("path");

//set static assets
app.use("/static", express.static(__dirname + '/static'));
app.use("/build", express.static(__dirname + '/build'));
app.use("/javascript", express.static(__dirname + '/javascript'));

// set homepage
app.get( '/', function( req, res ) {
	res.sendFile( path.join( __dirname + "/landing_page.html" ) );
});

app.listen( 1337 );
console.log( "magical shit happening on 1337" );