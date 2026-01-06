# Azure Functions on Windows with PowerShell

This directory contains a sample template to deploy a PowerShell Function App to Azure running on Windows.

## Overview
The template uses an ARM template to provision the infrastructure and deploys a simple PowerShell HTTP Trigger function.

### Resources Deployed
- **App Service Plan**: A Windows Consumption Plan (Y1).
- **Function App**: An Azure Function App configured with the **PowerShell** runtime.
- **Storage Account**: Required by Azure Functions.
- **Application Insights**: For monitoring.

### Function Code
The function is a simple HTTP Trigger located in `app/HttpTrigger1/`.
- **Trigger**: HTTP
- **Endpoint**: `/api/HttpTrigger1`

## Deploy to Azure

You can deploy this template directly to Azure by clicking the button below:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-windows-powershell%2Finfra%2Fazuredeploy.json)

## Prerequisites
- An Azure Subscription.

## How to use
1. Click the "Deploy to Azure" button.
2. Fill in the required parameters (Resource Group, Function App Name, etc.).
3. Review and create the deployment.
4. Once deployed, you can access the function at: `https://<your-app-name>.azurewebsites.net/api/HttpTrigger1?name=Azure`
