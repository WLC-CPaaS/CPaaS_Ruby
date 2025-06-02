# OpenapiClient::ServiceDocsAccountPhonenumberGetAll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ServicePhonenumberOutput&gt;**](ServicePhonenumberOutput.md) |  | [optional] |
| **next_start_key** | **String** | List Pagination: Used to get the next page of results. Will not exist if this is the last page. | [optional] |
| **page_size** | **Integer** | List Pagination: The number of results returned in this page | [optional] |
| **request_id** | **String** | Unique id for each request | [optional] |
| **start_key** | **String** | List Pagination: Code for paged results | [optional] |
| **status_code** | **Integer** | HTTP response status code | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceDocsAccountPhonenumberGetAll.new(
  data: null,
  next_start_key: null,
  page_size: null,
  request_id: null,
  start_key: null,
  status_code: null
)
```

