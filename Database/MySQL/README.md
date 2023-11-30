````shell
docker build -t mysql-image .
docker run -d -p 3306:3306 --name mysql-db mysql-image

docker stop mySQLdb
docker rm mySQLdb
````