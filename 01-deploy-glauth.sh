#!/bin/bash

oc apply -f ./glauth-config.yaml
oc apply -f ./glauth-deployment.yaml
oc expose deployment/glauth-app
# This doesn't really need to be available outside of the cluster
# oc expose svc/glauth-app
