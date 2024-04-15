param baseName string = resourceGroup().name
param location string = resourceGroup().location
param name string = '${baseName}-nsg'

param securityRules resource<'Microsoft.Network/networkSecurityGroups@2023-09-01'>.properties.securityRules

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: name
  location: location
  properties: {
    securityRules: securityRules
  }
}
