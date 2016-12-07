# docker-quagga

The Alpine based Docker image for Quagga(http://www.nongnu.org/quagga/)


## Docker Pull Command

Download from [Docker Hub](https://hub.docker.com/)

`$ docker pull iwaseyusuke/quagga`

## Docker Run Command

```
$ docker run -it --rm --privileged iwaseyusuke/quagga
```

## Docker Compose

If you have installed [Docker Compose](https://docs.docker.com/compose/),
you can run container with:

```
$ wget https://github.com/iwaseyusuke/docker-quagga/raw/master/docker-compose.yml

$ docker-compose run --rm quagga
```
