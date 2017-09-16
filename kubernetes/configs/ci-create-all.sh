#!/bin/bash

set -e

kubectl create -f ./http-status-code/deployment.yaml
kubectl create -f ./http-status-code/service.yaml

kubectl create -f ./myip/deployment.yaml
kubectl create -f ./myip/service.yaml

kubectl create -f ./useragent/deployment.yaml
kubectl create -f ./useragent/service.yaml

kubectl create -f ingress.yaml