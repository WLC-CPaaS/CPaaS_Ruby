# OpenapiClient::ServiceQueueRecipientOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **recipient** | [**ServiceQueueRecipientOutputRecipient**](ServiceQueueRecipientOutputRecipient.md) |  | [optional] |
| **roles** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceQueueRecipientOutput.new(
  display_name: null,
  id: null,
  name: null,
  recipient: null,
  roles: null
)
```

