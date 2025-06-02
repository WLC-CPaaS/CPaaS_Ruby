# OpenapiClient::MediaApi

All URIs are relative to *http://api.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_media_media_id_file_get**](MediaApi.md#v1_account_account_id_media_media_id_file_get) | **GET** /v1/account/{accountID}/media/{mediaID}/file | Get Media File |
| [**v1_account_account_id_media_media_id_file_post**](MediaApi.md#v1_account_account_id_media_media_id_file_post) | **POST** /v1/account/{accountID}/media/{mediaID}/file | Add Media File |
| [**v1_account_accountid_media_get**](MediaApi.md#v1_account_accountid_media_get) | **GET** /v1/account/{accountid}/media | Get Media List |
| [**v1_account_accountid_media_mediaid_delete**](MediaApi.md#v1_account_accountid_media_mediaid_delete) | **DELETE** /v1/account/{accountid}/media/{mediaid} | Delete Media |
| [**v1_account_accountid_media_mediaid_get**](MediaApi.md#v1_account_accountid_media_mediaid_get) | **GET** /v1/account/{accountid}/media/{mediaid} | Get Media Details |
| [**v1_account_accountid_media_post**](MediaApi.md#v1_account_accountid_media_post) | **POST** /v1/account/{accountid}/media | Create Media |


## v1_account_account_id_media_media_id_file_get

> File v1_account_account_id_media_media_id_file_get(account_id, media_id)

Get Media File

Gather data about the media objects in an account.

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

api_instance = OpenapiClient::MediaApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
media_id = 'media_id_example' # String | Media ID, 32 alpha numeric

begin
  # Get Media File
  result = api_instance.v1_account_account_id_media_media_id_file_get(account_id, media_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_account_id_media_media_id_file_get: #{e}"
end
```

#### Using the v1_account_account_id_media_media_id_file_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> v1_account_account_id_media_media_id_file_get_with_http_info(account_id, media_id)

```ruby
begin
  # Get Media File
  data, status_code, headers = api_instance.v1_account_account_id_media_media_id_file_get_with_http_info(account_id, media_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_account_id_media_media_id_file_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **media_id** | **String** | Media ID, 32 alpha numeric |  |

### Return type

**File**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, audio/mp3, audio/mpeg, audio/mpeg3, audio/x-wav, audio/wav, audio/ogg, video/x-flv, video/h264, video/mpeg, video/quicktime, video/mp4, video/webm


## v1_account_account_id_media_media_id_file_post

> <ServiceDocsMediaGetSingle> v1_account_account_id_media_media_id_file_post(account_id, media_id, file)

Add Media File

Include a media file that is connected to a media object in an account.

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

api_instance = OpenapiClient::MediaApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
media_id = 'media_id_example' # String | Media ID, 32 alpha numeric
file = File.new('/path/to/some/file') # File | Media file

begin
  # Add Media File
  result = api_instance.v1_account_account_id_media_media_id_file_post(account_id, media_id, file)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_account_id_media_media_id_file_post: #{e}"
end
```

#### Using the v1_account_account_id_media_media_id_file_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMediaGetSingle>, Integer, Hash)> v1_account_account_id_media_media_id_file_post_with_http_info(account_id, media_id, file)

```ruby
begin
  # Add Media File
  data, status_code, headers = api_instance.v1_account_account_id_media_media_id_file_post_with_http_info(account_id, media_id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMediaGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_account_id_media_media_id_file_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **media_id** | **String** | Media ID, 32 alpha numeric |  |
| **file** | **File** | Media file |  |

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## v1_account_accountid_media_get

> <ServiceDocsMediaGetAll> v1_account_accountid_media_get(accountid, opts)

Get Media List

View all media files for an account in your organization.

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

api_instance = OpenapiClient::MediaApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Media List
  result = api_instance.v1_account_accountid_media_get(accountid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_get: #{e}"
end
```

#### Using the v1_account_accountid_media_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMediaGetAll>, Integer, Hash)> v1_account_accountid_media_get_with_http_info(accountid, opts)

```ruby
begin
  # Get Media List
  data, status_code, headers = api_instance.v1_account_accountid_media_get_with_http_info(accountid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMediaGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsMediaGetAll**](ServiceDocsMediaGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_media_mediaid_delete

> <ServiceDocsMediaGetSingle> v1_account_accountid_media_mediaid_delete(accountid, mediaid)

Delete Media

Remove a media file that is no longer in use from an account.

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

api_instance = OpenapiClient::MediaApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
mediaid = 'mediaid_example' # String | Device ID, 32 alpha numeric

begin
  # Delete Media
  result = api_instance.v1_account_accountid_media_mediaid_delete(accountid, mediaid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_mediaid_delete: #{e}"
end
```

#### Using the v1_account_accountid_media_mediaid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMediaGetSingle>, Integer, Hash)> v1_account_accountid_media_mediaid_delete_with_http_info(accountid, mediaid)

```ruby
begin
  # Delete Media
  data, status_code, headers = api_instance.v1_account_accountid_media_mediaid_delete_with_http_info(accountid, mediaid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMediaGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_mediaid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **mediaid** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_media_mediaid_get

> <ServiceDocsMediaGetSingle> v1_account_accountid_media_mediaid_get(accountid, mediaid)

Get Media Details

Permit users to view an account's specific media information.

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

api_instance = OpenapiClient::MediaApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
mediaid = 'mediaid_example' # String | Media ID, 32 alpha numeric

begin
  # Get Media Details
  result = api_instance.v1_account_accountid_media_mediaid_get(accountid, mediaid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_mediaid_get: #{e}"
end
```

#### Using the v1_account_accountid_media_mediaid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMediaGetSingle>, Integer, Hash)> v1_account_accountid_media_mediaid_get_with_http_info(accountid, mediaid)

```ruby
begin
  # Get Media Details
  data, status_code, headers = api_instance.v1_account_accountid_media_mediaid_get_with_http_info(accountid, mediaid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMediaGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_mediaid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **mediaid** | **String** | Media ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_media_post

> <ServiceDocsMediaGetSingle> v1_account_accountid_media_post(accountid, media)

Create Media

Generate a media object to allow users to upload a media file in an account.

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

api_instance = OpenapiClient::MediaApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
media = OpenapiClient::ServiceVOIPMediaAddEditData.new({name: 'name_example'}) # ServiceVOIPMediaAddEditData | Media creation or update payload

begin
  # Create Media
  result = api_instance.v1_account_accountid_media_post(accountid, media)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_post: #{e}"
end
```

#### Using the v1_account_accountid_media_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsMediaGetSingle>, Integer, Hash)> v1_account_accountid_media_post_with_http_info(accountid, media)

```ruby
begin
  # Create Media
  data, status_code, headers = api_instance.v1_account_accountid_media_post_with_http_info(accountid, media)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsMediaGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->v1_account_accountid_media_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **media** | [**ServiceVOIPMediaAddEditData**](ServiceVOIPMediaAddEditData.md) | Media creation or update payload |  |

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

