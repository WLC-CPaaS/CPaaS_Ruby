# OpenapiClient::ServiceCallRecordingOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** |  | [optional] |
| **callee_id_name** | **String** |  | [optional] |
| **callee_id_number** | **String** |  | [optional] |
| **caller_id_name** | **String** |  | [optional] |
| **caller_id_number** | **String** |  | [optional] |
| **cdr_id** | **String** |  | [optional] |
| **content_type** | **String** |  | [optional] |
| **custom_channel_vars** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **duration** | **Integer** |  | [optional] |
| **duration_ms** | **Integer** |  | [optional] |
| **endpoint_id** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **interaction_id** | **String** |  | [optional] |
| **media_source** | **String** |  | [optional] |
| **media_type** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **origin** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **request** | **String** |  | [optional] |
| **source_type** | **String** |  | [optional] |
| **start** | **Integer** |  | [optional] |
| **to** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCallRecordingOutput.new(
  call_id: null,
  callee_id_name: null,
  callee_id_number: null,
  caller_id_name: null,
  caller_id_number: null,
  cdr_id: null,
  content_type: null,
  custom_channel_vars: null,
  description: null,
  direction: null,
  duration: null,
  duration_ms: null,
  endpoint_id: null,
  from: null,
  id: null,
  interaction_id: null,
  media_source: null,
  media_type: null,
  name: null,
  origin: null,
  owner_id: null,
  request: null,
  source_type: null,
  start: null,
  to: null,
  url: null
)
```

