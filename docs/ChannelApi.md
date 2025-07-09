# OpenapiClient::ChannelApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_channel_channel_id_get**](ChannelApi.md#v1_account_account_id_channel_channel_id_get) | **GET** /v1/account/{accountID}/channel/{channelID} | Get Channel Details |
| [**v1_account_account_id_channel_channel_id_post**](ChannelApi.md#v1_account_account_id_channel_channel_id_post) | **POST** /v1/account/{accountID}/channel/{channelID} | Associate Action to Channel |
| [**v1_account_account_id_channel_channel_id_put**](ChannelApi.md#v1_account_account_id_channel_channel_id_put) | **PUT** /v1/account/{accountID}/channel/{channelID} | Associate Metaflow to Channel |
| [**v1_account_account_id_channel_get**](ChannelApi.md#v1_account_account_id_channel_get) | **GET** /v1/account/{accountID}/channel | Get Account Channel List |
| [**v1_account_account_id_device_device_id_channel_get**](ChannelApi.md#v1_account_account_id_device_device_id_channel_get) | **GET** /v1/account/{accountID}/device/{deviceID}/channel | Get Device Channel List |
| [**v1_account_account_id_user_user_id_channel_get**](ChannelApi.md#v1_account_account_id_user_user_id_channel_get) | **GET** /v1/account/{accountID}/user/{userID}/channel | Get User Channel List |


## v1_account_account_id_channel_channel_id_get

> <ServiceDocsChannelGetSingle> v1_account_account_id_channel_channel_id_get(account_id, channel_id)

Get Channel Details

Access details about each channel in an account.

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

api_instance = OpenapiClient::ChannelApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
channel_id = 'channel_id_example' # String | Channel ID

begin
  # Get Channel Details
  result = api_instance.v1_account_account_id_channel_channel_id_get(account_id, channel_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_channel_id_get: #{e}"
end
```

#### Using the v1_account_account_id_channel_channel_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsChannelGetSingle>, Integer, Hash)> v1_account_account_id_channel_channel_id_get_with_http_info(account_id, channel_id)

```ruby
begin
  # Get Channel Details
  data, status_code, headers = api_instance.v1_account_account_id_channel_channel_id_get_with_http_info(account_id, channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsChannelGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_channel_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **channel_id** | **String** | Channel ID |  |

### Return type

[**ServiceDocsChannelGetSingle**](ServiceDocsChannelGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_channel_channel_id_post

> <ServiceAPIResponse> v1_account_account_id_channel_channel_id_post(account_id, channel_id, req_body)

Associate Action to Channel

Link an action, such as transfer or hangup to a channel.

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

api_instance = OpenapiClient::ChannelApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
channel_id = 'channel_id_example' # String | Channel ID
req_body = OpenapiClient::ServiceVOIPChannelRunActionData.new({action: 'action_example'}) # ServiceVOIPChannelRunActionData | payload fields

begin
  # Associate Action to Channel
  result = api_instance.v1_account_account_id_channel_channel_id_post(account_id, channel_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_channel_id_post: #{e}"
end
```

#### Using the v1_account_account_id_channel_channel_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_channel_channel_id_post_with_http_info(account_id, channel_id, req_body)

```ruby
begin
  # Associate Action to Channel
  data, status_code, headers = api_instance.v1_account_account_id_channel_channel_id_post_with_http_info(account_id, channel_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_channel_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **channel_id** | **String** | Channel ID |  |
| **req_body** | [**ServiceVOIPChannelRunActionData**](ServiceVOIPChannelRunActionData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_channel_channel_id_put

> <ServiceAPIResponse> v1_account_account_id_channel_channel_id_put(account_id, channel_id, req_body)

Associate Metaflow to Channel

Link a metaflow to an active channel.

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

api_instance = OpenapiClient::ChannelApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
channel_id = 'channel_id_example' # String | Channel ID
req_body = OpenapiClient::ServiceVOIPChannelRunMetaflowData.new({_module: 'transfer'}) # ServiceVOIPChannelRunMetaflowData | payload fields

begin
  # Associate Metaflow to Channel
  result = api_instance.v1_account_account_id_channel_channel_id_put(account_id, channel_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_channel_id_put: #{e}"
end
```

#### Using the v1_account_account_id_channel_channel_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_channel_channel_id_put_with_http_info(account_id, channel_id, req_body)

```ruby
begin
  # Associate Metaflow to Channel
  data, status_code, headers = api_instance.v1_account_account_id_channel_channel_id_put_with_http_info(account_id, channel_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_channel_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **channel_id** | **String** | Channel ID |  |
| **req_body** | [**ServiceVOIPChannelRunMetaflowData**](ServiceVOIPChannelRunMetaflowData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_channel_get

> <ServiceDocsChannelGetAll> v1_account_account_id_channel_get(account_id)

Get Account Channel List

Get a list of active channels for an account.

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

api_instance = OpenapiClient::ChannelApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account Channel List
  result = api_instance.v1_account_account_id_channel_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_get: #{e}"
end
```

#### Using the v1_account_account_id_channel_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsChannelGetAll>, Integer, Hash)> v1_account_account_id_channel_get_with_http_info(account_id)

```ruby
begin
  # Get Account Channel List
  data, status_code, headers = api_instance.v1_account_account_id_channel_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsChannelGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_channel_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_device_device_id_channel_get

> <ServiceDocsChannelGetAll> v1_account_account_id_device_device_id_channel_get(account_id, device_id)

Get Device Channel List

Get the list of active channels for a device.

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

api_instance = OpenapiClient::ChannelApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
device_id = 'device_id_example' # String | Device ID, 32 alpha numeric

begin
  # Get Device Channel List
  result = api_instance.v1_account_account_id_device_device_id_channel_get(account_id, device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_device_device_id_channel_get: #{e}"
end
```

#### Using the v1_account_account_id_device_device_id_channel_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsChannelGetAll>, Integer, Hash)> v1_account_account_id_device_device_id_channel_get_with_http_info(account_id, device_id)

```ruby
begin
  # Get Device Channel List
  data, status_code, headers = api_instance.v1_account_account_id_device_device_id_channel_get_with_http_info(account_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsChannelGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_device_device_id_channel_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **device_id** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_user_user_id_channel_get

> <ServiceDocsChannelGetAll> v1_account_account_id_user_user_id_channel_get(account_id, user_id)

Get User Channel List

Get the list of active channels for a user.

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

api_instance = OpenapiClient::ChannelApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
user_id = 'user_id_example' # String | User ID, 32 alpha numeric

begin
  # Get User Channel List
  result = api_instance.v1_account_account_id_user_user_id_channel_get(account_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_user_user_id_channel_get: #{e}"
end
```

#### Using the v1_account_account_id_user_user_id_channel_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsChannelGetAll>, Integer, Hash)> v1_account_account_id_user_user_id_channel_get_with_http_info(account_id, user_id)

```ruby
begin
  # Get User Channel List
  data, status_code, headers = api_instance.v1_account_account_id_user_user_id_channel_get_with_http_info(account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsChannelGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChannelApi->v1_account_account_id_user_user_id_channel_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **user_id** | **String** | User ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

