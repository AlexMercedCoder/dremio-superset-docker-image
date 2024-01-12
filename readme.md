
run the container

```shell
docker run -d -p 8080:8088 --name superset alexmerced/dremio-superset
```

then run
```
docker exec -it superset superset init
```

Use the dockerfile to rebuild this image with a custom secret key and admin account email.

This image is usuable for evaluation and and education.

The URL to connect to Dremio Cloud

```
dremio+flight://data.dremio.cloud:443/?token=<PAT>&UseEncryption=true
```

Make sure the PAT is URL encoded by opening up the browser and using `EncodeURIComponent()` or you can do so from [this website](https://www.urlencoder.org/).