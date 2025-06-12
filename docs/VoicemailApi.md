# OpenapiClient::VoicemailApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_voicemail_get**](VoicemailApi.md#v1_account_account_id_voicemail_get) | **GET** /v1/account/{accountID}/voicemail | Get Voicemail Box List |
| [**v1_account_account_id_voicemail_post**](VoicemailApi.md#v1_account_account_id_voicemail_post) | **POST** /v1/account/{accountID}/voicemail | Create Voicemail Box |
| [**v1_account_account_id_voicemail_voicemail_id_delete**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_delete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID} | Delete Voicemail Box |
| [**v1_account_account_id_voicemail_voicemail_id_get**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_get) | **GET** /v1/account/{accountID}/voicemail/{voicemailID} | Get Voicemail Box Details |
| [**v1_account_account_id_voicemail_voicemail_id_message_get**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_get) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message | Get Voicemail Message List |
| [**v1_account_account_id_voicemail_voicemail_id_message_message_id_delete**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_message_id_delete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Delete Voicemail Message |
| [**v1_account_account_id_voicemail_voicemail_id_message_message_id_get**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_message_id_get) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Get Voicemail Message Details |
| [**v1_account_account_id_voicemail_voicemail_id_message_message_id_put**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_message_id_put) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Update Voicemail Message |
| [**v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Get Voicemail Message File |
| [**v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Add Voicemail Message File |
| [**v1_account_account_id_voicemail_voicemail_id_message_post**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_message_post) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message | Create Voicemail Message |
| [**v1_account_account_id_voicemail_voicemail_id_put**](VoicemailApi.md#v1_account_account_id_voicemail_voicemail_id_put) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID} | Update Voicemail Box |


## v1_account_account_id_voicemail_get

> <ServiceDocsVoicemailGetAll> v1_account_account_id_voicemail_get(account_id, opts)

Get Voicemail Box List

List all voicemail boxes in an account.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Voicemail Box List
  result = api_instance.v1_account_account_id_voicemail_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_get: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailGetAll>, Integer, Hash)> v1_account_account_id_voicemail_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Voicemail Box List
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsVoicemailGetAll**](ServiceDocsVoicemailGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_voicemail_post

> <ServiceDocsVoicemailGetSingle> v1_account_account_id_voicemail_post(account_id, voicemail)

Create Voicemail Box

Create a voicemail box for receiving and storing voicemail messages.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | account ID, 32 alphanumeric
voicemail = OpenapiClient::ServiceVOIPVoicemailAddEditData.new({mailbox: 'mailbox_example', name: 'name_example'}) # ServiceVOIPVoicemailAddEditData | voicemail payload fields

begin
  # Create Voicemail Box
  result = api_instance.v1_account_account_id_voicemail_post(account_id, voicemail)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_post: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_post_with_http_info(account_id, voicemail)

```ruby
begin
  # Create Voicemail Box
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_post_with_http_info(account_id, voicemail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account ID, 32 alphanumeric |  |
| **voicemail** | [**ServiceVOIPVoicemailAddEditData**](ServiceVOIPVoicemailAddEditData.md) | voicemail payload fields |  |

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_delete

> <ServiceDocsVoicemailGetSingle> v1_account_account_id_voicemail_voicemail_id_delete(account_id, voicemail_id)

Delete Voicemail Box

Delete a voicemail box in an account.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alpha numeric

begin
  # Delete Voicemail Box
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_delete(account_id, voicemail_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_delete_with_http_info(account_id, voicemail_id)

```ruby
begin
  # Delete Voicemail Box
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_delete_with_http_info(account_id, voicemail_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_get

> <ServiceDocsVoicemailGetSingle> v1_account_account_id_voicemail_voicemail_id_get(account_id, voicemail_id)

Get Voicemail Box Details

Get information about a single voicemail box.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alpha numeric

begin
  # Get Voicemail Box Details
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_get(account_id, voicemail_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_get: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_get_with_http_info(account_id, voicemail_id)

```ruby
begin
  # Get Voicemail Box Details
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_get_with_http_info(account_id, voicemail_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_message_get

> <ServiceDocsVoicemailMessageGetAll> v1_account_account_id_voicemail_voicemail_id_message_get(account_id, voicemail_id, opts)

Get Voicemail Message List

Get a list of voicemail messages from an account's voicemail box.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | voicemail ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Voicemail Message List
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_get(account_id, voicemail_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_get: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailMessageGetAll>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_get_with_http_info(account_id, voicemail_id, opts)

```ruby
begin
  # Get Voicemail Message List
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_get_with_http_info(account_id, voicemail_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailMessageGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | voicemail ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsVoicemailMessageGetAll**](ServiceDocsVoicemailMessageGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_message_message_id_delete

> <ServiceDocsVoicemailMessageGetSingle> v1_account_account_id_voicemail_voicemail_id_message_message_id_delete(account_id, voicemail_id, message_id)

Delete Voicemail Message

Delete a voicemail message from a voicemail box in an account.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alpha numeric
message_id = 'message_id_example' # String | message ID, 32 alpha numeric

begin
  # Delete Voicemail Message
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_delete(account_id, voicemail_id, message_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_message_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailMessageGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_message_id_delete_with_http_info(account_id, voicemail_id, message_id)

```ruby
begin
  # Delete Voicemail Message
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_delete_with_http_info(account_id, voicemail_id, message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailMessageGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alpha numeric |  |
| **message_id** | **String** | message ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_message_message_id_get

> <ServiceDocsVoicemailMessageGetSingle> v1_account_account_id_voicemail_voicemail_id_message_message_id_get(account_id, voicemail_id, message_id)

Get Voicemail Message Details

Retrieve the container details of an individual voicemail message. This includes a reference to the audio file, but not the message itself.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alpha numeric
message_id = 'message_id_example' # String | Message ID, 39 (yyyymm-<32 id>)

begin
  # Get Voicemail Message Details
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_get(account_id, voicemail_id, message_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_get: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_message_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailMessageGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_message_id_get_with_http_info(account_id, voicemail_id, message_id)

```ruby
begin
  # Get Voicemail Message Details
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_get_with_http_info(account_id, voicemail_id, message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailMessageGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alpha numeric |  |
| **message_id** | **String** | Message ID, 39 (yyyymm-&lt;32 id&gt;) |  |

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_message_message_id_put

> <ServiceDocsVoicemailMessageGetSingle> v1_account_account_id_voicemail_voicemail_id_message_message_id_put(account_id, voicemail_id, message_id, req_body)

Update Voicemail Message

Copy or move a voicemail message to a different folder in the same voicemail box or move the message to a separate voicemail box.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alpha numeric
message_id = 'message_id_example' # String | Message ID, 39 (yyyymm-<32 id>)
req_body = OpenapiClient::ServiceVOIPVoicemailMessageChange.new # ServiceVOIPVoicemailMessageChange | payload fields

begin
  # Update Voicemail Message
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_put(account_id, voicemail_id, message_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_put: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_message_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailMessageGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_message_id_put_with_http_info(account_id, voicemail_id, message_id, req_body)

```ruby
begin
  # Update Voicemail Message
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_put_with_http_info(account_id, voicemail_id, message_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailMessageGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alpha numeric |  |
| **message_id** | **String** | Message ID, 39 (yyyymm-&lt;32 id&gt;) |  |
| **req_body** | [**ServiceVOIPVoicemailMessageChange**](ServiceVOIPVoicemailMessageChange.md) | payload fields |  |

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get

> File v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get(account_id, voicemail_id, message_id)

Get Voicemail Message File

Get the original audio content of a specific voicemail message identified by its unique ID within an account's voicemail box. URL Param \"voicemailID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific voicemail box. URL Param \"messageID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific message within a voicemail box.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, unique 32-character alphanumeric identifier
voicemail_id = 'voicemail_id_example' # String | Voicemail Box ID, unique 32-character alphanumeric identifier
message_id = 'message_id_example' # String | Message ID, unique 32-character alphanumeric identifier

begin
  # Get Voicemail Message File
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get(account_id, voicemail_id, message_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get_with_http_info(account_id, voicemail_id, message_id)

```ruby
begin
  # Get Voicemail Message File
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get_with_http_info(account_id, voicemail_id, message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, unique 32-character alphanumeric identifier |  |
| **voicemail_id** | **String** | Voicemail Box ID, unique 32-character alphanumeric identifier |  |
| **message_id** | **String** | Message ID, unique 32-character alphanumeric identifier |  |

### Return type

**File**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post

> Hash&lt;String, Object&gt; v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post(account_id, voicemail_id, message_id, file)

Add Voicemail Message File

Associate an audio recording file with the voicemail to fully complete the message.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alphanumeric characters
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alphanumeric characters
message_id = 'message_id_example' # String | Message ID, 32 alphanumeric characters
file = File.new('/path/to/some/file') # File | Audio file to upload

begin
  # Add Voicemail Message File
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post(account_id, voicemail_id, message_id, file)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post_with_http_info(account_id, voicemail_id, message_id, file)

```ruby
begin
  # Add Voicemail Message File
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post_with_http_info(account_id, voicemail_id, message_id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_message_id_raw_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alphanumeric characters |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alphanumeric characters |  |
| **message_id** | **String** | Message ID, 32 alphanumeric characters |  |
| **file** | **File** | Audio file to upload |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_message_post

> <ServiceDocsVoicemailMessageGetSingle> v1_account_account_id_voicemail_voicemail_id_message_post(account_id, voicemail_id, message)

Create Voicemail Message

Create the container information for a recorded voicemail message in a voicemail box.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | account ID, 32 alphanumeric
voicemail_id = 'voicemail_id_example' # String | voicemail ID, 32 alphanumeric
message = OpenapiClient::ServiceVOIPVoicemailMessageAddData.new({folder: 'deleted'}) # ServiceVOIPVoicemailMessageAddData | voicemail message payload fields

begin
  # Create Voicemail Message
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_message_post(account_id, voicemail_id, message)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_post: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_message_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailMessageGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_message_post_with_http_info(account_id, voicemail_id, message)

```ruby
begin
  # Create Voicemail Message
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_message_post_with_http_info(account_id, voicemail_id, message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailMessageGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_message_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account ID, 32 alphanumeric |  |
| **voicemail_id** | **String** | voicemail ID, 32 alphanumeric |  |
| **message** | [**ServiceVOIPVoicemailMessageAddData**](ServiceVOIPVoicemailMessageAddData.md) | voicemail message payload fields |  |

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_voicemail_voicemail_id_put

> <ServiceDocsVoicemailGetSingle> v1_account_account_id_voicemail_voicemail_id_put(account_id, voicemail_id, req_body)

Update Voicemail Box

Update the settings in an individual voicemail box, such as the owner, PIN, etc.

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

api_instance = OpenapiClient::VoicemailApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
voicemail_id = 'voicemail_id_example' # String | Voicemail ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPVoicemailAddEditData.new({mailbox: 'mailbox_example', name: 'name_example'}) # ServiceVOIPVoicemailAddEditData | payload fields

begin
  # Update Voicemail Box
  result = api_instance.v1_account_account_id_voicemail_voicemail_id_put(account_id, voicemail_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_put: #{e}"
end
```

#### Using the v1_account_account_id_voicemail_voicemail_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsVoicemailGetSingle>, Integer, Hash)> v1_account_account_id_voicemail_voicemail_id_put_with_http_info(account_id, voicemail_id, req_body)

```ruby
begin
  # Update Voicemail Box
  data, status_code, headers = api_instance.v1_account_account_id_voicemail_voicemail_id_put_with_http_info(account_id, voicemail_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsVoicemailGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicemailApi->v1_account_account_id_voicemail_voicemail_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **voicemail_id** | **String** | Voicemail ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPVoicemailAddEditData**](ServiceVOIPVoicemailAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

