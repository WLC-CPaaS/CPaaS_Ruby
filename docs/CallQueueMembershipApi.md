# OpenapiClient::CallQueueMembershipApi

All URIs are relative to *http://api.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_queuemembership_post**](CallQueueMembershipApi.md#v1_account_account_id_queuemembership_post) | **POST** /v1/account/{accountID}/queuemembership | Grant Queue Membership to User |
| [**v1_account_account_id_queuemembership_recipient_id_disable_post**](CallQueueMembershipApi.md#v1_account_account_id_queuemembership_recipient_id_disable_post) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/disable | Disable Queue Membership |
| [**v1_account_account_id_queuemembership_recipient_id_enable_post**](CallQueueMembershipApi.md#v1_account_account_id_queuemembership_recipient_id_enable_post) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/enable | Enable Queue Membership |


## v1_account_account_id_queuemembership_post

> <ServiceDocsCallQueueMemberGetSingle> v1_account_account_id_queuemembership_post(account_id, req_body)

Grant Queue Membership to User

Allow users to create queue memberships for recipients.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::CallQueueMembershipApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPQueueMembershipAddData.new({recipient_id: 'recipient_id_example'}) # ServiceVOIPQueueMembershipAddData | payload fields

begin
  # Grant Queue Membership to User
  result = api_instance.v1_account_account_id_queuemembership_post(account_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueMembershipApi->v1_account_account_id_queuemembership_post: #{e}"
end
```

#### Using the v1_account_account_id_queuemembership_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueMemberGetSingle>, Integer, Hash)> v1_account_account_id_queuemembership_post_with_http_info(account_id, req_body)

```ruby
begin
  # Grant Queue Membership to User
  data, status_code, headers = api_instance.v1_account_account_id_queuemembership_post_with_http_info(account_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueMemberGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueMembershipApi->v1_account_account_id_queuemembership_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPQueueMembershipAddData**](ServiceVOIPQueueMembershipAddData.md) | payload fields |  |

### Return type

[**ServiceDocsCallQueueMemberGetSingle**](ServiceDocsCallQueueMemberGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_queuemembership_recipient_id_disable_post

> <ServiceAPIResponse> v1_account_account_id_queuemembership_recipient_id_disable_post(account_id, recipient_id)

Disable Queue Membership

Deactivate queue membership for a recipient.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::CallQueueMembershipApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
recipient_id = 'recipient_id_example' # String | Recipient ID, 32 alpha numeric

begin
  # Disable Queue Membership
  result = api_instance.v1_account_account_id_queuemembership_recipient_id_disable_post(account_id, recipient_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueMembershipApi->v1_account_account_id_queuemembership_recipient_id_disable_post: #{e}"
end
```

#### Using the v1_account_account_id_queuemembership_recipient_id_disable_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_queuemembership_recipient_id_disable_post_with_http_info(account_id, recipient_id)

```ruby
begin
  # Disable Queue Membership
  data, status_code, headers = api_instance.v1_account_account_id_queuemembership_recipient_id_disable_post_with_http_info(account_id, recipient_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueMembershipApi->v1_account_account_id_queuemembership_recipient_id_disable_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **recipient_id** | **String** | Recipient ID, 32 alpha numeric |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_queuemembership_recipient_id_enable_post

> <ServiceAPIResponse> v1_account_account_id_queuemembership_recipient_id_enable_post(account_id, recipient_id, req_body)

Enable Queue Membership

Activate queue membership for a recipient.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::CallQueueMembershipApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
recipient_id = 'recipient_id_example' # String | Recipient ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPCallQueueEnableMembershipData.new({accept_charges: false}) # ServiceVOIPCallQueueEnableMembershipData | payload fields

begin
  # Enable Queue Membership
  result = api_instance.v1_account_account_id_queuemembership_recipient_id_enable_post(account_id, recipient_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueMembershipApi->v1_account_account_id_queuemembership_recipient_id_enable_post: #{e}"
end
```

#### Using the v1_account_account_id_queuemembership_recipient_id_enable_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_queuemembership_recipient_id_enable_post_with_http_info(account_id, recipient_id, req_body)

```ruby
begin
  # Enable Queue Membership
  data, status_code, headers = api_instance.v1_account_account_id_queuemembership_recipient_id_enable_post_with_http_info(account_id, recipient_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueMembershipApi->v1_account_account_id_queuemembership_recipient_id_enable_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **recipient_id** | **String** | Recipient ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPCallQueueEnableMembershipData**](ServiceVOIPCallQueueEnableMembershipData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

