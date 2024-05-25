const http = require('http');
const WebSocket = require('ws');
const fs = require('fs')

const server = http.createServer();
const wss = new WebSocket.Server({server});

wss.on('connection',(socket)=>{
  console.log("Websocket connection established");
  
  socket.on('message',(msg)=>{
    console.log('Received Message : ' + msg);
    socket.send("Server Received Message : " + msg);
  })

  socket.on('close',()=>{
    console.log("Websocket connection closed");
  })

})

server.on('request',(req,res)=>{
  // load index.html
  fs.readFile('./index.html',(err,data)=>{
    if(err){
      res.writeHead(500);
      res.end('Error loading index.html');
    }else{
      res.writeHead(200);
      res.end(data);
    }
  })
})

server.listen(8080,()=>{
  console.log('Server running on port 8080');
})
