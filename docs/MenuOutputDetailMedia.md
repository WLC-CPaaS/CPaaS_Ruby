# OpenapiClient::MenuOutputDetailMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **greeting** | **String** | The ID of a media object that should be used as the menu greeting | [optional] |
| **invalid_media** | **Object** | When the collected digits don&#39;t result in a match or hunt this media can be played | [optional] |
| **transfer_media** | **Object** | When a call is transferred from the menu, either after all retries exhausted or a successful hunt, this media can be played | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MenuOutputDetailMedia.new(
  greeting: null,
  invalid_media: null,
  transfer_media: null
)
```

