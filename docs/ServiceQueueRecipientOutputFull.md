# OpenapiClient::ServiceQueueRecipientOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **recipient** | [**ServiceQueueRecipientOutputFullRecipient**](ServiceQueueRecipientOutputFullRecipient.md) |  | [optional] |
| **roles** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceQueueRecipientOutputFull.new(
  display_name: null,
  id: null,
  name: null,
  recipient: null,
  roles: null
)
```

