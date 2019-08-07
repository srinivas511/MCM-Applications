#!/bin/bash

cloudctl login -a https://10.0.42.112:8443 -u admin -p ibm@att -n default

helm delete --purge hardhat-att-deployment --tls

helm install --name box-att-deployment inference-repo/boxinference --tls

cloudctl logout