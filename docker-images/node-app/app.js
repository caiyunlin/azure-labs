var http = require('http');

var port = process.env.PORT || 8080;

console.log("Http server is running on port " + port + " ...");

function parseCookies (request) {
  const list = {};
  const cookieHeader = request.headers?.cookie;
  if (!cookieHeader) return list;

  cookieHeader.split(`;`).forEach(function(cookie) {
      let [ name, ...rest] = cookie.split(`=`);
      name = name?.trim();
      if (!name) return;
      const value = rest.join(`=`).trim();
      if (!value) return;
      list[name] = decodeURIComponent(value);
  });
  return list;
}

// function parseQueryString(req){
//   let q=req.url.split('?'),result={};
//   if(q.length>=2){
//       q[1].split('&').forEach((item)=>{
//            try {
//              result[item.split('=')[0]]=item.split('=')[1];
//            } catch (e) {
//              result[item.split('=')[0]]='';
//            }
//       })
//   }
//   return result;
// }


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
  else if(req.url.indexOf('/setcookie') >= 0){

    var reqs = req.url.split('?');
    var cookieStr = "mycookie=test";
    if(reqs.length >= 2){
      cookieStr = reqs[1];
    }

    res.writeHead(200, {
        "Set-Cookie": cookieStr,
        "Content-Type": `text/plain`
    });
    res.write("Cookie set : " + cookieStr);
  }
  else if(req.url == '/getcookie'){
    var cookies = parseCookies(req);
    res.write(JSON.stringify(cookies, null, 2));
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
    html += "<li><a href=\"setcookie?mycookie=test\">setcookie</a></li>";
    html += "<li><a href=\"getcookie\">getcookie</a></li>";
    html += "<li><a href=\"crashtest\">crashtest</a></li>";
    html += "</ul>";
    html += "</body>";
    html += "</html>";
    res.write(html);
  }
  res.end();
}).listen(port); 