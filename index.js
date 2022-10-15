var express = require('express');
var app = express();

app.use(express.static('public'));


app.get('/', function(req,res){
	res.sendFile(__dirname + '/index.html');
});


var server = app.listen(1337, function(){
	var port = server.address().port;

	console.log('Server listening on port', port);
});
