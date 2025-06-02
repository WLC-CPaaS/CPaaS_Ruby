# OpenapiClient::ServiceVOIPVoicemailAddEditData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mailbox** | **String** |  |  |
| **media** | [**ServiceVoicemailMedia**](ServiceVoicemailMedia.md) |  | [optional] |
| **media_extension** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **owner_id** | **String** |  | [optional] |
| **pin** | **String** |  | [optional] |
| **require_pin** | **Boolean** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVOIPVoicemailAddEditData.new(
  mailbox: null,
  media: null,
  media_extension: null,
  name: null,
  owner_id: null,
  pin: null,
  require_pin: null,
  timezone: null
)
```

