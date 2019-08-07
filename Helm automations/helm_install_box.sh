#!/bin/bash

cloudctl login -a https://10.0.42.112:8443 -u admin -p ibm@att -n default

helm install inference-repo/boxinference --tls --name box-att-deployment

cloudctl logout
