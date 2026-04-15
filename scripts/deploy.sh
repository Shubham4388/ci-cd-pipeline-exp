#!/bin/bash

# Deploy Dev
/usr/local/bin/docker rm -f dev-container || true
/usr/local/bin/docker run -d -p 8080:80 --name dev-container ci-cd-app

# Deploy Prod
/usr/local/bin/docker rm -f prod-container || true
/usr/local/bin/docker run -d -p 9090:80 --name prod-container ci-cd-app

echo "Deployment completed"