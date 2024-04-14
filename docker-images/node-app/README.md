# Node App

Port = process.env.PORT or 8080

## Local Test
- Navigate to current folder, execute following command
```bash
docker build -t cylin2000/node-app .
docker run -dp 8080:8080 cylin2000/node-app
```

- Test from browser 
  - http://127.0.0.1:8080 display home page
  - http://127.0.0.1:8080/headers display the request headers

## Push to Remote
```bash
docker push cylin2000/node-app
```