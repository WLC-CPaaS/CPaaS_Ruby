# OpenapiClient::ServiceImpersonateUserOutputFull

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **auth_token** | **String** |  | [optional] |
| **cluster_id** | **String** |  | [optional] |
| **is_master_account** | **Boolean** |  | [optional] |
| **is_reseller** | **Boolean** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **reseller_id** | **String** |  | [optional] |
| **user_info** | [**ServiceImpersonatedUserInfo**](ServiceImpersonatedUserInfo.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceImpersonateUserOutputFull.new(
  account_id: null,
  account_name: null,
  auth_token: null,
  cluster_id: null,
  is_master_account: null,
  is_reseller: null,
  owner_id: null,
  reseller_id: null,
  user_info: null
)
```

