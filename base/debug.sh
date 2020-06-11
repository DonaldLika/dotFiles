#!/bin/bash

SERVICENAME=$1

if [[ "$SERVICENAME" == "" ]]; then
    echo "
Kubernetes helper for port forwarding
USAGE:
    $(debug myservice 8080)
DESCRIPTION:

ARGUMENTS:
    1st The service name you want to debug
         Ex: myservice
    2nd The port you want to forward
         8080
"
    exit 1
fi

PORT=8000
if [ "$2" ]; then
    PORT=$2
fi

POD_ID=$(kubectl get pods --selector=app=${SERVICENAME} --no-headers=true | sed 's/\(\w*\) .*/\1/' | tr -d '\n')

kubectl port-forward $POD_ID $PORT:$PORT
