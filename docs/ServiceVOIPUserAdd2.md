# OpenapiClient::ServiceVOIPUserAdd2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_forward** | [**ModelsCallForward**](ModelsCallForward.md) |  | [optional] |
| **call_recording** | [**ModelsCallRecordingSettings**](ModelsCallRecordingSettings.md) |  | [optional] |
| **caller_id** | [**ModelsUserOutputFullCallerid**](ModelsUserOutputFullCallerid.md) |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **email** | **String** |  |  |
| **enabled** | **Boolean** |  | [optional] |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **music_on_hold** | [**ModelsMusicOnHold**](ModelsMusicOnHold.md) |  | [optional] |
| **presence_id** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **verified** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVOIPUserAdd2.new(
  call_forward: null,
  call_recording: null,
  caller_id: null,
  do_not_disturb: null,
  email: null,
  enabled: null,
  first_name: null,
  last_name: null,
  music_on_hold: null,
  presence_id: null,
  timezone: null,
  verified: null
)
```

