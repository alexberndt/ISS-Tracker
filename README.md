# ISS-Tracker

A simple webapp which tracks the [International Space Station](https://en.wikipedia.org/wiki/International_Space_Station) which contains:

- Live GPS location of ISS updated every 2 seconds,
- Names of the astronauts on board,
- Photo-of-the-day from the NASA API,
- Photo gallery updated from NASA API.

## Development

Clone and install dependencies

```bash
git clone https://github.com/alexberndt/iss-tracker.git
cd iss-tracker
yarn install
```

Run local development server

```bash
yarn start
```

## Run with Docker 

The Dockerized app can be run as follows

```bash
export TAG=dev
docker build -t iss-tracker:$TAG .
docker run -it -p 8080:8080 iss-tracker:$TAG
```

Or using `docker-compose.yml` as follows

```bash
docker-compose up --build
```

## Deploy to Docker Hub

```bash
export TAG=dev
docker build -t iss-tracker:$TAG .
docker tag iss-tracker:$TAG lxberndt/iss-tracker:$TAG
```

Login and push to [Docker Hub](https://hub.docker.com/)

```bash
docker login
docker push lxberndt/blog:$TAG
```

## On Server

```bash
docker stop CONTAINER_ID
export TAG=dev
docker pull lxberndt/iss-tracker:$TAG
docker run -d -it --restart unless-stopped -p 8081:8080 lxberndt/iss-tracker:$TAG
```

If bind errors (port used)

```bash
docker container ls
docker rm -f <container-name>
```