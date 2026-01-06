# Azure App Service on Linux with PHP

This directory contains a sample template to deploy a specific PHP application to Azure App Service running on Linux.

## Overview
The template uses an ARM template to provision the infrastructure and deploys a simple PHP application.

### Resources Deployed
- **App Service Plan**: A Linux App Service Plan (default SKU: S1).
- **Web App**: An Azure App Service configured with the PHP runtime.

### Application Code
The application is a minimal PHP script located in the `app/` folder. It responds with "Hello, World from PHP on Azure App Service!" at the root URL.

## Deploy to Azure

You can deploy this template directly to Azure by clicking the button below:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-linux-php%2Finfra%2Fazuredeploy.json)

## Prerequisites
- An Azure Subscription.

## How to use
1. Click the "Deploy to Azure" button.
2. Fill in the required parameters (Resource Group, Web App Name, etc.).
3. Review and create the deployment.
