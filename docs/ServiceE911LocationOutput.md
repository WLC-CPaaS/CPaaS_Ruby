# OpenapiClient::ServiceE911LocationOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activated_time** | **String** |  | [optional] |
| **address_1** | **String** |  | [optional] |
| **address_2** | **String** |  | [optional] |
| **caller_name** | **String** |  | [optional] |
| **comments** | **String** |  | [optional] |
| **community** | **String** |  | [optional] |
| **customer_order_id** | **String** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **legacy_data** | [**ServiceE911LegacyDataOutput**](ServiceE911LegacyDataOutput.md) |  | [optional] |
| **location_id** | **String** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **plus_four** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **status** | [**ServiceE911StatusOutput**](ServiceE911StatusOutput.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **update_time** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceE911LocationOutput.new(
  activated_time: null,
  address_1: null,
  address_2: null,
  caller_name: null,
  comments: null,
  community: null,
  customer_order_id: null,
  latitude: null,
  legacy_data: null,
  location_id: null,
  longitude: null,
  plus_four: null,
  postal_code: null,
  state: null,
  status: null,
  type: null,
  update_time: null
)
```

