# OpenapiClient::CallQueueRecipientApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_loginrecipient_recipient_id_post**](CallQueueRecipientApi.md#v1_account_account_id_loginrecipient_recipient_id_post) | **POST** /v1/account/{accountID}/loginrecipient/{recipientID} | Login as Recipient |
| [**v1_account_account_id_queuerecipient_get**](CallQueueRecipientApi.md#v1_account_account_id_queuerecipient_get) | **GET** /v1/account/{accountID}/queuerecipient | Change Recipient Status |
| [**v1_account_account_id_recipient_recipient_id_status_post**](CallQueueRecipientApi.md#v1_account_account_id_recipient_recipient_id_status_post) | **POST** /v1/account/{accountID}/recipient/{recipientID}/status | Get Recipient List |


## v1_account_account_id_loginrecipient_recipient_id_post

> <ServiceDocsCallQueueRecipientLoginLogoutOutput> v1_account_account_id_loginrecipient_recipient_id_post(account_id, recipient_id, req_body)

Login as Recipient

Agents must log in to receive calls. Depending on their membership, they can log in to one or more queues. (If an agent is a member of more than one queue, they will receive calls from all the queues they are a part of.)

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

api_instance = OpenapiClient::CallQueueRecipientApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
recipient_id = 'recipient_id_example' # String | Recipient ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPCallQueueRecipientLoginLogoutData.new({action: 'login'}) # ServiceVOIPCallQueueRecipientLoginLogoutData | payload fields

begin
  # Login as Recipient
  result = api_instance.v1_account_account_id_loginrecipient_recipient_id_post(account_id, recipient_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueRecipientApi->v1_account_account_id_loginrecipient_recipient_id_post: #{e}"
end
```

#### Using the v1_account_account_id_loginrecipient_recipient_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueRecipientLoginLogoutOutput>, Integer, Hash)> v1_account_account_id_loginrecipient_recipient_id_post_with_http_info(account_id, recipient_id, req_body)

```ruby
begin
  # Login as Recipient
  data, status_code, headers = api_instance.v1_account_account_id_loginrecipient_recipient_id_post_with_http_info(account_id, recipient_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueRecipientLoginLogoutOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueRecipientApi->v1_account_account_id_loginrecipient_recipient_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **recipient_id** | **String** | Recipient ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPCallQueueRecipientLoginLogoutData**](ServiceVOIPCallQueueRecipientLoginLogoutData.md) | payload fields |  |

### Return type

[**ServiceDocsCallQueueRecipientLoginLogoutOutput**](ServiceDocsCallQueueRecipientLoginLogoutOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_queuerecipient_get

> <ServiceDocsGetQueueRecipients> v1_account_account_id_queuerecipient_get(account_id)

Change Recipient Status

Get a list of all recipients in an account.

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

api_instance = OpenapiClient::CallQueueRecipientApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Change Recipient Status
  result = api_instance.v1_account_account_id_queuerecipient_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueRecipientApi->v1_account_account_id_queuerecipient_get: #{e}"
end
```

#### Using the v1_account_account_id_queuerecipient_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsGetQueueRecipients>, Integer, Hash)> v1_account_account_id_queuerecipient_get_with_http_info(account_id)

```ruby
begin
  # Change Recipient Status
  data, status_code, headers = api_instance.v1_account_account_id_queuerecipient_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsGetQueueRecipients>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueRecipientApi->v1_account_account_id_queuerecipient_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsGetQueueRecipients**](ServiceDocsGetQueueRecipients.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_recipient_recipient_id_status_post

> <ServiceAPIResponse> v1_account_account_id_recipient_recipient_id_status_post(account_id, recipient_id, req_body)

Get Recipient List

Change the status of a recipient to ready, away, etc.

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

api_instance = OpenapiClient::CallQueueRecipientApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
recipient_id = 'recipient_id_example' # String | Recipient ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPCallQueueRecipientStatusData.new({status: 'ready'}) # ServiceVOIPCallQueueRecipientStatusData | payload fields

begin
  # Get Recipient List
  result = api_instance.v1_account_account_id_recipient_recipient_id_status_post(account_id, recipient_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueRecipientApi->v1_account_account_id_recipient_recipient_id_status_post: #{e}"
end
```

#### Using the v1_account_account_id_recipient_recipient_id_status_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_recipient_recipient_id_status_post_with_http_info(account_id, recipient_id, req_body)

```ruby
begin
  # Get Recipient List
  data, status_code, headers = api_instance.v1_account_account_id_recipient_recipient_id_status_post_with_http_info(account_id, recipient_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueRecipientApi->v1_account_account_id_recipient_recipient_id_status_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **recipient_id** | **String** | Recipient ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPCallQueueRecipientStatusData**](ServiceVOIPCallQueueRecipientStatusData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

