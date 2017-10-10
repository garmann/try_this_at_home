#!/bin/bash

set -e

kubectl apply -f ./http-status-code/deployment.yaml
kubectl apply -f ./http-status-code/service.yaml

kubectl apply -f ./myip/deployment.yaml
kubectl apply -f ./myip/service.yaml

kubectl apply -f ./useragent/deployment.yaml
kubectl apply -f ./useragent/service.yaml

kubectl apply -f ingress.yaml