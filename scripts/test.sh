#!/bin/bash

docker run -d --name test-container -p 8085:80 ci-cd-app
sleep 3

RESPONSE=$(curl -s http://localhost:8085)

echo "Response: $RESPONSE"

if [[ $RESPONSE == *"CI/CD Demo"* ]]; then
    echo "Test Passed"
else
    echo "Test Failed"
    exit 1
fi

docker rm -f test-container