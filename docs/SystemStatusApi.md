# OpenapiClient::SystemStatusApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_ap_ping_get**](SystemStatusApi.md#v1_ap_ping_get) | **GET** /v1/ap/ping | Provisioning Ping |
| [**v1_ping_get**](SystemStatusApi.md#v1_ping_get) | **GET** /v1/ping | Ping Backend |
| [**v1_pingseccognito_get**](SystemStatusApi.md#v1_pingseccognito_get) | **GET** /v1/pingseccognito | Ping Cognito |
| [**v1_system_status_get**](SystemStatusApi.md#v1_system_status_get) | **GET** /v1/system_status | Get System Status |


## v1_ap_ping_get

> <ProvisioningDocsDocsPingOutput> v1_ap_ping_get

Provisioning Ping

Ping the provisioning service.

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

api_instance = OpenapiClient::SystemStatusApi.new

begin
  # Provisioning Ping
  result = api_instance.v1_ap_ping_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_ap_ping_get: #{e}"
end
```

#### Using the v1_ap_ping_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsPingOutput>, Integer, Hash)> v1_ap_ping_get_with_http_info

```ruby
begin
  # Provisioning Ping
  data, status_code, headers = api_instance.v1_ap_ping_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsPingOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_ap_ping_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProvisioningDocsDocsPingOutput**](ProvisioningDocsDocsPingOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ping_get

> <ServiceDocsPingGet> v1_ping_get

Ping Backend

Get the ping message.

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

api_instance = OpenapiClient::SystemStatusApi.new

begin
  # Ping Backend
  result = api_instance.v1_ping_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_ping_get: #{e}"
end
```

#### Using the v1_ping_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsPingGet>, Integer, Hash)> v1_ping_get_with_http_info

```ruby
begin
  # Ping Backend
  data, status_code, headers = api_instance.v1_ping_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsPingGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_ping_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsPingGet**](ServiceDocsPingGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_pingseccognito_get

> <ServiceDocsPingGet> v1_pingseccognito_get

Ping Cognito

Get a secure ping message.

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

api_instance = OpenapiClient::SystemStatusApi.new

begin
  # Ping Cognito
  result = api_instance.v1_pingseccognito_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_pingseccognito_get: #{e}"
end
```

#### Using the v1_pingseccognito_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsPingGet>, Integer, Hash)> v1_pingseccognito_get_with_http_info

```ruby
begin
  # Ping Cognito
  data, status_code, headers = api_instance.v1_pingseccognito_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsPingGet>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_pingseccognito_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsPingGet**](ServiceDocsPingGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_system_status_get

> <ServiceDocsSystemStatusGetSingle> v1_system_status_get

Get System Status

Get the system status.

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

api_instance = OpenapiClient::SystemStatusApi.new

begin
  # Get System Status
  result = api_instance.v1_system_status_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_system_status_get: #{e}"
end
```

#### Using the v1_system_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsSystemStatusGetSingle>, Integer, Hash)> v1_system_status_get_with_http_info

```ruby
begin
  # Get System Status
  data, status_code, headers = api_instance.v1_system_status_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsSystemStatusGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SystemStatusApi->v1_system_status_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsSystemStatusGetSingle**](ServiceDocsSystemStatusGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

