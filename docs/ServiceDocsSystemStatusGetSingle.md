# OpenapiClient::ServiceDocsSystemStatusGetSingle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ServiceSystemStatusOutput**](ServiceSystemStatusOutput.md) |  | [optional] |
| **request_id** | **String** | Unique id for each request | [optional] |
| **status_code** | **Integer** | HTTP response status code | [optional] |
| **system_status** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceDocsSystemStatusGetSingle.new(
  data: null,
  request_id: null,
  status_code: null,
  system_status: null
)
```

