# OpenapiClient::GroupApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_group_get**](GroupApi.md#v1_account_account_id_group_get) | **GET** /v1/account/{accountID}/group | Get Group List |
| [**v1_account_account_id_group_group_id_delete**](GroupApi.md#v1_account_account_id_group_group_id_delete) | **DELETE** /v1/account/{accountID}/group/{groupID} | Delete Group |
| [**v1_account_account_id_group_group_id_get**](GroupApi.md#v1_account_account_id_group_group_id_get) | **GET** /v1/account/{accountID}/group/{groupID} | Get Group Details |
| [**v1_account_account_id_group_group_id_put**](GroupApi.md#v1_account_account_id_group_group_id_put) | **PUT** /v1/account/{accountID}/group/{groupID} | Update Group |
| [**v1_account_account_id_group_post**](GroupApi.md#v1_account_account_id_group_post) | **POST** /v1/account/{accountID}/group | Create Group |


## v1_account_account_id_group_get

> <ServiceDocGroupGetAll> v1_account_account_id_group_get(account_id, opts)

Get Group List

Get a list of groups associated with an account.

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

api_instance = OpenapiClient::GroupApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Group List
  result = api_instance.v1_account_account_id_group_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_get: #{e}"
end
```

#### Using the v1_account_account_id_group_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocGroupGetAll>, Integer, Hash)> v1_account_account_id_group_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Group List
  data, status_code, headers = api_instance.v1_account_account_id_group_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocGroupGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocGroupGetAll**](ServiceDocGroupGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_group_group_id_delete

> <ServiceDocGroupGetSingle> v1_account_account_id_group_group_id_delete(account_id, group_id)

Delete Group

Delete a call group in an account.

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

api_instance = OpenapiClient::GroupApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
group_id = 'group_id_example' # String | group ID, 32 alpha numeric

begin
  # Delete Group
  result = api_instance.v1_account_account_id_group_group_id_delete(account_id, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_group_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_group_group_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocGroupGetSingle>, Integer, Hash)> v1_account_account_id_group_group_id_delete_with_http_info(account_id, group_id)

```ruby
begin
  # Delete Group
  data, status_code, headers = api_instance.v1_account_account_id_group_group_id_delete_with_http_info(account_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocGroupGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_group_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **group_id** | **String** | group ID, 32 alpha numeric |  |

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_group_group_id_get

> <ServiceDocGroupGetSingle> v1_account_account_id_group_group_id_get(account_id, group_id)

Get Group Details

Access details about a single group within an account.

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

api_instance = OpenapiClient::GroupApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
group_id = 'group_id_example' # String | Group ID, 32 alpha numeric

begin
  # Get Group Details
  result = api_instance.v1_account_account_id_group_group_id_get(account_id, group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_group_id_get: #{e}"
end
```

#### Using the v1_account_account_id_group_group_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocGroupGetSingle>, Integer, Hash)> v1_account_account_id_group_group_id_get_with_http_info(account_id, group_id)

```ruby
begin
  # Get Group Details
  data, status_code, headers = api_instance.v1_account_account_id_group_group_id_get_with_http_info(account_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocGroupGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_group_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **group_id** | **String** | Group ID, 32 alpha numeric |  |

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_group_group_id_put

> <ServiceDocGroupGetSingle> v1_account_account_id_group_group_id_put(account_id, group_id, req_body)

Update Group

Modify the name, settings and other information for a group within an account.

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

api_instance = OpenapiClient::GroupApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
group_id = 'group_id_example' # String | Group ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPGroupAddEdit2.new({endpoints: { key: OpenapiClient::ServiceEndpoint.new}, name: 'name_example'}) # ServiceVOIPGroupAddEdit2 | payload fields

begin
  # Update Group
  result = api_instance.v1_account_account_id_group_group_id_put(account_id, group_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_group_id_put: #{e}"
end
```

#### Using the v1_account_account_id_group_group_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocGroupGetSingle>, Integer, Hash)> v1_account_account_id_group_group_id_put_with_http_info(account_id, group_id, req_body)

```ruby
begin
  # Update Group
  data, status_code, headers = api_instance.v1_account_account_id_group_group_id_put_with_http_info(account_id, group_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocGroupGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_group_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **group_id** | **String** | Group ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPGroupAddEdit2**](ServiceVOIPGroupAddEdit2.md) | payload fields |  |

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_group_post

> <ServiceDocGroupGetSingle> v1_account_account_id_group_post(account_id, group)

Create Group

Provide an additional resource by adding a group list to an account.

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

api_instance = OpenapiClient::GroupApi.new
account_id = 'account_id_example' # String | Account ID
group = OpenapiClient::ServiceVOIPGroupAddEdit2.new({endpoints: { key: OpenapiClient::ServiceEndpoint.new}, name: 'name_example'}) # ServiceVOIPGroupAddEdit2 | group fields

begin
  # Create Group
  result = api_instance.v1_account_account_id_group_post(account_id, group)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_post: #{e}"
end
```

#### Using the v1_account_account_id_group_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocGroupGetSingle>, Integer, Hash)> v1_account_account_id_group_post_with_http_info(account_id, group)

```ruby
begin
  # Create Group
  data, status_code, headers = api_instance.v1_account_account_id_group_post_with_http_info(account_id, group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocGroupGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupApi->v1_account_account_id_group_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **group** | [**ServiceVOIPGroupAddEdit2**](ServiceVOIPGroupAddEdit2.md) | group fields |  |

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

