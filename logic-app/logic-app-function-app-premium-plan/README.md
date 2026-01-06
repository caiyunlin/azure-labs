# Azure Function App on Premium Plan

This directory contains a sample template to deploy an Azure Function App on an **Elastic Premium Plan**.

## Overview
The template uses an ARM template to provision the infrastructure and optionally deploys code from a package URI.

### Resources Deployed
- **App Service Plan**: An Elastic Premium Plan (default: EP1).
- **Function App**: An Azure Function App (Windows or Linux).
- **Storage Account**: Required by Azure Functions.
- **Application Insights**: For monitoring.

## Deploy to Azure

You can deploy this template directly to Azure by clicking the button below:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Flogic-app%2Flogic-app-function-app-premium-plan%2Fazuredeploy.json)

## Prerequisites
- An Azure Subscription.

## How to use
1. Click the "Deploy to Azure" button.
2. Fill in the required parameters:
   - **Function App Name**
   - **Function Plan OS**: Windows or Linux
   - **Package Uri**: URL to a zip file containing function code (required).
3. Review and create the deployment.
