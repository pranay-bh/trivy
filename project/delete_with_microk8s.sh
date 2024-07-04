#!/bin/bash

KUBECTL="microk8s.kubectl"

microk8s.helm3 uninstall hpcsa -n hpcsa  || true
microk8s.kubectl delete ns hpcsa  || true
echo  "\n\n\n\n🚀 hpcsa Namespace was deleted!" 
