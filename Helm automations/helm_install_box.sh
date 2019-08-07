#!/bin/bash

cloudctl login -a https://10.0.42.112:8443 -u admin -p ibm@att -n default

helm delete --purge box-att-deployment --tls

cloudctl logout