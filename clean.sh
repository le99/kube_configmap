#!/bin/bash

kubectl delete -f ./pod.yaml
kubectl delete configmap dir-config
kubectl delete configmap one-file-config

rm ./msp.tar.gz
