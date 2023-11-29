````shell
docker build -t mysql-image .
docker run -d -p 3306:3306 --name mySQLdb -e MYSQL_ROOT_PASSWORD=DeinRootPasswort123! -e MYSQL_DATABASE=myDataBase -e MYSQL_USER=Amin -e MYSQL_PASSWORD=SuperSafe123 mysql-image

docker stop mySQLdb
docker rm mySQLdb
````