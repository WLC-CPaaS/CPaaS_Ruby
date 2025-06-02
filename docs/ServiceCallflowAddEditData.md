# OpenapiClient::ServiceCallflowAddEditData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **featurecode** | [**ServiceFeatureCode**](ServiceFeatureCode.md) |  | [optional] |
| **flow** | [**ServiceCallflowAddEditFlowData**](ServiceCallflowAddEditFlowData.md) |  |  |
| **name** | **String** |  | [optional] |
| **numbers** | **Array&lt;String&gt;** |  |  |
| **patterns** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCallflowAddEditData.new(
  featurecode: null,
  flow: null,
  name: null,
  numbers: null,
  patterns: null
)
```

