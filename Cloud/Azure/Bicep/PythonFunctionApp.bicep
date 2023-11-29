param location string = 'westeurope'
param functionAppName string = 'examplePythonFunctionApp'
param runtimeVersion311 string = 'PYTHON|3.11'
param storageAccountName string = 'pythonFunctionStorageAccount'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource functionApp 'Microsoft.Web/sites@2021-06-01' = {
  name: functionAppName
  location: location
  properties: {
    serverFarmId: '/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Web/serverfarms/<app-service-plan-name>'
    siteConfig: {
      appSettings: [
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: runtimeVersion311
        }
      ]
    }
  }
  dependsOn: [
    storageAccount
  ]
}

output functionAppEndpoint string = functionApp.properties.defaultHostName
