#!/bin/bash

set -e

kubectl delete -f ./http-status-code/deployment.yaml
kubectl delete -f ./http-status-code/service.yaml

kubectl delete -f ./myip/deployment.yaml
kubectl delete -f ./myip/service.yaml

kubectl delete -f ./useragent/deployment.yaml
kubectl delete -f ./useragent/service.yaml

kubectl delete -f ingress.yaml