#!/bin/bash

# LOGIN TO HUB
echo "----- LOGIN TO HUB ------"
cloudctl login -a https://169.47.234.179:8443 -u admin -p 2sWwSGmG8WRWYUR9hyMr2Ajtfxg3WGAT -n default

kubectl delete -f application_box_clusters.yaml

cloudctl logout
