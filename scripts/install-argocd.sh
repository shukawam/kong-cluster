#! /bin/bash

# Add Helm chart repository for ArgoCD
helm repo add argo https://argoproj.github.io/argo-helm

# install ArgoCD using Helm
helm install argocd argo/argo-cd -n argocd --create-namespace
