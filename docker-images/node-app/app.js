var http = require('http');

var port = process.env.PORT || 8080;

console.log("Http server is running on port " + port + " ...");

http.createServer(function (req, res) {

  if (req.url == '/headers') {
    res.write(JSON.stringify(req.headers, null, 2));
  } else {
    var now = new Date();
    res.write('Hello World! Current time is '+ now.toISOString() + '\n');
  }
  res.end();
}).listen(port); 