# docker-react-nginx-prodbuild-sample

## A simple production build for client server rendering (frontend microservice).                                            Made with create-react-app(react-router-dom) to deploy a simple production build with nginx on a Docker container.

### build an image from the Dockerfile (or get the default one)

```
docker build -t frontend-service .
```

### fire the container up

```
docker-compose up -d
```

### check that nginx is fine and everything works

```
go to localhost:3000
```
