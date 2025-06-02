# OpenapiClient::MenuInputData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media** | [**MenuOutputDetailMedia**](MenuOutputDetailMedia.md) | The media (prompt) parameters | [optional] |
| **name** | **String** | A friendly name for the menu |  |
| **timeout** | **Integer** | The amount of time (in milliseconds) to wait for the caller to begin entering digits | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MenuInputData.new(
  media: null,
  name: null,
  timeout: null
)
```

