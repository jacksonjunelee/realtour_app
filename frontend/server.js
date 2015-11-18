// load express package and create app
var express = require("express")
		,app = express()
		,path = require("path");

// set homepage
app.get( '/', function( req, res ) {
	res.sendFile( path.join( __dirname + "/landingpage.html" ) );
});

app.listen( 1337 );
console.log( "magical shit happening on 1337" );