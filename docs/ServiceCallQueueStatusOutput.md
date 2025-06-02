# OpenapiClient::ServiceCallQueueStatusOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_recipient_count** | **Integer** |  | [optional] |
| **available_recipient_count** | **Integer** |  | [optional] |
| **node** | **String** |  | [optional] |
| **stats** | [**ServiceCallQueueStatusStats**](ServiceCallQueueStatusStats.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCallQueueStatusOutput.new(
  active_recipient_count: null,
  available_recipient_count: null,
  node: null,
  stats: null
)
```

