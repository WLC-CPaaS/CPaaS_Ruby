# OpenapiClient::ServiceGroupOutputShort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoints** | **Integer** |  | [optional] |
| **features** | **Array&lt;String&gt;** |  | [optional] |
| **flags** | **Array&lt;String&gt;** |  | [optional] |
| **group_endpoints** | [**Hash&lt;String, ServiceEndpoint&gt;**](ServiceEndpoint.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceGroupOutputShort.new(
  endpoints: null,
  features: null,
  flags: null,
  group_endpoints: null,
  id: null,
  name: null
)
```

