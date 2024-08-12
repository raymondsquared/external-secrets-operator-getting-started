#!/bin/bash

echo -n $(aws configure get aws_access_key_id) >./.access-key
echo -n $(aws configure get aws_secret_access_key) >./.secret-access-key
kubectl create secret generic awssm-secret --from-file=./.access-key --from-file=./.secret-access-key
