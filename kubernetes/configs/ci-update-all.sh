#!/bin/bash

set -e

kubectl update -f ./http-status-code/deployment.yaml
kubectl update -f ./http-status-code/service.yaml

kubectl update -f ./myip/deployment.yaml
kubectl update -f ./myip/service.yaml

kubectl update -f ./useragent/deployment.yaml
kubectl update -f ./useragent/service.yaml

kubectl update -f ingress.yaml