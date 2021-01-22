# Convert an application from a monolith architecture to a microservices architecture

## The goal accomplished with this project is

- Refactor an existing monolith application to microservices.

- Set up each microservice to be run in its own Docker Container.

- Set up a CI/CD pipeline using Travis CI to deploy the contianers to AWS EKS.

## Getting Started

The application is split into four directories - frontend, backend /user and /feed services, and the reverse proxy.

To begin,

### Docker

- In the root directory, run "npm install" to install all dependencies.

- Go to AWS and Create an S3 bucket and a PostgresSQL database.

- Create a Docker image for each service (/users-api, /feed-api, udagram-frontend and reverse proxy). The docker image for reverse proxy is locatied in the "deployment" directory.

- Push each docker image to a repository in Docker Hub.

- While in the "deployment/docker" directory, run `docker-compose up` to spin up all the docker containers concurrently.

### Kubernetes

- Set up an AWS EKS Cluster.

- Create pods for each docker container with the deployment and service yaml files. Use the command `kubectl apply -f [filename]`.

- Create an env-configmap.yml file to hold the environment variables. Also, create an aws-secret.yml file to hold your aws secret which has been encoded to base64. Add these files to .gitignore.

- Run these commands which link the secret files to Kubernetes `kubectl apply -f aws-secret.yml` and `kubectl apply -f env-configmap.yml`.

- Run the command `kubectl get pods` to see the kubernetes pods which contain the docker containers.

- Set up an account for Travis CI, link your project repository on Github with Travis CI. Configure your Dockerhub Username and Password as environment varibles in Travis CI.
