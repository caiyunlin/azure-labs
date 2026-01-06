# Azure Functions on Linux with Java

This directory contains a sample template to deploy a Java Function App to Azure running on Linux.

## Overview
The template uses an ARM template to provision the infrastructure and deploys a simple Java HTTP Trigger function.

### Resources Deployed
- **App Service Plan**: A Linux App Service Plan (Basic Tier).
- **Function App**: An Azure Function App configured with the **Java 8** runtime.
- **Storage Account**: Required by Azure Functions.
- **Application Insights**: For monitoring.

### Function Code
The function is a simple HTTP Trigger located in `app/src/main/java/com/function/Function.java`.
- **Trigger**: HTTP (GET, POST)
- **Endpoint**: `/api/HttpExample`

## Deploy to Azure

You can deploy this template directly to Azure by clicking the button below:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-linux-java%2Finfra%2Fazuredeploy.json)

## Prerequisites
- An Azure Subscription.

## How to use
1. Click the "Deploy to Azure" button.
2. Fill in the required parameters (Resource Group, Function App Name, etc.).
3. Review and create the deployment.
4. Once deployed, you can access the function at: `https://<your-app-name>.azurewebsites.net/api/HttpExample?name=Azure`
