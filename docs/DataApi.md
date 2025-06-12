# OpenapiClient::DataApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_cdr_cdr_id_get**](DataApi.md#v1_account_account_id_cdr_cdr_id_get) | **GET** /v1/account/{accountID}/cdr/{cdrID} | Get CDR Details |
| [**v1_account_account_id_cdr_get**](DataApi.md#v1_account_account_id_cdr_get) | **GET** /v1/account/{accountID}/cdr | Get CDR List |
| [**v1_data_call_daily_summary_get**](DataApi.md#v1_data_call_daily_summary_get) | **GET** /v1/data/call_daily_summary | Get Call Daily Summary List |
| [**v1_data_call_detail_get**](DataApi.md#v1_data_call_detail_get) | **GET** /v1/data/call_detail | Get Call Detail List |
| [**v1_data_call_monthly_summary_get**](DataApi.md#v1_data_call_monthly_summary_get) | **GET** /v1/data/call_monthly_summary | Get Call Detail List |
| [**v1_data_endpoint_list_get**](DataApi.md#v1_data_endpoint_list_get) | **GET** /v1/data/endpoint_list | Get Endpoint List |
| [**v1_data_event_daily_summary_get**](DataApi.md#v1_data_event_daily_summary_get) | **GET** /v1/data/event_daily_summary | Get Event Daily Summary List |
| [**v1_data_event_detail_get**](DataApi.md#v1_data_event_detail_get) | **GET** /v1/data/event_detail | Get Event Details |
| [**v1_data_event_monthly_summary_get**](DataApi.md#v1_data_event_monthly_summary_get) | **GET** /v1/data/event_monthly_summary | Get Event Monthly Summary List |
| [**v1_data_feature_daily_summary_get**](DataApi.md#v1_data_feature_daily_summary_get) | **GET** /v1/data/feature_daily_summary | Get Feature Daily Summary List |
| [**v1_data_feature_monthly_summary_get**](DataApi.md#v1_data_feature_monthly_summary_get) | **GET** /v1/data/feature_monthly_summary | Get Feature Monthly Summary List |


## v1_account_account_id_cdr_cdr_id_get

> <ServiceDocsCdrGetSingle> v1_account_account_id_cdr_cdr_id_get(account_id, cdr_id)

Get CDR Details

Retrieve the details of a single CDR record from an account.

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

api_instance = OpenapiClient::DataApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
cdr_id = 'cdr_id_example' # String | CDR ID, string

begin
  # Get CDR Details
  result = api_instance.v1_account_account_id_cdr_cdr_id_get(account_id, cdr_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_account_account_id_cdr_cdr_id_get: #{e}"
end
```

#### Using the v1_account_account_id_cdr_cdr_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCdrGetSingle>, Integer, Hash)> v1_account_account_id_cdr_cdr_id_get_with_http_info(account_id, cdr_id)

```ruby
begin
  # Get CDR Details
  data, status_code, headers = api_instance.v1_account_account_id_cdr_cdr_id_get_with_http_info(account_id, cdr_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCdrGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_account_account_id_cdr_cdr_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **cdr_id** | **String** | CDR ID, string |  |

### Return type

[**ServiceDocsCdrGetSingle**](ServiceDocsCdrGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_cdr_get

> <ServiceDocsCdrGetAll> v1_account_account_id_cdr_get(account_id, opts)

Get CDR List

Retrieve a list of CDRs in a specific account.

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

api_instance = OpenapiClient::DataApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  page_size: 'page_size_example', # String | Page size (Maximum number of results to display per page)
  start_key: 'start_key_example', # String | Start key (Starting offset for displaying results)
  created_from: 'created_from_example', # String | For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds)
  created_to: 'created_to_example' # String | For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds)
}

begin
  # Get CDR List
  result = api_instance.v1_account_account_id_cdr_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_account_account_id_cdr_get: #{e}"
end
```

#### Using the v1_account_account_id_cdr_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCdrGetAll>, Integer, Hash)> v1_account_account_id_cdr_get_with_http_info(account_id, opts)

```ruby
begin
  # Get CDR List
  data, status_code, headers = api_instance.v1_account_account_id_cdr_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCdrGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_account_account_id_cdr_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **page_size** | **String** | Page size (Maximum number of results to display per page) | [optional] |
| **start_key** | **String** | Start key (Starting offset for displaying results) | [optional] |
| **created_from** | **String** | For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) | [optional] |
| **created_to** | **String** | For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) | [optional] |

### Return type

[**ServiceDocsCdrGetAll**](ServiceDocsCdrGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_data_call_daily_summary_get

> <ServiceDocsCallDailySummary> v1_data_call_daily_summary_get(opts)

Get Call Daily Summary List

Retrieve a daily summary of calls, including the account ID that made or received a call, the call type, the month and year, the duration, and other relevant information.

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

api_instance = OpenapiClient::DataApi.new
opts = {
  account_id: 'account_id_example', # String | 
  call_type: 'call_type_example', # String | 
  end_date: 'end_date_example', # String | 
  page_size: 56, # Integer | 
  start_date: 'start_date_example', # String | 
  start_key: 'start_key_example' # String | 
}

begin
  # Get Call Daily Summary List
  result = api_instance.v1_data_call_daily_summary_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_call_daily_summary_get: #{e}"
end
```

#### Using the v1_data_call_daily_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallDailySummary>, Integer, Hash)> v1_data_call_daily_summary_get_with_http_info(opts)

```ruby
begin
  # Get Call Daily Summary List
  data, status_code, headers = api_instance.v1_data_call_daily_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallDailySummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_call_daily_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **call_type** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **start_key** | **String** |  | [optional] |

### Return type

[**ServiceDocsCallDailySummary**](ServiceDocsCallDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_call_detail_get

> <ServiceDocsCallDetail> v1_data_call_detail_get(opts)

Get Call Detail List

Retrieve specific details about a call (e.g., caller, recipient, date, time, duration, etc.).

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

api_instance = OpenapiClient::DataApi.new
opts = {
  account: 'account_example', # String | 
  call_type: 'call_type_example', # String | 
  callee_name: 'callee_name_example', # String | 
  callee_number: 'callee_number_example', # String | 
  caller_name: 'caller_name_example', # String | 
  caller_number: 'caller_number_example', # String | 
  end_date: 'end_date_example', # String | 
  page_size: 56, # Integer | 
  start_date: 'start_date_example', # String | 
  start_key: 'start_key_example' # String | 
}

begin
  # Get Call Detail List
  result = api_instance.v1_data_call_detail_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_call_detail_get: #{e}"
end
```

#### Using the v1_data_call_detail_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallDetail>, Integer, Hash)> v1_data_call_detail_get_with_http_info(opts)

```ruby
begin
  # Get Call Detail List
  data, status_code, headers = api_instance.v1_data_call_detail_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallDetail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_call_detail_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** |  | [optional] |
| **call_type** | **String** |  | [optional] |
| **callee_name** | **String** |  | [optional] |
| **callee_number** | **String** |  | [optional] |
| **caller_name** | **String** |  | [optional] |
| **caller_number** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **start_key** | **String** |  | [optional] |

### Return type

[**ServiceDocsCallDetail**](ServiceDocsCallDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_call_monthly_summary_get

> <ServiceDocsCallMonthlySummary> v1_data_call_monthly_summary_get(opts)

Get Call Detail List

Retrieve a monthly summary of calls, including which accounts made or received calls, the call type, and other relevant information.

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

api_instance = OpenapiClient::DataApi.new
opts = {
  account: 'account_example', # String | 
  call_type: 'call_type_example', # String | 
  end_month: 56, # Integer | 
  end_year: 56, # Integer | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  start_month: 56, # Integer | 
  start_year: 56 # Integer | 
}

begin
  # Get Call Detail List
  result = api_instance.v1_data_call_monthly_summary_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_call_monthly_summary_get: #{e}"
end
```

#### Using the v1_data_call_monthly_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallMonthlySummary>, Integer, Hash)> v1_data_call_monthly_summary_get_with_http_info(opts)

```ruby
begin
  # Get Call Detail List
  data, status_code, headers = api_instance.v1_data_call_monthly_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallMonthlySummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_call_monthly_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** |  | [optional] |
| **call_type** | **String** |  | [optional] |
| **end_month** | **Integer** |  | [optional] |
| **end_year** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **start_month** | **Integer** |  | [optional] |
| **start_year** | **Integer** |  | [optional] |

### Return type

[**ServiceDocsCallMonthlySummary**](ServiceDocsCallMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_endpoint_list_get

> <ServiceDocsEndpointList> v1_data_endpoint_list_get(opts)

Get Endpoint List

Access the endpoint list for each CPaaS API.

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

api_instance = OpenapiClient::DataApi.new
opts = {
  endpoint_name: 'endpoint_name_example', # String | 
  feature_name: 'feature_name_example', # String | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  transaction_type: 'transaction_type_example', # String | 
  version: 'version_example' # String | 
}

begin
  # Get Endpoint List
  result = api_instance.v1_data_endpoint_list_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_endpoint_list_get: #{e}"
end
```

#### Using the v1_data_endpoint_list_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsEndpointList>, Integer, Hash)> v1_data_endpoint_list_get_with_http_info(opts)

```ruby
begin
  # Get Endpoint List
  data, status_code, headers = api_instance.v1_data_endpoint_list_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsEndpointList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_endpoint_list_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_name** | **String** |  | [optional] |
| **feature_name** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |

### Return type

[**ServiceDocsEndpointList**](ServiceDocsEndpointList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_event_daily_summary_get

> <ServiceDocsEventDailySummary> v1_data_event_daily_summary_get(opts)

Get Event Daily Summary List

Obtain a daily summary of events in a CPaaS account (e.g., setting/resetting the presence status for a user or extension).

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

api_instance = OpenapiClient::DataApi.new
opts = {
  account_id: 'account_id_example', # String | 
  component: 'component_example', # String | 
  end_date: 'end_date_example', # String | 
  page_size: 56, # Integer | 
  start_date: 'start_date_example', # String | 
  start_key: 'start_key_example' # String | 
}

begin
  # Get Event Daily Summary List
  result = api_instance.v1_data_event_daily_summary_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_event_daily_summary_get: #{e}"
end
```

#### Using the v1_data_event_daily_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsEventDailySummary>, Integer, Hash)> v1_data_event_daily_summary_get_with_http_info(opts)

```ruby
begin
  # Get Event Daily Summary List
  data, status_code, headers = api_instance.v1_data_event_daily_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsEventDailySummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_event_daily_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **component** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **start_key** | **String** |  | [optional] |

### Return type

[**ServiceDocsEventDailySummary**](ServiceDocsEventDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_event_detail_get

> <ServiceDocsEventDetail> v1_data_event_detail_get(opts)

Get Event Details

Obtain specific details about an event (e.g., an E911 notification, a deleted account, or a created user).

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

api_instance = OpenapiClient::DataApi.new
opts = {
  account_id: 'account_id_example', # String | 
  component: 'component_example', # String | 
  end_date_time: 'end_date_time_example', # String | 
  event_name: 'event_name_example', # String | 
  exec_status: 'exec_status_example', # String | 
  page_size: 56, # Integer | 
  start_date_time: 'start_date_time_example', # String | 
  start_key: 'start_key_example', # String | 
  username: 'username_example' # String | 
}

begin
  # Get Event Details
  result = api_instance.v1_data_event_detail_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_event_detail_get: #{e}"
end
```

#### Using the v1_data_event_detail_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsEventDetail>, Integer, Hash)> v1_data_event_detail_get_with_http_info(opts)

```ruby
begin
  # Get Event Details
  data, status_code, headers = api_instance.v1_data_event_detail_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsEventDetail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_event_detail_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **component** | **String** |  | [optional] |
| **end_date_time** | **String** |  | [optional] |
| **event_name** | **String** |  | [optional] |
| **exec_status** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_date_time** | **String** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |

### Return type

[**ServiceDocsEventDetail**](ServiceDocsEventDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_event_monthly_summary_get

> <ServiceDocsEventMonthlySummary> v1_data_event_monthly_summary_get(opts)

Get Event Monthly Summary List

Obtain a monthly summary of events in a CPaaS account (e.g., adding media files or assigning phone numbers).

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

api_instance = OpenapiClient::DataApi.new
opts = {
  account_id: 'account_id_example', # String | 
  component: 'component_example', # String | 
  end_month: 56, # Integer | 
  end_year: 56, # Integer | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  start_month: 56, # Integer | 
  start_year: 56 # Integer | 
}

begin
  # Get Event Monthly Summary List
  result = api_instance.v1_data_event_monthly_summary_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_event_monthly_summary_get: #{e}"
end
```

#### Using the v1_data_event_monthly_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsEventMonthlySummary>, Integer, Hash)> v1_data_event_monthly_summary_get_with_http_info(opts)

```ruby
begin
  # Get Event Monthly Summary List
  data, status_code, headers = api_instance.v1_data_event_monthly_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsEventMonthlySummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_event_monthly_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **component** | **String** |  | [optional] |
| **end_month** | **Integer** |  | [optional] |
| **end_year** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **start_month** | **Integer** |  | [optional] |
| **start_year** | **Integer** |  | [optional] |

### Return type

[**ServiceDocsEventMonthlySummary**](ServiceDocsEventMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_feature_daily_summary_get

> <ServiceDocsFeatureDailySummary> v1_data_feature_daily_summary_get(opts)

Get Feature Daily Summary List

Retrieve a daily summary about a feature, including usage, which accounts execute the steps, and other relevant information.

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

api_instance = OpenapiClient::DataApi.new
opts = {
  end_date: 'end_date_example', # String | 
  feature_name: 'feature_name_example', # String | 
  page_size: 56, # Integer | 
  start_date: 'start_date_example', # String | 
  start_key: 'start_key_example' # String | 
}

begin
  # Get Feature Daily Summary List
  result = api_instance.v1_data_feature_daily_summary_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_feature_daily_summary_get: #{e}"
end
```

#### Using the v1_data_feature_daily_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsFeatureDailySummary>, Integer, Hash)> v1_data_feature_daily_summary_get_with_http_info(opts)

```ruby
begin
  # Get Feature Daily Summary List
  data, status_code, headers = api_instance.v1_data_feature_daily_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsFeatureDailySummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_feature_daily_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_date** | **String** |  | [optional] |
| **feature_name** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **start_key** | **String** |  | [optional] |

### Return type

[**ServiceDocsFeatureDailySummary**](ServiceDocsFeatureDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_data_feature_monthly_summary_get

> <ServiceDocsFeatureMonthlySummary> v1_data_feature_monthly_summary_get(opts)

Get Feature Monthly Summary List

Retrieve a monthly summary about a feature’s usage, new users, updates, and other relevant information.

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

api_instance = OpenapiClient::DataApi.new
opts = {
  end_month: 56, # Integer | 
  end_year: 56, # Integer | 
  feature_name: 'feature_name_example', # String | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  start_month: 56, # Integer | 
  start_year: 56 # Integer | 
}

begin
  # Get Feature Monthly Summary List
  result = api_instance.v1_data_feature_monthly_summary_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_feature_monthly_summary_get: #{e}"
end
```

#### Using the v1_data_feature_monthly_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsFeatureMonthlySummary>, Integer, Hash)> v1_data_feature_monthly_summary_get_with_http_info(opts)

```ruby
begin
  # Get Feature Monthly Summary List
  data, status_code, headers = api_instance.v1_data_feature_monthly_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsFeatureMonthlySummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DataApi->v1_data_feature_monthly_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_month** | **Integer** |  | [optional] |
| **end_year** | **Integer** |  | [optional] |
| **feature_name** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **start_month** | **Integer** |  | [optional] |
| **start_year** | **Integer** |  | [optional] |

### Return type

[**ServiceDocsFeatureMonthlySummary**](ServiceDocsFeatureMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

