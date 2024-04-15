using './main.bicep'

param securityRules = [
  {
    name: 'deny-all'
    properties: {
      access: 'Deny'
      direction: 'Outbound'
      priority: 100
      protocol: 'Tcp'
      sourceAddressPrefix: '*'
      destinationAddressPrefix:  '*'
      destinationPortRange: '*'
    }
  }
]


