#!/bin/bash

unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_SESSION_TOKEN
# 1. Set your Admin user credentials (Replace with fresh keys from your AWS Cloud Gateway)
# export AWS_ACCESS_KEY_ID="YOUR_ADMIN_ACCESS_KEY_ID"
# export AWS_SECRET_ACCESS_KEY="YOUR_ADMIN_SECRET_ACCESS_KEY"
export AWS_DEFAULT_REGION="us-east-1"

# 2. Update local kubeconfig to point to EKS cluster
aws eks update-kubeconfig --name cluster --region us-east-1

# 3. Verify cluster connectivity
kubectl get all