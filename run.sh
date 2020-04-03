#!/bin/bash

tar -czvf ./msp.tar.gz ./msp

kubectl get configmap
kubectl create configmap one-file-config --from-file=./test/borrar.json
kubectl create configmap dir-config --from-file=./msp.tar.gz # -o yaml

kubectl create -f ./pod.yaml
