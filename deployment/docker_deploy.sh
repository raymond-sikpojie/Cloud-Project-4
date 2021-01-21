echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push omogbare/udagram-users-api:latest
docker push omogbare/udagram-feed-api:latest
docker push omogbare/udagram-frontend:latest
docker push omogbare/udagram-reverseproxy:latest