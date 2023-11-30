![](https://webimages.mongodb.com/_com_assets/cms/kuzt9r42or1fxvlq2-Meta_Generic.png)
```shell
docker build -t mongodb-image .
docker run -d -p 27017:27017 --name mongodb-container mongodb-image
```
