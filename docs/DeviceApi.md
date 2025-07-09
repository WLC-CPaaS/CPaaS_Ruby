# OpenapiClient::DeviceApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_accountid_device_deviceid_delete**](DeviceApi.md#v1_account_accountid_device_deviceid_delete) | **DELETE** /v1/account/{accountid}/device/{deviceid} | Delete Device |
| [**v1_account_accountid_device_deviceid_get**](DeviceApi.md#v1_account_accountid_device_deviceid_get) | **GET** /v1/account/{accountid}/device/{deviceid} | Get Device Details |
| [**v1_account_accountid_device_deviceid_put**](DeviceApi.md#v1_account_accountid_device_deviceid_put) | **PUT** /v1/account/{accountid}/device/{deviceid} | Update Device |
| [**v1_account_accountid_device_deviceid_reboot_post**](DeviceApi.md#v1_account_accountid_device_deviceid_reboot_post) | **POST** /v1/account/{accountid}/device/{deviceid}/reboot | Reboot Device |
| [**v1_account_accountid_device_get**](DeviceApi.md#v1_account_accountid_device_get) | **GET** /v1/account/{accountid}/device | Get Device List |
| [**v1_account_accountid_device_post**](DeviceApi.md#v1_account_accountid_device_post) | **POST** /v1/account/{accountid}/device | Create Device |
| [**v1_account_accountid_device_status_get**](DeviceApi.md#v1_account_accountid_device_status_get) | **GET** /v1/account/{accountid}/device/status | Get Device Status |


## v1_account_accountid_device_deviceid_delete

> <ServiceDocsDeviceGetSingle> v1_account_accountid_device_deviceid_delete(accountid, deviceid)

Delete Device

Remove one device from a CPaaS account.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
deviceid = 'deviceid_example' # String | Device ID, 32 alpha numeric

begin
  # Delete Device
  result = api_instance.v1_account_accountid_device_deviceid_delete(accountid, deviceid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_delete: #{e}"
end
```

#### Using the v1_account_accountid_device_deviceid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceGetSingle>, Integer, Hash)> v1_account_accountid_device_deviceid_delete_with_http_info(accountid, deviceid)

```ruby
begin
  # Delete Device
  data, status_code, headers = api_instance.v1_account_accountid_device_deviceid_delete_with_http_info(accountid, deviceid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **deviceid** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_device_deviceid_get

> <ServiceDocsDeviceGetSingle> v1_account_accountid_device_deviceid_get(accountid, deviceid)

Get Device Details

Permit a user to view specific device details.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
deviceid = 'deviceid_example' # String | Device ID, 32 alpha numeric

begin
  # Get Device Details
  result = api_instance.v1_account_accountid_device_deviceid_get(accountid, deviceid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_get: #{e}"
end
```

#### Using the v1_account_accountid_device_deviceid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceGetSingle>, Integer, Hash)> v1_account_accountid_device_deviceid_get_with_http_info(accountid, deviceid)

```ruby
begin
  # Get Device Details
  data, status_code, headers = api_instance.v1_account_accountid_device_deviceid_get_with_http_info(accountid, deviceid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **deviceid** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_device_deviceid_put

> <ServiceDocsDeviceGetSingle> v1_account_accountid_device_deviceid_put(accountid, deviceid, device)

Update Device

Edit specifics about the device, such as the device type, name, and owner.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
deviceid = 'deviceid_example' # String | Device ID, 32 alpha numeric
device = OpenapiClient::ServiceVOIPDeviceAddEdit2.new({name: 'name_example', sip: OpenapiClient::ServiceVOIPDeviceAddEdit3a.new({invite_format: 'username', username: 'username_example'})}) # ServiceVOIPDeviceAddEdit2 | device fields

begin
  # Update Device
  result = api_instance.v1_account_accountid_device_deviceid_put(accountid, deviceid, device)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_put: #{e}"
end
```

#### Using the v1_account_accountid_device_deviceid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceGetSingle>, Integer, Hash)> v1_account_accountid_device_deviceid_put_with_http_info(accountid, deviceid, device)

```ruby
begin
  # Update Device
  data, status_code, headers = api_instance.v1_account_accountid_device_deviceid_put_with_http_info(accountid, deviceid, device)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **deviceid** | **String** | Device ID, 32 alpha numeric |  |
| **device** | [**ServiceVOIPDeviceAddEdit2**](ServiceVOIPDeviceAddEdit2.md) | device fields |  |

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_device_deviceid_reboot_post

> <ServiceDocsDeviceReboot> v1_account_accountid_device_deviceid_reboot_post(accountid, deviceid)

Reboot Device

Reboot a device in an account to mitigate malware and improve device performance.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
deviceid = 'deviceid_example' # String | Device ID, 32 alpha numeric

begin
  # Reboot Device
  result = api_instance.v1_account_accountid_device_deviceid_reboot_post(accountid, deviceid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_reboot_post: #{e}"
end
```

#### Using the v1_account_accountid_device_deviceid_reboot_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceReboot>, Integer, Hash)> v1_account_accountid_device_deviceid_reboot_post_with_http_info(accountid, deviceid)

```ruby
begin
  # Reboot Device
  data, status_code, headers = api_instance.v1_account_accountid_device_deviceid_reboot_post_with_http_info(accountid, deviceid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceReboot>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_deviceid_reboot_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **deviceid** | **String** | Device ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsDeviceReboot**](ServiceDocsDeviceReboot.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_device_get

> <ServiceDocsDeviceGetAll> v1_account_accountid_device_get(accountid, opts)

Get Device List

Obtain a list of all devices associated with an account such as fax machines, cell phones, and soft phones.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Device List
  result = api_instance.v1_account_accountid_device_get(accountid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_get: #{e}"
end
```

#### Using the v1_account_accountid_device_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceGetAll>, Integer, Hash)> v1_account_accountid_device_get_with_http_info(accountid, opts)

```ruby
begin
  # Get Device List
  data, status_code, headers = api_instance.v1_account_accountid_device_get_with_http_info(accountid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsDeviceGetAll**](ServiceDocsDeviceGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_device_post

> <ServiceDocsDeviceGetSingle> v1_account_accountid_device_post(accountid, device)

Create Device

Connect a new device to an account to enhance communication methods.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
device = OpenapiClient::ServiceVOIPDeviceAddEdit2.new({name: 'name_example', sip: OpenapiClient::ServiceVOIPDeviceAddEdit3a.new({invite_format: 'username', username: 'username_example'})}) # ServiceVOIPDeviceAddEdit2 | device fields

begin
  # Create Device
  result = api_instance.v1_account_accountid_device_post(accountid, device)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_post: #{e}"
end
```

#### Using the v1_account_accountid_device_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceGetSingle>, Integer, Hash)> v1_account_accountid_device_post_with_http_info(accountid, device)

```ruby
begin
  # Create Device
  data, status_code, headers = api_instance.v1_account_accountid_device_post_with_http_info(accountid, device)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **device** | [**ServiceVOIPDeviceAddEdit2**](ServiceVOIPDeviceAddEdit2.md) | device fields |  |

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_device_status_get

> <ServiceDocsDeviceStatus> v1_account_accountid_device_status_get(accountid)

Get Device Status

Retrieve a device’s status (e.g., registered or not registered) in an account.

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

api_instance = OpenapiClient::DeviceApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Get Device Status
  result = api_instance.v1_account_accountid_device_status_get(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_status_get: #{e}"
end
```

#### Using the v1_account_accountid_device_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsDeviceStatus>, Integer, Hash)> v1_account_accountid_device_status_get_with_http_info(accountid)

```ruby
begin
  # Get Device Status
  data, status_code, headers = api_instance.v1_account_accountid_device_status_get_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsDeviceStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->v1_account_accountid_device_status_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsDeviceStatus**](ServiceDocsDeviceStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

