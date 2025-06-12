# OpenapiClient::MetaflowApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_device_device_id_metaflow_delete**](MetaflowApi.md#v1_account_account_id_device_device_id_metaflow_delete) | **DELETE** /v1/account/{accountID}/device/{deviceID}/metaflow | Delete Device Metaflow |
| [**v1_account_account_id_device_device_id_metaflow_get**](MetaflowApi.md#v1_account_account_id_device_device_id_metaflow_get) | **GET** /v1/account/{accountID}/device/{deviceID}/metaflow | Get Device Metaflow List |
| [**v1_account_account_id_device_device_id_metaflow_post**](MetaflowApi.md#v1_account_account_id_device_device_id_metaflow_post) | **POST** /v1/account/{accountID}/device/{deviceID}/metaflow | Create Device Metaflow |
| [**v1_account_account_id_metaflow_delete**](MetaflowApi.md#v1_account_account_id_metaflow_delete) | **DELETE** /v1/account/{accountID}/metaflow | Delete Account Metaflow |
| [**v1_account_account_id_metaflow_get**](MetaflowApi.md#v1_account_account_id_metaflow_get) | **GET** /v1/account/{accountID}/metaflow | Get Account Metaflow List |
| [**v1_account_account_id_metaflow_post**](MetaflowApi.md#v1_account_account_id_metaflow_post) | **POST** /v1/account/{accountID}/metaflow | Create Account Metaflow |
| [**v1_account_account_id_user_user_id_metaflow_delete**](MetaflowApi.md#v1_account_account_id_user_user_id_metaflow_delete) | **DELETE** /v1/account/{accountID}/user/{userID}/metaflow | Delete User Metaflow |
| [**v1_account_account_id_user_user_id_metaflow_get**](MetaflowApi.md#v1_account_account_id_user_user_id_metaflow_get) | **GET** /v1/account/{accountID}/user/{userID}/metaflow | Get User Metaflow List |
| [**v1_account_account_id_user_user_id_metaflow_post**](MetaflowApi.md#v1_account_account_id_user_user_id_metaflow_post) | **POST** /v1/account/{accountID}/user/{userID}/metaflow | Create User Metaflow |


## v1_account_account_id_device_device_id_metaflow_delete

> <ServiceDocsMetaflowGet> v1_account_account_id_device_device_id_metaflow_delete(account_id, device_id)

Delete Device Metaflow

Delete all metaflows associated with a device.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
device_id = 'device_id_example' # String | Device ID, 32 alpha numeric

begin
  # Delete Device Metaflow
  result = api_instance.v1_account_account_id_device_device_id_metaflow_delete(account_id, device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_device_device_id_metaflow_delete: #{e}"
end
```

#### Using the v1_account_account_id_device_device_id_metaflow_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_device_device_id_metaflow_delete_with_http_info(account_id, device_id)

```ruby
begin
  # Delete Device Metaflow
  data, status_code, headers = api_instance.v1_account_account_id_device_device_id_metaflow_delete_with_http_info(account_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_device_device_id_metaflow_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **device_id** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_device_device_id_metaflow_get

> <ServiceDocsMetaflowGet> v1_account_account_id_device_device_id_metaflow_get(account_id, device_id)

Get Device Metaflow List

Get the list of metaflows for a device.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
device_id = 'device_id_example' # String | Device ID, 32 alpha numeric

begin
  # Get Device Metaflow List
  result = api_instance.v1_account_account_id_device_device_id_metaflow_get(account_id, device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_device_device_id_metaflow_get: #{e}"
end
```

#### Using the v1_account_account_id_device_device_id_metaflow_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_device_device_id_metaflow_get_with_http_info(account_id, device_id)

```ruby
begin
  # Get Device Metaflow List
  data, status_code, headers = api_instance.v1_account_account_id_device_device_id_metaflow_get_with_http_info(account_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_device_device_id_metaflow_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **device_id** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_device_device_id_metaflow_post

> <ServiceDocsMetaflowGet> v1_account_account_id_device_device_id_metaflow_post(account_id, device_id, req_body)

Create Device Metaflow

Create a metaflow or multiple metaflows for a device.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
device_id = 'device_id_example' # String | Device ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPMetaflowAddData.new # ServiceVOIPMetaflowAddData | payload fields

begin
  # Create Device Metaflow
  result = api_instance.v1_account_account_id_device_device_id_metaflow_post(account_id, device_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_device_device_id_metaflow_post: #{e}"
end
```

#### Using the v1_account_account_id_device_device_id_metaflow_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_device_device_id_metaflow_post_with_http_info(account_id, device_id, req_body)

```ruby
begin
  # Create Device Metaflow
  data, status_code, headers = api_instance.v1_account_account_id_device_device_id_metaflow_post_with_http_info(account_id, device_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_device_device_id_metaflow_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **device_id** | **String** | Device ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | payload fields |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_metaflow_delete

> <ServiceDocsMetaflowGet> v1_account_account_id_metaflow_delete(account_id)

Delete Account Metaflow

Remove all metaflows from an account.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Delete Account Metaflow
  result = api_instance.v1_account_account_id_metaflow_delete(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_metaflow_delete: #{e}"
end
```

#### Using the v1_account_account_id_metaflow_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_metaflow_delete_with_http_info(account_id)

```ruby
begin
  # Delete Account Metaflow
  data, status_code, headers = api_instance.v1_account_account_id_metaflow_delete_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_metaflow_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_metaflow_get

> <ServiceDocsMetaflowGet> v1_account_account_id_metaflow_get(account_id)

Get Account Metaflow List

Get an account's metaflow list.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account Metaflow List
  result = api_instance.v1_account_account_id_metaflow_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_metaflow_get: #{e}"
end
```

#### Using the v1_account_account_id_metaflow_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_metaflow_get_with_http_info(account_id)

```ruby
begin
  # Get Account Metaflow List
  data, status_code, headers = api_instance.v1_account_account_id_metaflow_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_metaflow_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_metaflow_post

> <ServiceDocsMetaflowGet> v1_account_account_id_metaflow_post(account_id, metaflow)

Create Account Metaflow

Generate a metaflow for an account.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID
metaflow = OpenapiClient::ServiceVOIPMetaflowAddData.new # ServiceVOIPMetaflowAddData | Metaflow fields

begin
  # Create Account Metaflow
  result = api_instance.v1_account_account_id_metaflow_post(account_id, metaflow)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_metaflow_post: #{e}"
end
```

#### Using the v1_account_account_id_metaflow_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_metaflow_post_with_http_info(account_id, metaflow)

```ruby
begin
  # Create Account Metaflow
  data, status_code, headers = api_instance.v1_account_account_id_metaflow_post_with_http_info(account_id, metaflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_metaflow_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **metaflow** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | Metaflow fields |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_user_user_id_metaflow_delete

> <ServiceDocsMetaflowGet> v1_account_account_id_user_user_id_metaflow_delete(account_id, user_id)

Delete User Metaflow

Delete all metaflows associated with a user.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
user_id = 'user_id_example' # String | user ID, 32 alpha numeric

begin
  # Delete User Metaflow
  result = api_instance.v1_account_account_id_user_user_id_metaflow_delete(account_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_user_user_id_metaflow_delete: #{e}"
end
```

#### Using the v1_account_account_id_user_user_id_metaflow_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_user_user_id_metaflow_delete_with_http_info(account_id, user_id)

```ruby
begin
  # Delete User Metaflow
  data, status_code, headers = api_instance.v1_account_account_id_user_user_id_metaflow_delete_with_http_info(account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_user_user_id_metaflow_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **user_id** | **String** | user ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_user_user_id_metaflow_get

> <ServiceDocsMetaflowGet> v1_account_account_id_user_user_id_metaflow_get(account_id, user_id)

Get User Metaflow List

Get the list of metaflows for a user.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
user_id = 'user_id_example' # String | user ID, 32 alpha numeric

begin
  # Get User Metaflow List
  result = api_instance.v1_account_account_id_user_user_id_metaflow_get(account_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_user_user_id_metaflow_get: #{e}"
end
```

#### Using the v1_account_account_id_user_user_id_metaflow_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_user_user_id_metaflow_get_with_http_info(account_id, user_id)

```ruby
begin
  # Get User Metaflow List
  data, status_code, headers = api_instance.v1_account_account_id_user_user_id_metaflow_get_with_http_info(account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_user_user_id_metaflow_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **user_id** | **String** | user ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_user_user_id_metaflow_post

> <ServiceDocsMetaflowGet> v1_account_account_id_user_user_id_metaflow_post(account_id, user_id, req_body)

Create User Metaflow

Add a metaflow or multiple metaflows for a user in an account.

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

api_instance = OpenapiClient::MetaflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
user_id = 'user_id_example' # String | user ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPMetaflowAddData.new # ServiceVOIPMetaflowAddData | payload fields

begin
  # Create User Metaflow
  result = api_instance.v1_account_account_id_user_user_id_metaflow_post(account_id, user_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_user_user_id_metaflow_post: #{e}"
end
```

#### Using the v1_account_account_id_user_user_id_metaflow_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMetaflowGet>, Integer, Hash)> v1_account_account_id_user_user_id_metaflow_post_with_http_info(account_id, user_id, req_body)

```ruby
begin
  # Create User Metaflow
  data, status_code, headers = api_instance.v1_account_account_id_user_user_id_metaflow_post_with_http_info(account_id, user_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMetaflowGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetaflowApi->v1_account_account_id_user_user_id_metaflow_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **user_id** | **String** | user ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | payload fields |  |

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

