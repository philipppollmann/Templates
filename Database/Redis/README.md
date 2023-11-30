````shell
docker build -t redisdbimage .
docker run -d -p 6379:6379 --name redisdb redisdbimage
````