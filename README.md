# azure-labs
Azure Labs contains the templates used to create Azure test environment quickly.

## Instructions

1. Click folder enter and it will show the README.md content in the sub-folder
2. Click on "Deploy to Azure" button
3. Update the parameters accordingly 
4. Click on "Review + create" and then "Create" to deploy the related resources

## Convention
1. Each lab inside one resource group, once the lab test is completed, clean up the resource group
2. For conponent name, use prefix + uniqueString , e.g. `[concat('ContainerAppEnv-', uniqueString(resourceGroup().id))]`
3. Provide the Az CLI / PowerShell script to deploy the lab from local

## Templates

### App Service

| Project | Description | Deploy to Azure |
|:---|:---|:---|
| **[App Service Linux Python](app-service/app-service-linux-python)** | App Service on Linux with Python 3.9 (Flask) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-linux-python%2Finfra%2Fazuredeploy.json) |
| **[App Service Linux Node.js](app-service/app-service-linux-node)** | App Service on Linux with Node.js 24 LTS | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-linux-node%2Finfra%2Fazuredeploy.json) |
| **[App Service Linux PHP](app-service/app-service-linux-php)** | App Service on Linux with PHP 8.3 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-linux-php%2Finfra%2Fazuredeploy.json) |
| **[App Service Linux .NET](app-service/app-service-linux-dotnet)** | App Service on Linux with .NET 8 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-linux-dotnet%2Finfra%2Fazuredeploy.json) |
| **[App Service Linux Java](app-service/app-service-linux-java)** | App Service on Linux with Java 17 (Spring Boot) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-linux-java%2Finfra%2Fazuredeploy.json) |
| **[App Service Windows Java](app-service/app-service-windows-java)** | App Service on Windows with Java 17 (Spring Boot) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-windows-java%2Finfra%2Fazuredeploy.json) |
| **[App Service Windows .NET](app-service/app-service-windows-dotnet)** | App Service on Windows with .NET 8 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-windows-dotnet%2Finfra%2Fazuredeploy.json) |
| **[App Service Windows Node.js](app-service/app-service-windows-node)** | App Service on Windows with Node.js 20 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-windows-node%2Finfra%2Fazuredeploy.json) |
| **[App Service Windows PHP](app-service/app-service-windows-php)** | App Service on Windows with PHP 7.4 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fapp-service%2Fapp-service-windows-php%2Finfra%2Fazuredeploy.json) |

### Azure Functions

| Project | Description | Deploy to Azure |
|:---|:---|:---|
| **[Function App Linux Java](azure-functions/function-app-linux-java)** | Function App on Linux with Java 8 (HTTP Trigger) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-linux-java%2Finfra%2Fazuredeploy.json) |
| **[Function App Linux Python](azure-functions/function-app-linux-python)** | Function App on Linux with Python 3.9 (HTTP Trigger) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-linux-python%2Finfra%2Fazuredeploy.json) |
| **[Function App Linux Python (Durable)](azure-functions/function-app-linux-python-durablefunction)** | Durable Function on Linux (EP1) with Python 3.9 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-linux-python-durablefunction%2Finfra%2Fazuredeploy.json) |
| **[Function App Windows PowerShell](azure-functions/function-app-windows-powershell)** | Function App on Windows with PowerShell 7 | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-windows-powershell%2Finfra%2Fazuredeploy.json) |
| **[Function App Windows PHP](azure-functions/function-app-windows-custom-php)** | Function App on Windows with Custom Handler (PHP) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Fazure-functions%2Ffunction-app-windows-custom-php%2Finfra%2Fazuredeploy.json) |

### Logic Apps

| Project | Description | Deploy to Azure |
|:---|:---|:---|
| **[Function Backend for Logic App](logic-app/logic-app-function-app-premium-plan)** | Function App on Elastic Premium Plan (Backend) | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcaiyunlin%2Fazure-labs%2Fmain%2Flogic-app%2Flogic-app-function-app-premium-plan%2Fazuredeploy.json) |

