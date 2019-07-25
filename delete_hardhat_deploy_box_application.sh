#!/bin/bash

# LOGIN TO HUB
echo "----- LOGIN TO HUB ------"
cloudctl login -a https://169.47.234.179:8443 -u admin -p 2sWwSGmG8WRWYUR9hyMr2Ajtfxg3WGAT -n default

kubectl delete -f application_hardhat_clusters.yaml

echo "wait 30 seconds to delete the applicaton, as the HUB"
sleep 60

kubectl apply -f application_box_clusters.yaml

cloudctl logout
