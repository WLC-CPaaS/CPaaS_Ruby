# OpenapiClient::ServiceE911LocationURI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activated_time** | **String** |  | [optional] |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **caller_name** | **String** |  | [optional] |
| **comments** | **String** |  | [optional] |
| **community** | **String** |  | [optional] |
| **customer_order_id** | **String** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **legacy_data** | [**ServiceE911LocationURILegacyData**](ServiceE911LocationURILegacyData.md) |  | [optional] |
| **location_id** | **String** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **plus_four** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **status** | [**ServiceE911LocationURIStatus**](ServiceE911LocationURIStatus.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **update_time** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceE911LocationURI.new(
  activated_time: null,
  address1: null,
  address2: null,
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

