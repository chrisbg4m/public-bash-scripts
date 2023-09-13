#!/bin/bash

# Script to prompt for ME id and open relevant connection
# Author: Chris Briggs
# Version: 1.0

# Setting ME as variable

read -p "Enter your ME id: " me

# Specify DB connection type

read -p "What type of database connection do you want? k8s/website/megatron: " type

if [ "$type" == "k8s" ]; then

gcloud container clusters get-credentials g4m-discrete-test-cluster-2 --zone europe-west1-c --project g4m-discrete-test

kubectl port-forward --namespace discrete $(kubectl get pod --namespace discrete `--selector="app=mysql8-${me}-app"` --output jsonpath='{.items[0].metadata.name}') 3306:3306

elif [ "$type" == "website" ]; then

gcloud container clusters get-credentials g4m-discrete-test-cluster-2 --zone europe-west1-c --project g4m-discrete-test

kubectl port-forward --namespace managed-enviroments-database-test $(kubectl get pod --namespace managed-enviroments-database-test `--selector="app=${me}-website-db"` --output jsonpath='{.items[0].metadata.name}') 3308:3306

elif [ "$type" == "megatron" ]; then

gcloud container clusters get-credentials g4m-discrete-test-cluster-2 --zone europe-west1-c --project g4m-discrete-test

kubectl port-forward --namespace managed-enviroments-database-test $(kubectl get pod --namespace managed-enviroments-database-test `--selector="app=${me}-megatron-db"` --output jsonpath='{.items[0].metadata.name}') 3309:3306

else

    echo "Invalid option selected"

fi