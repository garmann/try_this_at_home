#!/bin/bash

set -e

kubectl replace -f ./http-status-code/deployment.yaml
kubectl replace -f ./http-status-code/service.yaml

kubectl replace -f ./myip/deployment.yaml
kubectl replace -f ./myip/service.yaml

kubectl replace -f ./useragent/deployment.yaml
kubectl replace -f ./useragent/service.yaml

kubectl replace -f ingress.yaml