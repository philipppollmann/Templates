*```shell
docker build -t mongodb-image .
docker run -d -p 27017:27017 --name mongodb-container mongodb-image
```
