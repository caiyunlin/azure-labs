var http = require('http');

var port = process.env.PORT || 8080;

console.log("Http server is running on port " + port + " ...");

http.createServer(function (req, res) {

  if (req.url == '/headers') {
    res.write(JSON.stringify(req.headers, null, 2));
  } 
  else if (req.url == '/env') {
    res.write(JSON.stringify(process.env, null, 2));
  }
  else if(req.url == '/ip'){
    var ip = req.socket.remoteAddress;
    var result = {
      "CallerIp" : ip
    }
    res.write(JSON.stringify(result, null, 2));
  }
  else if (req.url == '/crashtest'){
    process.exit(1);
  }
  else {
    var now = new Date();
    var html = "<html><head><title>Hello World!</title></head>";
    html += "<body><h1>Hello World!</h1>";
    html += "<br/>Current time is " + now.toISOString();
    html += "<br/><ul>";
    html += "<li><a href=\"headers\">headers</a></li>";
    html += "<li><a href=\"env\">env</a></li>";
    html += "<li><a href=\"ip\">CallerIP</a></li>";
    html += "<li><a href=\"crashtest\">crashtest</a></li>";
    html += "</ul>";
    html += "</body>";
    html += "</html>";
    res.write(html);
  }
  res.end();
}).listen(port); 