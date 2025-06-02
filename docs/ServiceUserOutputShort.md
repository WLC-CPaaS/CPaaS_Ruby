# OpenapiClient::ServiceUserOutputShort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_recording** | [**ModelsCallRecordingSettings**](ModelsCallRecordingSettings.md) |  | [optional] |
| **do_not_disturb** | [**ModelsVOIPSharedDoNotDisturb**](ModelsVOIPSharedDoNotDisturb.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **features** | **Array&lt;String&gt;** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **flags** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **presence_id** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceUserOutputShort.new(
  call_recording: null,
  do_not_disturb: null,
  email: null,
  enabled: null,
  features: null,
  first_name: null,
  flags: null,
  id: null,
  last_name: null,
  presence_id: null
)
```

