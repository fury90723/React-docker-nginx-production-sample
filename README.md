# docker-react-nginx-prodbuild-sample

## A simple production build for client server rendering microservice with create-react-app, docker, nginx



### build an image from the Dockerfile (or get the default one)

```
docker build -t frontend-service .
```

### fire the docker-compose (-d runs the container on background)

```
docker-compose up -d
```

### check that nginx is fine and everything works

```
go to localhost:3000
```
