# OpenapiClient::ServiceChannelOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **answered** | **Boolean** |  | [optional] |
| **authorizing_id** | **String** |  | [optional] |
| **authorizing_type** | **String** |  | [optional] |
| **callflow_id** | **String** |  | [optional] |
| **channel_authorized** | **Boolean** |  | [optional] |
| **custom_application_vars** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **custom_auth_headers** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **custom_channel_vars** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **custom_sip_headers** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **destination** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **elapsed_s** | **Integer** |  | [optional] |
| **from_tag** | **String** |  | [optional] |
| **interaction_id** | **String** |  | [optional] |
| **is_loopback** | **Boolean** |  | [optional] |
| **is_onhold** | **Boolean** |  | [optional] |
| **other_leg** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **presence_id** | **String** |  | [optional] |
| **request** | **String** |  | [optional] |
| **reseller_id** | **String** |  | [optional] |
| **timestamp** | **Integer** |  | [optional] |
| **to_tag** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceChannelOutput.new(
  answered: null,
  authorizing_id: null,
  authorizing_type: null,
  callflow_id: null,
  channel_authorized: null,
  custom_application_vars: null,
  custom_auth_headers: null,
  custom_channel_vars: null,
  custom_sip_headers: null,
  destination: null,
  direction: null,
  elapsed_s: null,
  from_tag: null,
  interaction_id: null,
  is_loopback: null,
  is_onhold: null,
  other_leg: null,
  owner_id: null,
  presence_id: null,
  request: null,
  reseller_id: null,
  timestamp: null,
  to_tag: null,
  username: null,
  uuid: null
)
```

