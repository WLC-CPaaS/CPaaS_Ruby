# OpenapiClient::StorageApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_storage_delete**](StorageApi.md#v1_account_account_id_storage_delete) | **DELETE** /v1/account/{accountID}/storage | Delete Storage |
| [**v1_account_account_id_storage_get**](StorageApi.md#v1_account_account_id_storage_get) | **GET** /v1/account/{accountID}/storage | Get Storage Details |
| [**v1_account_account_id_storage_post**](StorageApi.md#v1_account_account_id_storage_post) | **POST** /v1/account/{accountID}/storage | Create Storage |
| [**v1_account_account_id_storage_put**](StorageApi.md#v1_account_account_id_storage_put) | **PUT** /v1/account/{accountID}/storage | Update Storage |


## v1_account_account_id_storage_delete

> <ServiceDocsStorageGet> v1_account_account_id_storage_delete(account_id)

Delete Storage

Delete items that are stored in an account.

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

api_instance = OpenapiClient::StorageApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Delete Storage
  result = api_instance.v1_account_account_id_storage_delete(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_delete: #{e}"
end
```

#### Using the v1_account_account_id_storage_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsStorageGet>, Integer, Hash)> v1_account_account_id_storage_delete_with_http_info(account_id)

```ruby
begin
  # Delete Storage
  data, status_code, headers = api_instance.v1_account_account_id_storage_delete_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsStorageGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_storage_get

> <ServiceDocsStorageGet> v1_account_account_id_storage_get(account_id)

Get Storage Details

Retrieve storage details for an account.

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

api_instance = OpenapiClient::StorageApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Storage Details
  result = api_instance.v1_account_account_id_storage_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_get: #{e}"
end
```

#### Using the v1_account_account_id_storage_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsStorageGet>, Integer, Hash)> v1_account_account_id_storage_get_with_http_info(account_id)

```ruby
begin
  # Get Storage Details
  data, status_code, headers = api_instance.v1_account_account_id_storage_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsStorageGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_storage_post

> <ServiceDocsStorageGet> v1_account_account_id_storage_post(account_id, req_body)

Create Storage

Create storage in an account for voicemails, call recordings, faxes, etc.

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

api_instance = OpenapiClient::StorageApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPStorageAddEditData.new # ServiceVOIPStorageAddEditData | payload fields

begin
  # Create Storage
  result = api_instance.v1_account_account_id_storage_post(account_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_post: #{e}"
end
```

#### Using the v1_account_account_id_storage_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsStorageGet>, Integer, Hash)> v1_account_account_id_storage_post_with_http_info(account_id, req_body)

```ruby
begin
  # Create Storage
  data, status_code, headers = api_instance.v1_account_account_id_storage_post_with_http_info(account_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsStorageGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPStorageAddEditData**](ServiceVOIPStorageAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_storage_put

> <ServiceDocsStorageGet> v1_account_account_id_storage_put(account_id, req_body)

Update Storage

Modify the names of metadata to make it easier to locate (e.g., change the name of voicemail_storage to voicemail_and_callrecordings_storage, etc.).

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

api_instance = OpenapiClient::StorageApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPStorageAddEditData.new # ServiceVOIPStorageAddEditData | payload fields

begin
  # Update Storage
  result = api_instance.v1_account_account_id_storage_put(account_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_put: #{e}"
end
```

#### Using the v1_account_account_id_storage_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsStorageGet>, Integer, Hash)> v1_account_account_id_storage_put_with_http_info(account_id, req_body)

```ruby
begin
  # Update Storage
  data, status_code, headers = api_instance.v1_account_account_id_storage_put_with_http_info(account_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsStorageGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->v1_account_account_id_storage_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPStorageAddEditData**](ServiceVOIPStorageAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

