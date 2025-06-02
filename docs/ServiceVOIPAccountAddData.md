# OpenapiClient::ServiceVOIPAccountAddData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **caller_id** | [**ModelsVOIPAccountOutputFullCallerid**](ModelsVOIPAccountOutputFullCallerid.md) |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **music_on_hold** | [**ModelsVOIPAccountMusicOnHold**](ModelsVOIPAccountMusicOnHold.md) |  | [optional] |
| **name** | **String** |  |  |
| **realm** | **String** |  | [optional] |
| **timezone** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVOIPAccountAddData.new(
  caller_id: null,
  do_not_disturb: null,
  music_on_hold: null,
  name: null,
  realm: null,
  timezone: null
)
```

