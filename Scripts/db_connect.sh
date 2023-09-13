#!/bin/bash

# Script to prompt for ME id and open db connection
# Author: Chris Briggs
# Version: 1.0

read -p "Enter your ME id: " me

gcloud container clusters get-credentials g4m-discrete-test-cluster-2 --zone europe-west1-c --project g4m-discrete-test
kubectl port-forward --namespace managed-enviroments-database-test $(kubectl get pod --namespace managed-enviroments-database-test --selector='app="$me"-website-db' --output jsonpath='{.items[0].metadata.name}') 3308:3306