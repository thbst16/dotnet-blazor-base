#!/bin/bash

group="beckshome-container-apps-rg"
location="eastus"
la="beckshome-log-analytics"
env="dotnet-blazor-base-env"
app="dotnet-blazor-base"
image="thbst16/dotnet-blazor-base:latest"

az group create --name $group --location $location
echo
## az monitor log-analytics workspace create -g $group -n $la
echo
az containerapp env create -n $env -g $group --location $location
echo
az containerapp create -n $app -g $group --image $image --environment $env --min-replicas 0
echo
az containerapp ingress enable -n $app -g $group --type external --target-port 0 --transport auto