# OpenapiClient::ServiceCallflowOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **featurecode** | [**ServiceFeatureCode**](ServiceFeatureCode.md) |  | [optional] |
| **flow** | [**ServiceCallflowAddEditFlowData**](ServiceCallflowAddEditFlowData.md) |  |  |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **numbers** | **Array&lt;String&gt;** |  |  |
| **patterns** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCallflowOutputFull.new(
  featurecode: null,
  flow: null,
  id: null,
  name: null,
  numbers: null,
  patterns: null
)
```

