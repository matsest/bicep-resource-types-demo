# Bicep Resource Derived Types Demo

Testing Bicep Resource Derived Types:

> - [EXPERIMENTAL] Use resource types for parameter validation:
>   - Add a resource<'type@version'> utility type (https://github.com/Azure/bicep/pull/12591)
>   - Allow use of type properties as type expressions (https://github.com/Azure/bicep/pull/13047)

## Prerequisites

- Bicep CLI ([`>0.25.3`](https://github.com/Azure/bicep/releases/tag/v0.25.3))

## Usage

In [main.bicep](main.bicep) we have defined the following parameter:

```bicep
param securityRules resource<'Microsoft.Network/networkSecurityGroups@2023-09-01'>.properties.securityRules
```

Try editing the [main.bicepparam](./main.bicepparam) file and get intellisense when filling out the `securityRules` parameter.