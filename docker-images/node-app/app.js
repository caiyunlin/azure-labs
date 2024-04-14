var http = require('http');
var port = process.env.PORT || 8080;

console.log("Http server is running on port " + port + " ...");

http.createServer(function (req, res) {
  if (req.headers) {
    res.write(JSON.stringify(req.headers));
  } else {
    res.write('Hello World!'+Date.now());
  }
  res.end();
}).listen(port); 