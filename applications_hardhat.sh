#!/bin/bash

HUB_URL=${1:-https://9.20.206.25:8443}

# or extract this from the config.yaml
HUB_CONSOLE_USERNAME=admin
HUB_CONSOLE_PASSWORD=${2:-}

# SPOKE_NAME should be same as HUB_CLUSTER_NAMESPACE
HUB_CLUSTER_NAMESPACE=${3:-mycluster}

# LOGIN TO HUB
echo "----- LOGIN TO HUB ------"
cloudctl login -a $HUB_URL -u $HUB_CONSOLE_USERNAME -p $HUB_CONSOLE_PASSWORD -n default

kubectl apply -f application_hardhat_clusters.yaml

cloudctl logout
