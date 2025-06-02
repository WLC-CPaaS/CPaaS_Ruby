# OpenapiClient::ServiceCampaignImportOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  | [optional] |
| **created_date** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **message_class** | **String** |  | [optional] |
| **mno_status_list** | [**Array&lt;ServiceCampaignImportOutputMnoStatusListInner&gt;**](ServiceCampaignImportOutputMnoStatusListInner.md) |  | [optional] |
| **secondary_dca_sharing_status** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceCampaignImportOutput.new(
  campaign_id: null,
  created_date: null,
  description: null,
  message_class: null,
  mno_status_list: null,
  secondary_dca_sharing_status: null,
  status: null
)
```

