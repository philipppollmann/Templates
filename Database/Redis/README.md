````shell
docker build -t redisDBImage .
docker run -d -p 6379:6379 --name redisDB redisDBImage
````