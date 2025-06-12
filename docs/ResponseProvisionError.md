# OpenapiClient::ResponseProvisionError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **Integer** | Error Code | [optional] |
| **errors** | **Array&lt;Object&gt;** | Error details | [optional] |
| **message** | **String** | Error Message | [optional] |
| **request_id** | **String** | Request ID | [optional] |
| **status_code** | **Integer** | HTTP response status code | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponseProvisionError.new(
  error_code: null,
  errors: null,
  message: null,
  request_id: null,
  status_code: null
)
```

