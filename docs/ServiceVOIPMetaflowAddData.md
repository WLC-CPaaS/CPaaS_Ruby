# OpenapiClient::ServiceVOIPMetaflowAddData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binding_digit** | **String** |  | [optional] |
| **numbers** | [**Hash&lt;String, ServiceMetaflowPattern&gt;**](ServiceMetaflowPattern.md) |  | [optional] |
| **patterns** | [**Hash&lt;String, ServiceMetaflowPattern&gt;**](ServiceMetaflowPattern.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVOIPMetaflowAddData.new(
  binding_digit: null,
  numbers: null,
  patterns: null
)
```

