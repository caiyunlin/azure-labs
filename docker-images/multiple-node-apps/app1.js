var http = require('http');

var port = process.env.PORT || 8080;

console.log("Http server is running on port " + port + " ...");

http.createServer(function (req, res) {

  var now = new Date();
  var html = "<html><head><title>Hello World!</title></head>";
  html += "<body><h1>Hello World From PORT:" + port+ "</h1>";
  html += "<br/>Current time is " + now.toISOString();
  html += "</body>";
  html += "</html>";
  res.write(html);

  res.end();
}).listen(port); 