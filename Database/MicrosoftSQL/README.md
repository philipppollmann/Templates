```shell
docker build -t mssql-image --build-arg SA_PASSWORD=SASuperPassword! --build-arg MSSQL_USER=Admin --build-arg MSSQL_PASSWORD=SuperPassword .

docker run -d -p 1433:1433 --name msSQLdb -e 'SA_PASSWORD=SuperSafe123' -e 'ACCEPT_EULA=Y' mssqlcontainer
```