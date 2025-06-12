# OpenapiClient::CallRecordingApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_recording_get**](CallRecordingApi.md#v1_account_account_id_recording_get) | **GET** /v1/account/{accountID}/recording | Get Account Call Recording |
| [**v1_account_account_id_recording_recording_id_delete**](CallRecordingApi.md#v1_account_account_id_recording_recording_id_delete) | **DELETE** /v1/account/{accountID}/recording/{recordingID} | Delete Call Recording |
| [**v1_account_account_id_recording_recording_id_get**](CallRecordingApi.md#v1_account_account_id_recording_recording_id_get) | **GET** /v1/account/{accountID}/recording/{recordingID} | Get Call Recording Details |
| [**v1_account_account_id_user_user_id_recording_get**](CallRecordingApi.md#v1_account_account_id_user_user_id_recording_get) | **GET** /v1/account/{accountID}/user/{userID}/recording | Get User Call Recording |


## v1_account_account_id_recording_get

> <ServiceDocsCallRecordingGetAll> v1_account_account_id_recording_get(account_id)

Get Account Call Recording

Obtain a list of the call recordings within an account.

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

api_instance = OpenapiClient::CallRecordingApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account Call Recording
  result = api_instance.v1_account_account_id_recording_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_recording_get: #{e}"
end
```

#### Using the v1_account_account_id_recording_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallRecordingGetAll>, Integer, Hash)> v1_account_account_id_recording_get_with_http_info(account_id)

```ruby
begin
  # Get Account Call Recording
  data, status_code, headers = api_instance.v1_account_account_id_recording_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallRecordingGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_recording_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallRecordingGetAll**](ServiceDocsCallRecordingGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_recording_recording_id_delete

> <ServiceDocsCallRecordingGetSingle> v1_account_account_id_recording_recording_id_delete(account_id, recording_id)

Delete Call Recording

Delete a single call recording from an account.

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

api_instance = OpenapiClient::CallRecordingApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
recording_id = 'recording_id_example' # String | Recording ID, 39 (yyyymm-<32 id>)

begin
  # Delete Call Recording
  result = api_instance.v1_account_account_id_recording_recording_id_delete(account_id, recording_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_recording_recording_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_recording_recording_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallRecordingGetSingle>, Integer, Hash)> v1_account_account_id_recording_recording_id_delete_with_http_info(account_id, recording_id)

```ruby
begin
  # Delete Call Recording
  data, status_code, headers = api_instance.v1_account_account_id_recording_recording_id_delete_with_http_info(account_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallRecordingGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_recording_recording_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **recording_id** | **String** | Recording ID, 39 (yyyymm-&lt;32 id&gt;) |  |

### Return type

[**ServiceDocsCallRecordingGetSingle**](ServiceDocsCallRecordingGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_recording_recording_id_get

> <ServiceDocsCallRecordingGetSingle> v1_account_account_id_recording_recording_id_get(account_id, recording_id)

Get Call Recording Details

Access details for each recorded call in an account (e.g., duration, names and numbers of call participants, etc.).

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

api_instance = OpenapiClient::CallRecordingApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
recording_id = 'recording_id_example' # String | Recording ID, 39 (yyyymm-<32 id>)

begin
  # Get Call Recording Details
  result = api_instance.v1_account_account_id_recording_recording_id_get(account_id, recording_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_recording_recording_id_get: #{e}"
end
```

#### Using the v1_account_account_id_recording_recording_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallRecordingGetSingle>, Integer, Hash)> v1_account_account_id_recording_recording_id_get_with_http_info(account_id, recording_id)

```ruby
begin
  # Get Call Recording Details
  data, status_code, headers = api_instance.v1_account_account_id_recording_recording_id_get_with_http_info(account_id, recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallRecordingGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_recording_recording_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **recording_id** | **String** | Recording ID, 39 (yyyymm-&lt;32 id&gt;) |  |

### Return type

[**ServiceDocsCallRecordingGetSingle**](ServiceDocsCallRecordingGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, audio/mp3, audio/mpeg, audio/mpeg3, audio/x-wav, audio/wav


## v1_account_account_id_user_user_id_recording_get

> <ServiceDocsCallRecordingGetAll> v1_account_account_id_user_user_id_recording_get(account_id, user_id)

Get User Call Recording

Retrieve a list of call recordings for a user within an account.

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

api_instance = OpenapiClient::CallRecordingApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
user_id = 'user_id_example' # String | User ID, 32 alpha numeric

begin
  # Get User Call Recording
  result = api_instance.v1_account_account_id_user_user_id_recording_get(account_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_user_user_id_recording_get: #{e}"
end
```

#### Using the v1_account_account_id_user_user_id_recording_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallRecordingGetAll>, Integer, Hash)> v1_account_account_id_user_user_id_recording_get_with_http_info(account_id, user_id)

```ruby
begin
  # Get User Call Recording
  data, status_code, headers = api_instance.v1_account_account_id_user_user_id_recording_get_with_http_info(account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallRecordingGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallRecordingApi->v1_account_account_id_user_user_id_recording_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **user_id** | **String** | User ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallRecordingGetAll**](ServiceDocsCallRecordingGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

