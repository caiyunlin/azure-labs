# WebSocket App

Port = process.env.PORT or 8080

WEBSITE PORT : 8080
WEBSOCKET PORT : 3000


## Local Test
- Navigate to current folder, execute following command
```bash
docker build -t cylin2000/websocket-multiport-app .
docker run -d -p 8080:8080 -p 3000:3000 cylin2000/websocket-multiport-app
```

- Test from browser 
  - http://127.0.0.1:8080 display home page, enter message and hit Send button

## Push to Remote
```bash
docker push cylin2000/websocket-multiport-app
```