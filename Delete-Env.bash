#!/bin/bash

group="beckshome-container-apps-rg"
location="eastus"
la="beckshome-log-analytics"
env="dotnet-blazor-base-env"
app="dotnet-blazor-base"
image="thbst16/dotnet-blazor-base:latest"

## az containerapp delete -n $app -g $group
## echo
## az containerapp env delete -n $env -g $group
## echo
az group delete --name $group
