# simple-docker-demo
A simple docker demo for running flask server using Dockerfile or Docker Compose approaches.


## ⚙️ Setting up

```bash
# clone this repository
git clone https://github.com/thakorneyp11/simple-docker-demo.git

# Docker installation
- Windows: https://docs.docker.com/desktop/windows/install/ 
- MacOS: https://docs.docker.com/desktop/mac/install/ 
```


## 1. Docker basic commands
```bash
# install docker
docker --version

# pull the hello-world image
docker pull hello-world

# list the images
docker images

# run the hello-world image
docker run --name app-hello-world hello-world

# list the containers
docker ps

# Stop, start, and restart the Docker container
docker start app-hello-world
docker stop app-hello-world
docker restart app-hello-world
```


## 2. Commands for running Dockerfile and Docker Container
```bash
# Build the Docker image
docker build -t app-image .

# List the Docker images
docker images

# Run the Docker container
docker run -itd --name app-container -p 5000:5000 --volume $PWD:/app app-image

# List the Docker containers
docker ps
docker ps -a

# Stop, start, and restart the Docker container
docker stop app-container
docker start app-container
docker restart app-container

# Execute the bash shell in the Docker container
docker exec -it app-container bash

# Stop and remove the Docker container and image
docker stop app-container
docker rm app-container
docker rmi app-image
```


## 3. Commands for running Docker Compose
```bash
# Build and run the Docker containers
docker-compose up --build -d

# List the Docker containers
docker ps

# Stop the Docker containers
docker-compose down
```


## 4. Commands for interact with Docker Hub
```bash
# Login to Docker Hub
docker login

# Commit the Docker container to a Docker image (optional)
docker commit flask-server thakorneyp11/flask-server:v0.1

# List the Docker images
docker images

# Push the Docker image to Docker Hub
docker push thakorneyp11/flask-server:v0.1

# Pull the Docker image from Docker Hub
docker pull thakorneyp11/flask-server:v0.1
```
