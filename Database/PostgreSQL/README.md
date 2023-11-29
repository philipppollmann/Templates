````shell
docker build -t postgresql-image .
docker run -d --name postgresql-container -p 5432:5432 postgresql-image
````