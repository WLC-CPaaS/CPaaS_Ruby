# OpenapiClient::ServiceVOIPDeviceAddEdit2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_forward** | [**ModelsCallForward**](ModelsCallForward.md) |  | [optional] |
| **caller_id** | [**ServiceVOIPDeviceAddEdit3c**](ServiceVOIPDeviceAddEdit3c.md) |  | [optional] |
| **device_type** | **String** |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **enabled** | **Boolean** | cannot use required, else it has to be true and false is not allowed | [optional] |
| **mac_address** | **String** | dont use mac, it enforces :, which voip does not like | [optional] |
| **media** | [**ServiceVOIPDeviceAddEdit3d**](ServiceVOIPDeviceAddEdit3d.md) |  | [optional] |
| **music_on_hold** | [**ModelsMusicOnHold**](ModelsMusicOnHold.md) |  | [optional] |
| **name** | **String** |  |  |
| **owner_id** | **String** | json omitempty is needed else voip fails on \&quot;\&quot; for owner_id | [optional] |
| **provision** | [**ServiceVOIPDeviceAddEditProvision**](ServiceVOIPDeviceAddEditProvision.md) |  | [optional] |
| **sip** | [**ServiceVOIPDeviceAddEdit3a**](ServiceVOIPDeviceAddEdit3a.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceVOIPDeviceAddEdit2.new(
  call_forward: null,
  caller_id: null,
  device_type: null,
  do_not_disturb: null,
  enabled: null,
  mac_address: null,
  media: null,
  music_on_hold: null,
  name: null,
  owner_id: null,
  provision: null,
  sip: null
)
```

