# OpenapiClient::ServiceDocsCallQueueGetSingleStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ServiceCallQueueStatusOutput**](ServiceCallQueueStatusOutput.md) |  | [optional] |
| **request_id** | **String** | Unique id for each request | [optional] |
| **status_code** | **Integer** | HTTP response status code | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceDocsCallQueueGetSingleStatus.new(
  data: null,
  request_id: null,
  status_code: null
)
```

