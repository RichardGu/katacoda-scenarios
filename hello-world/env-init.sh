#!/bin/sh

# Minikube pre-setup
minikube config set WantUpdateNotification false
# TODO: There is a known issue with Katacoda when this is applied. Waiting to move to new version of Minikube.
# minikube config set bootstrapper kubeadm
source <(minikube completion bash)
source <(kubectl completion bash)
source <(helm completion bash)

clear

echo 'Starting Kubernetes using Minikube...'
minikube start

minikube addons enable dashboard
kubectl create -f /opt/kubernetes-dashboard.yaml

minikube addons enable heapster
