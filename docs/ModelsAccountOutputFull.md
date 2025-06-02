# OpenapiClient::ModelsAccountOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **caller_id** | [**ModelsVOIPAccountOutputFullCallerid**](ModelsVOIPAccountOutputFullCallerid.md) |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **music_on_hold** | [**ModelsVOIPAccountMusicOnHold**](ModelsVOIPAccountMusicOnHold.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **realm** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelsAccountOutputFull.new(
  caller_id: null,
  do_not_disturb: null,
  enabled: null,
  id: null,
  music_on_hold: null,
  name: null,
  realm: null,
  timezone: null
)
```

