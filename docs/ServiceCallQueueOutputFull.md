# OpenapiClient::ServiceCallQueueOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_wrapup_time** | **Integer** |  | [optional] |
| **features** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **force_away_on_reject** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **queue_router** | **String** |  | [optional] |
| **queue_type** | **String** |  | [optional] |
| **ring_timeout** | **Integer** |  | [optional] |
| **tick_time** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCallQueueOutputFull.new(
  agent_wrapup_time: null,
  features: null,
  force_away_on_reject: null,
  id: null,
  name: null,
  queue_router: null,
  queue_type: null,
  ring_timeout: null,
  tick_time: null
)
```

