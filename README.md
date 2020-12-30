# About this image

The `summitelectricsupply/mydumper:latest` tag will always point to the latest stable release, but
may not necessarily reflect the latest release of [`mydumper`](https://github.com/maxbube/mydumper).

# How to use this image

## `mydumper`

```
docker volume create mydumper-data

docker run --rm -it -v mydumper-data:/svc summitelectricsupply/mydumper:latest mydumper -h host -u user -p password -B database -o /svc
```

## `myloader`

```
docker run --rm -it -v mydumper-data:/svc summitelectricsupply/mydumper:latest myloader -h host -u user -p password -B database -d /svc
```

# How it's made

A `deb` package is pulled from the `mydumper` github and is installed within the image with all the
necessary packages.

# License

This image follows the same license as `mydumper`, which is GNU General Public License v3.0.
