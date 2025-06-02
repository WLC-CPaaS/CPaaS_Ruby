# OpenapiClient::ServiceVoicemailOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **mailbox** | **String** |  | [optional] |
| **media** | [**ServiceVoicemailMedia**](ServiceVoicemailMedia.md) |  | [optional] |
| **media_extension** | **String** |  | [optional] |
| **messages** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **pin** | **String** |  | [optional] |
| **require_pin** | **Boolean** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVoicemailOutputFull.new(
  id: null,
  mailbox: null,
  media: null,
  media_extension: null,
  messages: null,
  name: null,
  owner_id: null,
  pin: null,
  require_pin: null,
  timezone: null
)
```

