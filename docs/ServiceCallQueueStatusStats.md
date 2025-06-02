# OpenapiClient::ServiceCallQueueStatusStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abandoned_sessions** | **Integer** |  | [optional] |
| **active_session_count** | **Integer** |  | [optional] |
| **average_wait** | **Integer** |  | [optional] |
| **estimated_wait** | **Integer** |  | [optional] |
| **longest_wait** | **Integer** |  | [optional] |
| **missed_sessions** | **Integer** |  | [optional] |
| **recipient_count** | **Integer** |  | [optional] |
| **total_sessions** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCallQueueStatusStats.new(
  abandoned_sessions: null,
  active_session_count: null,
  average_wait: null,
  estimated_wait: null,
  longest_wait: null,
  missed_sessions: null,
  recipient_count: null,
  total_sessions: null
)
```

