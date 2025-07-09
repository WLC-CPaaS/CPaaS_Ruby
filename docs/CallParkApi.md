# OpenapiClient::CallParkApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_parkedcall_get**](CallParkApi.md#v1_account_account_id_parkedcall_get) | **GET** /v1/account/{accountID}/parkedcall | Get Call Park List |


## v1_account_account_id_parkedcall_get

> <ServiceDocsCallparkGet> v1_account_account_id_parkedcall_get(account_id)

Get Call Park List

Retrieve a list of calls parked on hold in a numbered slot.

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

api_instance = OpenapiClient::CallParkApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Call Park List
  result = api_instance.v1_account_account_id_parkedcall_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallParkApi->v1_account_account_id_parkedcall_get: #{e}"
end
```

#### Using the v1_account_account_id_parkedcall_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallparkGet>, Integer, Hash)> v1_account_account_id_parkedcall_get_with_http_info(account_id)

```ruby
begin
  # Get Call Park List
  data, status_code, headers = api_instance.v1_account_account_id_parkedcall_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallparkGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallParkApi->v1_account_account_id_parkedcall_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallparkGet**](ServiceDocsCallparkGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

