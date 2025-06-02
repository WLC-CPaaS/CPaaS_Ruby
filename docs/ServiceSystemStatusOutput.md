# OpenapiClient::ServiceSystemStatusOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpaas_services** | [**ServiceSystemStatusCPAASService**](ServiceSystemStatusCPAASService.md) |  | [optional] |
| **messaging_services** | [**ServiceSystemStatusMessagingService**](ServiceSystemStatusMessagingService.md) |  | [optional] |
| **support_services** | [**ServiceSystemStatusSupportService**](ServiceSystemStatusSupportService.md) |  | [optional] |
| **voip_services** | [**ServiceSystemStatusVOIPService**](ServiceSystemStatusVOIPService.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceSystemStatusOutput.new(
  cpaas_services: null,
  messaging_services: null,
  support_services: null,
  voip_services: null
)
```

