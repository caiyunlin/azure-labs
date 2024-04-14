# Flask App

## Local Test

- Navigate to current folder, execute following command
```bash
docker build -t cylin2000/flask-app .
docker run -p 5000:5000 docker.io/cylin2000/flask-app
```

- Test from browser 
  - http://127.0.0.1:5000 display home page
  - http://127.0.0.1:5000/headers display the request headers


## Push to Remote
```bash
docker push cylin2000/flask-app
```