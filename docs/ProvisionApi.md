# OpenapiClient::ProvisionApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_provision_filename_get**](ProvisionApi.md#v1_account_account_id_provision_filename_get) | **GET** /v1/account/{accountID}/provision/{filename} |  |


## v1_account_account_id_provision_filename_get

> File v1_account_account_id_provision_filename_get(account_id, filename)



Retrieve the configuration details (e.g., settings and parameters) for a device.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::ProvisionApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
filename = 'filename_example' # String | Name of config file

begin
  
  result = api_instance.v1_account_account_id_provision_filename_get(account_id, filename)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisionApi->v1_account_account_id_provision_filename_get: #{e}"
end
```

#### Using the v1_account_account_id_provision_filename_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> v1_account_account_id_provision_filename_get_with_http_info(account_id, filename)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_account_account_id_provision_filename_get_with_http_info(account_id, filename)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisionApi->v1_account_account_id_provision_filename_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **filename** | **String** | Name of config file |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

