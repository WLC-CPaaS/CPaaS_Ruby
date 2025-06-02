# OpenapiClient::ServiceVOIPAccountEditData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **caller_id** | [**ModelsVOIPAccountOutputFullCallerid**](ModelsVOIPAccountOutputFullCallerid.md) |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **music_on_hold** | [**ModelsVOIPAccountMusicOnHold**](ModelsVOIPAccountMusicOnHold.md) |  | [optional] |
| **name** | **String** |  |  |
| **timezone** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVOIPAccountEditData.new(
  caller_id: null,
  do_not_disturb: null,
  enabled: null,
  music_on_hold: null,
  name: null,
  timezone: null
)
```

