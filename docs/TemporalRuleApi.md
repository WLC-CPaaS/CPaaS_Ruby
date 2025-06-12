# OpenapiClient::TemporalRuleApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_temporalrule_get**](TemporalRuleApi.md#v1_account_account_id_temporalrule_get) | **GET** /v1/account/{accountID}/temporalrule | Get Temporal Rule List |
| [**v1_account_account_id_temporalrule_post**](TemporalRuleApi.md#v1_account_account_id_temporalrule_post) | **POST** /v1/account/{accountID}/temporalrule | Create Temporal Rule |
| [**v1_account_account_id_temporalrule_temporal_rule_id_delete**](TemporalRuleApi.md#v1_account_account_id_temporalrule_temporal_rule_id_delete) | **DELETE** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Delete Temporal Rule |
| [**v1_account_account_id_temporalrule_temporal_rule_id_get**](TemporalRuleApi.md#v1_account_account_id_temporalrule_temporal_rule_id_get) | **GET** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Get Temporal Rule Details |
| [**v1_account_account_id_temporalrule_temporal_rule_id_put**](TemporalRuleApi.md#v1_account_account_id_temporalrule_temporal_rule_id_put) | **PUT** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Update Temporal Rule |


## v1_account_account_id_temporalrule_get

> <ServiceDocsTemporalRuleGetAll> v1_account_account_id_temporalrule_get(account_id, opts)

Get Temporal Rule List

Access all temporal rules for an account.

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

api_instance = OpenapiClient::TemporalRuleApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Temporal Rule List
  result = api_instance.v1_account_account_id_temporalrule_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_get: #{e}"
end
```

#### Using the v1_account_account_id_temporalrule_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleGetAll>, Integer, Hash)> v1_account_account_id_temporalrule_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Temporal Rule List
  data, status_code, headers = api_instance.v1_account_account_id_temporalrule_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsTemporalRuleGetAll**](ServiceDocsTemporalRuleGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_temporalrule_post

> <ServiceDocsTemporalRuleGetSingle> v1_account_account_id_temporalrule_post(account_id, temporalrule)

Create Temporal Rule

Create temporal rules for an account.

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

api_instance = OpenapiClient::TemporalRuleApi.new
account_id = 'account_id_example' # String | Account ID, 32 alphanumeric
temporalrule = OpenapiClient::ServiceVOIPTemporalRuleAddEdit2.new({cycle: 'date', name: 'name_example'}) # ServiceVOIPTemporalRuleAddEdit2 | payload fields

begin
  # Create Temporal Rule
  result = api_instance.v1_account_account_id_temporalrule_post(account_id, temporalrule)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_post: #{e}"
end
```

#### Using the v1_account_account_id_temporalrule_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleGetSingle>, Integer, Hash)> v1_account_account_id_temporalrule_post_with_http_info(account_id, temporalrule)

```ruby
begin
  # Create Temporal Rule
  data, status_code, headers = api_instance.v1_account_account_id_temporalrule_post_with_http_info(account_id, temporalrule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alphanumeric |  |
| **temporalrule** | [**ServiceVOIPTemporalRuleAddEdit2**](ServiceVOIPTemporalRuleAddEdit2.md) | payload fields |  |

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_temporalrule_temporal_rule_id_delete

> <ServiceDocsTemporalRuleGetSingle> v1_account_account_id_temporalrule_temporal_rule_id_delete(account_id, temporal_rule_id)

Delete Temporal Rule

Remove a temporal rule from an account.

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

api_instance = OpenapiClient::TemporalRuleApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
temporal_rule_id = 'temporal_rule_id_example' # String | temporal rule ID, 32 alpha numeric

begin
  # Delete Temporal Rule
  result = api_instance.v1_account_account_id_temporalrule_temporal_rule_id_delete(account_id, temporal_rule_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_temporal_rule_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_temporalrule_temporal_rule_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleGetSingle>, Integer, Hash)> v1_account_account_id_temporalrule_temporal_rule_id_delete_with_http_info(account_id, temporal_rule_id)

```ruby
begin
  # Delete Temporal Rule
  data, status_code, headers = api_instance.v1_account_account_id_temporalrule_temporal_rule_id_delete_with_http_info(account_id, temporal_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_temporal_rule_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **temporal_rule_id** | **String** | temporal rule ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_temporalrule_temporal_rule_id_get

> <ServiceDocsTemporalRuleGetSingle> v1_account_account_id_temporalrule_temporal_rule_id_get(account_id, temporal_rule_id)

Get Temporal Rule Details

View details about individual time rules.

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

api_instance = OpenapiClient::TemporalRuleApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
temporal_rule_id = 'temporal_rule_id_example' # String | Temporal Rule ID, 32 alpha numeric

begin
  # Get Temporal Rule Details
  result = api_instance.v1_account_account_id_temporalrule_temporal_rule_id_get(account_id, temporal_rule_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_temporal_rule_id_get: #{e}"
end
```

#### Using the v1_account_account_id_temporalrule_temporal_rule_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleGetSingle>, Integer, Hash)> v1_account_account_id_temporalrule_temporal_rule_id_get_with_http_info(account_id, temporal_rule_id)

```ruby
begin
  # Get Temporal Rule Details
  data, status_code, headers = api_instance.v1_account_account_id_temporalrule_temporal_rule_id_get_with_http_info(account_id, temporal_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_temporal_rule_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **temporal_rule_id** | **String** | Temporal Rule ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_temporalrule_temporal_rule_id_put

> <ServiceDocsTemporalRuleGetSingle> v1_account_account_id_temporalrule_temporal_rule_id_put(account_id, temporal_rule_id, req_body)

Update Temporal Rule

Edit the existing temporal rules in an account.

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

api_instance = OpenapiClient::TemporalRuleApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
temporal_rule_id = 'temporal_rule_id_example' # String | Temporal Rule ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPTemporalRuleAddEdit2.new({cycle: 'date', name: 'name_example'}) # ServiceVOIPTemporalRuleAddEdit2 | payload fields

begin
  # Update Temporal Rule
  result = api_instance.v1_account_account_id_temporalrule_temporal_rule_id_put(account_id, temporal_rule_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_temporal_rule_id_put: #{e}"
end
```

#### Using the v1_account_account_id_temporalrule_temporal_rule_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleGetSingle>, Integer, Hash)> v1_account_account_id_temporalrule_temporal_rule_id_put_with_http_info(account_id, temporal_rule_id, req_body)

```ruby
begin
  # Update Temporal Rule
  data, status_code, headers = api_instance.v1_account_account_id_temporalrule_temporal_rule_id_put_with_http_info(account_id, temporal_rule_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleApi->v1_account_account_id_temporalrule_temporal_rule_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **temporal_rule_id** | **String** | Temporal Rule ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPTemporalRuleAddEdit2**](ServiceVOIPTemporalRuleAddEdit2.md) | payload fields |  |

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

