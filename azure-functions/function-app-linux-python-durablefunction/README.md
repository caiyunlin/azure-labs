# Azure Durable Functions on Linux with Python

This directory contains a sample template to deploy a Python Durable Function App to Azure running on Linux.

## Overview
The template uses an ARM template to provision the infrastructure and deploys a Python Durable Function.

### Resources Deployed
- **App Service Plan**: A Linux Elastic Premium Plan (EP1), suitable for Durable Functions.
- **Function App**: An Azure Function App configured with the **Python 3.9** runtime.
- **Storage Account**: Required by Azure Functions and Durable Functions execution history.
- **Application Insights**: For monitoring.

### Function Code
The project contains:
- **Client Function**: `DurableFunctionsHttpStart` (HTTP Trigger) to start orchestration.
- **Orchestrator**: `HelloOrchestrator`.
- **Activity**: `Hello`.

## Deploy to Azure

You can deploy this template directly to Azure by clicking the button below:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-linux-python-durablefunction%2Finfra%2Fazuredeploy.json)

## Prerequisites
- An Azure Subscription.

## How to use
1. Click the "Deploy to Azure" button.
2. Fill in the required parameters (Resource Group, Function App Name, etc.).
3. Review and create the deployment.
4. Once deployed, you can trigger the function using the HTTP Client endpoint.
