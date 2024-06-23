# google App 

## Local Test

- Navigate to current folder, execute following command
```bash
docker build -t cylin2000/google-app .
docker run -p 8080:80 docker.io/cylin2000/google-app
```

- Test from browser 
  - http://127.0.0.1:8080 display home page

## Push to Remote
```bash
docker push cylin2000/google-app
```