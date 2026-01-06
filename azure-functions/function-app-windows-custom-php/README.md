# Azure Functions on Windows with Custom Handler (PHP)

This directory contains a sample template to deploy a PHP Function App to Azure running on Windows using the **Custom Handler** feature.

## Overview
Azure Functions supports "Custom Handlers," allowing you to use any language that supports HTTP primitives. This project demonstrates using **PHP** as a custom handler.

### Resources Deployed
- **App Service Plan**: A Windows Consumption Plan (Y1).
- **Function App**: An Azure Function App configured with the `custom` runtime.
- **Storage Account**: Required by Azure Functions.
- **Application Insights**: For monitoring.

### How it works
- **host.json**: Configures the `httpWorker` to run `phpServer.bat`.
- **phpServer.bat**: Starts the built-in PHP server (`php -S`).
- **functionRouter.php**: Routes incoming function invocations to the appropriate logic.

### Function Code
The project contains two simple HTTP triggered functions:
- `function1`
- `function2`

## Deploy to Azure

You can deploy this template directly to Azure by clicking the button below:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-windows-custom-php%2Finfra%2Fazuredeploy.json)

## Prerequisites
- An Azure Subscription.

## How to use
1. Click the "Deploy to Azure" button.
2. Fill in the required parameters (Resource Group, Function App Name, etc.).
3. Review and create the deployment.
4. Once deployed, you can access the functions at:
   - `https://<your-app-name>.azurewebsites.net/api/function1?name=Azure`
   - `https://<your-app-name>.azurewebsites.net/api/function2`
