#!/bin/bash

# Deploy Dev
docker rm -f dev-container || true
docker run -d -p 8080:80 --name dev-container ci-cd-app

# Deploy Prod
docker rm -f prod-container || true
docker run -d -p 9090:80 --name prod-container ci-cd-app

echo "Deployment completed"