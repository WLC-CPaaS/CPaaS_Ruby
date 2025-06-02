# OpenapiClient::ModelsDeviceOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_forward** | [**ModelsCallForward**](ModelsCallForward.md) |  | [optional] |
| **call_recording** | [**ModelsCallRecordingSettings**](ModelsCallRecordingSettings.md) |  | [optional] |
| **caller_id** | [**ModelsDeviceOutputFullCallerid**](ModelsDeviceOutputFullCallerid.md) |  | [optional] |
| **device_type** | **String** |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **mac_address** | **String** |  | [optional] |
| **media** | [**ModelsDeviceOutputFullMedia**](ModelsDeviceOutputFullMedia.md) |  | [optional] |
| **music_on_hold** | [**ModelsMusicOnHold**](ModelsMusicOnHold.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **provision** | [**ModelsDeviceOutputFullProvision**](ModelsDeviceOutputFullProvision.md) |  | [optional] |
| **sip** | [**ModelsDeviceOutputFullSIP**](ModelsDeviceOutputFullSIP.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelsDeviceOutputFull.new(
  call_forward: null,
  call_recording: null,
  caller_id: null,
  device_type: null,
  do_not_disturb: null,
  enabled: null,
  id: null,
  mac_address: null,
  media: null,
  music_on_hold: null,
  name: null,
  owner_id: null,
  provision: null,
  sip: null
)
```

