# dotnet-blazor-base

The base MudBlazor server-rendered project from which all other beckshome blazor projects are derived. This project includes a basic MudBlazor application generated using MudBlazor.Templates. The application is dockerized and deployed...

* docker build -t blazor-base -f Dockerfile .
* docker run -d -p 5001:80 blazor-base
* docker ps
* docker kill CONTAINER_NAME

# Motivation and Credits
* [MudBlazor Installation and Templates](https://mudblazor.com/getting-started/installation#using-templates)
* [Dockerizing an ASP.NET Core Web API](https://levelup.gitconnected.com/dockerizing-an-asp-net-core-web-api-a-step-by-step-guide-9af98fadd189)