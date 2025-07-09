# OpenapiClient::PhoneNumberApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_accountid_phonenumber_get**](PhoneNumberApi.md#v1_account_accountid_phonenumber_get) | **GET** /v1/account/{accountid}/phonenumber | Get Assigned Numbers List |
| [**v1_account_phonenumber_assign_post**](PhoneNumberApi.md#v1_account_phonenumber_assign_post) | **POST** /v1/account/phonenumber/assign | Assign Number |
| [**v1_account_phonenumber_disconnect_post**](PhoneNumberApi.md#v1_account_phonenumber_disconnect_post) | **POST** /v1/account/phonenumber/disconnect | Disconnect Number |
| [**v1_account_phonenumber_get**](PhoneNumberApi.md#v1_account_phonenumber_get) | **GET** /v1/account/phonenumber | Get Unassigned Numbers List |
| [**v1_account_phonenumber_post**](PhoneNumberApi.md#v1_account_phonenumber_post) | **POST** /v1/account/phonenumber | Purchase Number |
| [**v1_account_phonenumber_unassign_post**](PhoneNumberApi.md#v1_account_phonenumber_unassign_post) | **POST** /v1/account/phonenumber/unassign | Unassign Number |
| [**v1_phonenumber_search_get**](PhoneNumberApi.md#v1_phonenumber_search_get) | **GET** /v1/phonenumber/search | Search New Numbers |


## v1_account_accountid_phonenumber_get

> <ServiceDocsAccountPhonenumberGetAll> v1_account_accountid_phonenumber_get(accountid, opts)

Get Assigned Numbers List

Access all phone numbers assigned to a CPaaS account.

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

api_instance = OpenapiClient::PhoneNumberApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | Start key for pagination, obtained from previous responses
  page_size: 56 # Integer | Number of records to return per page (range: 1 to 50)
}

begin
  # Get Assigned Numbers List
  result = api_instance.v1_account_accountid_phonenumber_get(accountid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_accountid_phonenumber_get: #{e}"
end
```

#### Using the v1_account_accountid_phonenumber_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountPhonenumberGetAll>, Integer, Hash)> v1_account_accountid_phonenumber_get_with_http_info(accountid, opts)

```ruby
begin
  # Get Assigned Numbers List
  data, status_code, headers = api_instance.v1_account_accountid_phonenumber_get_with_http_info(accountid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountPhonenumberGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_accountid_phonenumber_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | Start key for pagination, obtained from previous responses | [optional] |
| **page_size** | **Integer** | Number of records to return per page (range: 1 to 50) | [optional] |

### Return type

[**ServiceDocsAccountPhonenumberGetAll**](ServiceDocsAccountPhonenumberGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_phonenumber_assign_post

> <ServiceAPIResponseStatusCodeOnly> v1_account_phonenumber_assign_post(payload)

Assign Number

Assign a purchased phone number to an account.

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

api_instance = OpenapiClient::PhoneNumberApi.new
payload = OpenapiClient::ServiceDocsPhonenumberAssignPayload.new # ServiceDocsPhonenumberAssignPayload | assignment payload

begin
  # Assign Number
  result = api_instance.v1_account_phonenumber_assign_post(payload)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_assign_post: #{e}"
end
```

#### Using the v1_account_phonenumber_assign_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponseStatusCodeOnly>, Integer, Hash)> v1_account_phonenumber_assign_post_with_http_info(payload)

```ruby
begin
  # Assign Number
  data, status_code, headers = api_instance.v1_account_phonenumber_assign_post_with_http_info(payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponseStatusCodeOnly>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_assign_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | [**ServiceDocsPhonenumberAssignPayload**](ServiceDocsPhonenumberAssignPayload.md) | assignment payload |  |

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_phonenumber_disconnect_post

> <ServiceAPIResponseStatusCodeOnly> v1_account_phonenumber_disconnect_post(payload)

Disconnect Number

Disconnecting a phone number from a CPaaS account relinquishes ownership of the number back to the carrier.

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

api_instance = OpenapiClient::PhoneNumberApi.new
payload = OpenapiClient::ServiceDocsPhonenumberUnassignPayload.new # ServiceDocsPhonenumberUnassignPayload | disconnect payload

begin
  # Disconnect Number
  result = api_instance.v1_account_phonenumber_disconnect_post(payload)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_disconnect_post: #{e}"
end
```

#### Using the v1_account_phonenumber_disconnect_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponseStatusCodeOnly>, Integer, Hash)> v1_account_phonenumber_disconnect_post_with_http_info(payload)

```ruby
begin
  # Disconnect Number
  data, status_code, headers = api_instance.v1_account_phonenumber_disconnect_post_with_http_info(payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponseStatusCodeOnly>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_disconnect_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | [**ServiceDocsPhonenumberUnassignPayload**](ServiceDocsPhonenumberUnassignPayload.md) | disconnect payload |  |

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_phonenumber_get

> <ServiceDocsAccountPhonenumberGetAll> v1_account_phonenumber_get(opts)

Get Unassigned Numbers List

Obtain all phone numbers that have not been assigned to a CPaaS account within your organization.

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

api_instance = OpenapiClient::PhoneNumberApi.new
opts = {
  start_key: 'start_key_example', # String | Start key for pagination, obtained from previous responses
  page_size: 56 # Integer | Number of records to return per page (range: 1 to 50)
}

begin
  # Get Unassigned Numbers List
  result = api_instance.v1_account_phonenumber_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_get: #{e}"
end
```

#### Using the v1_account_phonenumber_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountPhonenumberGetAll>, Integer, Hash)> v1_account_phonenumber_get_with_http_info(opts)

```ruby
begin
  # Get Unassigned Numbers List
  data, status_code, headers = api_instance.v1_account_phonenumber_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountPhonenumberGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_key** | **String** | Start key for pagination, obtained from previous responses | [optional] |
| **page_size** | **Integer** | Number of records to return per page (range: 1 to 50) | [optional] |

### Return type

[**ServiceDocsAccountPhonenumberGetAll**](ServiceDocsAccountPhonenumberGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_phonenumber_post

> <ServiceDocsOrderPhonenumber> v1_account_phonenumber_post(phonenumber)

Purchase Number

Purchase or activate a phone number for CPaaS accounts within your business.

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

api_instance = OpenapiClient::PhoneNumberApi.new
phonenumber = ['property_example'] # Array<String> | phonenumber fields

begin
  # Purchase Number
  result = api_instance.v1_account_phonenumber_post(phonenumber)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_post: #{e}"
end
```

#### Using the v1_account_phonenumber_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsOrderPhonenumber>, Integer, Hash)> v1_account_phonenumber_post_with_http_info(phonenumber)

```ruby
begin
  # Purchase Number
  data, status_code, headers = api_instance.v1_account_phonenumber_post_with_http_info(phonenumber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsOrderPhonenumber>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phonenumber** | [**Array&lt;String&gt;**](String.md) | phonenumber fields |  |

### Return type

[**ServiceDocsOrderPhonenumber**](ServiceDocsOrderPhonenumber.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_phonenumber_unassign_post

> <ServiceAPIResponseStatusCodeOnly> v1_account_phonenumber_unassign_post(payload)

Unassign Number

Remove a phone number from an account and place it back on the list of unassigned phone numbers.

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

api_instance = OpenapiClient::PhoneNumberApi.new
payload = OpenapiClient::ServiceDocsPhonenumberUnassignPayload.new # ServiceDocsPhonenumberUnassignPayload | unassign payload

begin
  # Unassign Number
  result = api_instance.v1_account_phonenumber_unassign_post(payload)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_unassign_post: #{e}"
end
```

#### Using the v1_account_phonenumber_unassign_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponseStatusCodeOnly>, Integer, Hash)> v1_account_phonenumber_unassign_post_with_http_info(payload)

```ruby
begin
  # Unassign Number
  data, status_code, headers = api_instance.v1_account_phonenumber_unassign_post_with_http_info(payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponseStatusCodeOnly>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_account_phonenumber_unassign_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | [**ServiceDocsPhonenumberUnassignPayload**](ServiceDocsPhonenumberUnassignPayload.md) | unassign payload |  |

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_phonenumber_search_get

> <ServiceDocsPhonenumberSearchGetAll> v1_phonenumber_search_get(area_code, opts)

Search New Numbers

Conduct a search for available phone numbers for purchase within an area code.

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

api_instance = OpenapiClient::PhoneNumberApi.new
area_code = 'area_code_example' # String | Area code (exactly 3 numeric characters) example: 610 or 484
opts = {
  quantity: 56 # Integer | Number of records to return (range: 1 to 100, defaults to 100 if not provided)
}

begin
  # Search New Numbers
  result = api_instance.v1_phonenumber_search_get(area_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_phonenumber_search_get: #{e}"
end
```

#### Using the v1_phonenumber_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsPhonenumberSearchGetAll>, Integer, Hash)> v1_phonenumber_search_get_with_http_info(area_code, opts)

```ruby
begin
  # Search New Numbers
  data, status_code, headers = api_instance.v1_phonenumber_search_get_with_http_info(area_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsPhonenumberSearchGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PhoneNumberApi->v1_phonenumber_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **area_code** | **String** | Area code (exactly 3 numeric characters) example: 610 or 484 |  |
| **quantity** | **Integer** | Number of records to return (range: 1 to 100, defaults to 100 if not provided) | [optional][default to 100] |

### Return type

[**ServiceDocsPhonenumberSearchGetAll**](ServiceDocsPhonenumberSearchGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

