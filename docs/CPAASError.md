# OpenapiClient::CPAASError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **Integer** | Error Code | [optional] |
| **errors** | **Array&lt;Object&gt;** | Error details | [optional] |
| **message** | **String** | Error Message | [optional] |
| **status_code** | **Integer** | HTTP response status code | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CPAASError.new(
  error_code: null,
  errors: null,
  message: null,
  status_code: null
)
```

