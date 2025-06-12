# OpenapiClient::CallflowApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_callflow_callflow_id_delete**](CallflowApi.md#v1_account_account_id_callflow_callflow_id_delete) | **DELETE** /v1/account/{accountID}/callflow/{callflowID} | Delete Call Group |
| [**v1_account_account_id_callflow_callflow_id_get**](CallflowApi.md#v1_account_account_id_callflow_callflow_id_get) | **GET** /v1/account/{accountID}/callflow/{callflowID} | Get Call Group Details |
| [**v1_account_account_id_callflow_callflow_id_put**](CallflowApi.md#v1_account_account_id_callflow_callflow_id_put) | **PUT** /v1/account/{accountID}/callflow/{callflowID} | Update Call Group |
| [**v1_account_account_id_callflow_get**](CallflowApi.md#v1_account_account_id_callflow_get) | **GET** /v1/account/{accountID}/callflow | Get Callflow List |
| [**v1_account_account_id_callflow_post**](CallflowApi.md#v1_account_account_id_callflow_post) | **POST** /v1/account/{accountID}/callflow | Create Call Group |


## v1_account_account_id_callflow_callflow_id_delete

> <ServiceDocsCallflowGetSingle> v1_account_account_id_callflow_callflow_id_delete(account_id, callflow_id)

Delete Call Group

Delete a callflow in an account.

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

api_instance = OpenapiClient::CallflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
callflow_id = 'callflow_id_example' # String | callflow ID, 32 alpha numeric

begin
  # Delete Call Group
  result = api_instance.v1_account_account_id_callflow_callflow_id_delete(account_id, callflow_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_callflow_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_callflow_callflow_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallflowGetSingle>, Integer, Hash)> v1_account_account_id_callflow_callflow_id_delete_with_http_info(account_id, callflow_id)

```ruby
begin
  # Delete Call Group
  data, status_code, headers = api_instance.v1_account_account_id_callflow_callflow_id_delete_with_http_info(account_id, callflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallflowGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_callflow_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **callflow_id** | **String** | callflow ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_callflow_callflow_id_get

> <ServiceDocsCallflowGetSingle> v1_account_account_id_callflow_callflow_id_get(account_id, callflow_id)

Get Call Group Details

Get the details for a single callflow in an account.

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

api_instance = OpenapiClient::CallflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
callflow_id = 'callflow_id_example' # String | Callflow ID, 32 alpha numeric

begin
  # Get Call Group Details
  result = api_instance.v1_account_account_id_callflow_callflow_id_get(account_id, callflow_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_callflow_id_get: #{e}"
end
```

#### Using the v1_account_account_id_callflow_callflow_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallflowGetSingle>, Integer, Hash)> v1_account_account_id_callflow_callflow_id_get_with_http_info(account_id, callflow_id)

```ruby
begin
  # Get Call Group Details
  data, status_code, headers = api_instance.v1_account_account_id_callflow_callflow_id_get_with_http_info(account_id, callflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallflowGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_callflow_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **callflow_id** | **String** | Callflow ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_callflow_callflow_id_put

> <ServiceDocsCallflowGetSingle> v1_account_account_id_callflow_callflow_id_put(account_id, callflow_id, req_body)

Update Call Group

Update the details for a single callflow in an account.

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

api_instance = OpenapiClient::CallflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
callflow_id = 'callflow_id_example' # String | Callflow ID, 32 alpha numeric
req_body = OpenapiClient::ServiceCallflowAddEditData.new({flow: OpenapiClient::ServiceCallflowAddEditFlowData.new({_module: 'device'}), numbers: ['numbers_example'], patterns: ['patterns_example']}) # ServiceCallflowAddEditData | payload fields

begin
  # Update Call Group
  result = api_instance.v1_account_account_id_callflow_callflow_id_put(account_id, callflow_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_callflow_id_put: #{e}"
end
```

#### Using the v1_account_account_id_callflow_callflow_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallflowGetSingle>, Integer, Hash)> v1_account_account_id_callflow_callflow_id_put_with_http_info(account_id, callflow_id, req_body)

```ruby
begin
  # Update Call Group
  data, status_code, headers = api_instance.v1_account_account_id_callflow_callflow_id_put_with_http_info(account_id, callflow_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallflowGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_callflow_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **callflow_id** | **String** | Callflow ID, 32 alpha numeric |  |
| **req_body** | [**ServiceCallflowAddEditData**](ServiceCallflowAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_callflow_get

> <ServiceDocsCallflowGetAll> v1_account_account_id_callflow_get(account_id, opts)

Get Callflow List

Permit a user to view the callflow details in an account.

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

api_instance = OpenapiClient::CallflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Callflow List
  result = api_instance.v1_account_account_id_callflow_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_get: #{e}"
end
```

#### Using the v1_account_account_id_callflow_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallflowGetAll>, Integer, Hash)> v1_account_account_id_callflow_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Callflow List
  data, status_code, headers = api_instance.v1_account_account_id_callflow_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallflowGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsCallflowGetAll**](ServiceDocsCallflowGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_callflow_post

> <ServiceDocsCallflowGetSingle> v1_account_account_id_callflow_post(account_id, request)

Create Call Group

Create instructions for routing a call to a user or system.

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

api_instance = OpenapiClient::CallflowApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha-numeric
request = OpenapiClient::ServiceCallflowAddEditData.new({flow: OpenapiClient::ServiceCallflowAddEditFlowData.new({_module: 'device'}), numbers: ['numbers_example'], patterns: ['patterns_example']}) # ServiceCallflowAddEditData | Call flow configuration

begin
  # Create Call Group
  result = api_instance.v1_account_account_id_callflow_post(account_id, request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_post: #{e}"
end
```

#### Using the v1_account_account_id_callflow_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallflowGetSingle>, Integer, Hash)> v1_account_account_id_callflow_post_with_http_info(account_id, request)

```ruby
begin
  # Create Call Group
  data, status_code, headers = api_instance.v1_account_account_id_callflow_post_with_http_info(account_id, request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallflowGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallflowApi->v1_account_account_id_callflow_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha-numeric |  |
| **request** | [**ServiceCallflowAddEditData**](ServiceCallflowAddEditData.md) | Call flow configuration |  |

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

