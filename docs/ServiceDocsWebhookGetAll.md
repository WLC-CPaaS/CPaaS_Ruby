# OpenapiClient::ServiceDocsWebhookGetAll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ModelAccountWebhook&gt;**](ModelAccountWebhook.md) |  | [optional] |
| **request_id** | **String** | Unique id for each request | [optional] |
| **status_code** | **Integer** | HTTP response status code | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceDocsWebhookGetAll.new(
  data: null,
  request_id: null,
  status_code: null
)
```

