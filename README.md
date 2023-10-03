# dotnet-blazor-base
[![Build Status](https://beckshome.visualstudio.com/dotnet-blazor-base/_apis/build/status/thbst16.dotnet-blazor-base?branchName=main)](https://beckshome.visualstudio.com/dotnet-blazor-base/_build/latest?definitionId=12&branchName=main)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/thbst16/dotnet-blazor-base?logo=docker)

This is the base MudBlazor server-rendered project from which all other beckshome blazor projects are derived. This project includes a basic MudBlazor application generated using MudBlazor.Templates. The application is dockerized and deployed onto Azure Container Apps using Azure DevOps. 

* docker build -t blazor-base -f Dockerfile .
* docker run -d -p 5001:80 blazor-base
* docker ps
* docker kill CONTAINER_NAME

https://dotnet-blazor-base.blueforest-70ee7978.northcentralus.azurecontainerapps.io/

# Motivation and Credits
* [Continuous Deployment to Azure Container Apps with Azure DevOps](https://rios.engineer/continuous-deployment-to-azure-container-apps-with-azure-devops/)
* [Dockerizing an ASP.NET Core Web API](https://levelup.gitconnected.com/dockerizing-an-asp-net-core-web-api-a-step-by-step-guide-9af98fadd189)
* [MudBlazor Installation and Templates](https://mudblazor.com/getting-started/installation#using-templates)