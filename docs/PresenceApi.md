# OpenapiClient::PresenceApi

All URIs are relative to *http://api.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_presence_extension_put**](PresenceApi.md#v1_account_account_id_presence_extension_put) | **PUT** /v1/account/{accountID}/presence/{extension} | Set/Reset Presence for Extension |
| [**v1_account_account_id_presence_get**](PresenceApi.md#v1_account_account_id_presence_get) | **GET** /v1/account/{accountID}/presence | Get Presence Details |
| [**v1_account_account_id_user_user_id_presence_put**](PresenceApi.md#v1_account_account_id_user_user_id_presence_put) | **PUT** /v1/account/{accountID}/user/{userID}/presence | Set/Reset Presence for User |


## v1_account_account_id_presence_extension_put

> <ServiceAPIResponse> v1_account_account_id_presence_extension_put(account_id, extension, req_body)

Set/Reset Presence for Extension

Set or reset the presence status of an extension.

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

api_instance = OpenapiClient::PresenceApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
extension = 'extension_example' # String | Extension
req_body = OpenapiClient::ServiceVOIPPresenceSetResetEditData.new({action: 'set'}) # ServiceVOIPPresenceSetResetEditData | payload fields

begin
  # Set/Reset Presence for Extension
  result = api_instance.v1_account_account_id_presence_extension_put(account_id, extension, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PresenceApi->v1_account_account_id_presence_extension_put: #{e}"
end
```

#### Using the v1_account_account_id_presence_extension_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_presence_extension_put_with_http_info(account_id, extension, req_body)

```ruby
begin
  # Set/Reset Presence for Extension
  data, status_code, headers = api_instance.v1_account_account_id_presence_extension_put_with_http_info(account_id, extension, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PresenceApi->v1_account_account_id_presence_extension_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **extension** | **String** | Extension |  |
| **req_body** | [**ServiceVOIPPresenceSetResetEditData**](ServiceVOIPPresenceSetResetEditData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_presence_get

> <ServiceDocsPresenceGet> v1_account_account_id_presence_get(account_id)

Get Presence Details

Retrieve details of presence subscriptions in an account.

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

api_instance = OpenapiClient::PresenceApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Presence Details
  result = api_instance.v1_account_account_id_presence_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PresenceApi->v1_account_account_id_presence_get: #{e}"
end
```

#### Using the v1_account_account_id_presence_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsPresenceGet>, Integer, Hash)> v1_account_account_id_presence_get_with_http_info(account_id)

```ruby
begin
  # Get Presence Details
  data, status_code, headers = api_instance.v1_account_account_id_presence_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsPresenceGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PresenceApi->v1_account_account_id_presence_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsPresenceGet**](ServiceDocsPresenceGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_user_user_id_presence_put

> <ServiceAPIResponse> v1_account_account_id_user_user_id_presence_put(account_id, user_id, req_body)

Set/Reset Presence for User

Set or reset the presence status of a user within an account.

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

api_instance = OpenapiClient::PresenceApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
user_id = 'user_id_example' # String | User ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPPresenceSetResetEditData.new({action: 'set'}) # ServiceVOIPPresenceSetResetEditData | payload fields

begin
  # Set/Reset Presence for User
  result = api_instance.v1_account_account_id_user_user_id_presence_put(account_id, user_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PresenceApi->v1_account_account_id_user_user_id_presence_put: #{e}"
end
```

#### Using the v1_account_account_id_user_user_id_presence_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_user_user_id_presence_put_with_http_info(account_id, user_id, req_body)

```ruby
begin
  # Set/Reset Presence for User
  data, status_code, headers = api_instance.v1_account_account_id_user_user_id_presence_put_with_http_info(account_id, user_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PresenceApi->v1_account_account_id_user_user_id_presence_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **user_id** | **String** | User ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPPresenceSetResetEditData**](ServiceVOIPPresenceSetResetEditData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

