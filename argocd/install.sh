#! /bin/bash

# Add Helm chart repository for ArgoCD
helm repo add argo https://argoproj.github.io/argo-helm

# Create namespace for ArgoCD
kubectl create namespace argocd

# install ArgoCD using Helm
helm install argocd argo/argo-cd -n argocd
