# dotnet-blazor-base
[![Build Status](https://beckshome.visualstudio.com/dotnet-blazor-base/_apis/build/status/thbst16.dotnet-blazor-base?branchName=main)](https://beckshome.visualstudio.com/dotnet-blazor-base/_build/latest?definitionId=12&branchName=main)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/thbst16/dotnet-blazor-base?logo=docker)

This is the base MudBlazor server-rendered project from which all other beckshome blazor projects are derived. This project includes a basic MudBlazor application generated using MudBlazor.Templates. The application is dockerized and deployed onto Azure Container Apps using Azure DevOps. 

# Notional Architecture
The key focus of this project, beyond the standard MudBlazor application, is the dockerizing process and deployment of the dockerized application to Azure Container Apps using Azure DevOps. The figure below represents these critical steps, highlighting the artifacts in this project responsible for each of these key activities.

![Blazor Deployment](https://s3.amazonaws.com/s3.beckshome.com/20240913-blazor-deployment.jpeg)

# Running the Application
Ther are several ways to run the application. It is available [directly online](https://dotnet-blazor-base.calmmushroom-9daa5362.eastus.azurecontainerapps.io/). Alternately, you can build and run the docker instance locally or run the docker instance from the DockerHub repo. To build and run the Docker instance locally: 

```console
docker build -t blazor-base -f Dockerfile .
docker run -d -p 5001:80 blazor-base
```

To run directly from DockerHub:

```console
docker run -d -p 5001:80 thbst16/blazor-base
```

Either way, to kill the container when you're done:

```console
docker ps
docker kill CONTAINER_NAME
```

# Motivation and Credits
* [.NET on Azure Container Apps Overview](https://learn.microsoft.com/en-us/azure/container-apps/dotnet-overview)
* [Continuous Deployment to Azure Container Apps with Azure DevOps](https://rios.engineer/continuous-deployment-to-azure-container-apps-with-azure-devops/)
* [Dockerizing an ASP.NET Core Web API](https://levelup.gitconnected.com/dockerizing-an-asp-net-core-web-api-a-step-by-step-guide-9af98fadd189)
* [MudBlazor Installation and Templates](https://mudblazor.com/getting-started/installation#using-templates)