# OpenapiClient::TemporalRuleSetApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_temporalruleset_get**](TemporalRuleSetApi.md#v1_account_account_id_temporalruleset_get) | **GET** /v1/account/{accountID}/temporalruleset | Get Temporal Rule Set List |
| [**v1_account_account_id_temporalruleset_post**](TemporalRuleSetApi.md#v1_account_account_id_temporalruleset_post) | **POST** /v1/account/{accountID}/temporalruleset | Create Temporal Rule Set |
| [**v1_account_account_id_temporalruleset_temporal_rule_set_id_delete**](TemporalRuleSetApi.md#v1_account_account_id_temporalruleset_temporal_rule_set_id_delete) | **DELETE** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Delete Temporal Rule Set |
| [**v1_account_account_id_temporalruleset_temporal_rule_set_id_get**](TemporalRuleSetApi.md#v1_account_account_id_temporalruleset_temporal_rule_set_id_get) | **GET** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Get Temporal Rule Set Details |
| [**v1_account_account_id_temporalruleset_temporal_rule_set_id_put**](TemporalRuleSetApi.md#v1_account_account_id_temporalruleset_temporal_rule_set_id_put) | **PUT** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Update Temporal Rule Set |


## v1_account_account_id_temporalruleset_get

> <ServiceDocsTemporalRuleSetGetAll> v1_account_account_id_temporalruleset_get(account_id, opts)

Get Temporal Rule Set List

Access the temporal rule set list in an account.

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

api_instance = OpenapiClient::TemporalRuleSetApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Temporal Rule Set List
  result = api_instance.v1_account_account_id_temporalruleset_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_get: #{e}"
end
```

#### Using the v1_account_account_id_temporalruleset_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleSetGetAll>, Integer, Hash)> v1_account_account_id_temporalruleset_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Temporal Rule Set List
  data, status_code, headers = api_instance.v1_account_account_id_temporalruleset_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleSetGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsTemporalRuleSetGetAll**](ServiceDocsTemporalRuleSetGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_temporalruleset_post

> <ServiceDocsTemporalRuleSetGetSingle> v1_account_account_id_temporalruleset_post(account_id, temporalruleset)

Create Temporal Rule Set

Develop a new temporal rule set for an account.

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

api_instance = OpenapiClient::TemporalRuleSetApi.new
account_id = 'account_id_example' # String | Account ID, 32 alphanumeric
temporalruleset = OpenapiClient::ServiceVOIPTemporalRuleSetAddEditData.new({name: 'name_example'}) # ServiceVOIPTemporalRuleSetAddEditData | payload fields

begin
  # Create Temporal Rule Set
  result = api_instance.v1_account_account_id_temporalruleset_post(account_id, temporalruleset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_post: #{e}"
end
```

#### Using the v1_account_account_id_temporalruleset_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleSetGetSingle>, Integer, Hash)> v1_account_account_id_temporalruleset_post_with_http_info(account_id, temporalruleset)

```ruby
begin
  # Create Temporal Rule Set
  data, status_code, headers = api_instance.v1_account_account_id_temporalruleset_post_with_http_info(account_id, temporalruleset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleSetGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alphanumeric |  |
| **temporalruleset** | [**ServiceVOIPTemporalRuleSetAddEditData**](ServiceVOIPTemporalRuleSetAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_temporalruleset_temporal_rule_set_id_delete

> <ServiceDocsTemporalRuleSetGetSingle> v1_account_account_id_temporalruleset_temporal_rule_set_id_delete(account_id, temporal_rule_set_id)

Delete Temporal Rule Set

Delete the temporal rule set from an account.

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

api_instance = OpenapiClient::TemporalRuleSetApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
temporal_rule_set_id = 'temporal_rule_set_id_example' # String | temporal rule set ID, 32 alpha numeric

begin
  # Delete Temporal Rule Set
  result = api_instance.v1_account_account_id_temporalruleset_temporal_rule_set_id_delete(account_id, temporal_rule_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_temporal_rule_set_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_temporalruleset_temporal_rule_set_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleSetGetSingle>, Integer, Hash)> v1_account_account_id_temporalruleset_temporal_rule_set_id_delete_with_http_info(account_id, temporal_rule_set_id)

```ruby
begin
  # Delete Temporal Rule Set
  data, status_code, headers = api_instance.v1_account_account_id_temporalruleset_temporal_rule_set_id_delete_with_http_info(account_id, temporal_rule_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleSetGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_temporal_rule_set_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **temporal_rule_set_id** | **String** | temporal rule set ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_temporalruleset_temporal_rule_set_id_get

> <ServiceDocsTemporalRuleSetGetSingle> v1_account_account_id_temporalruleset_temporal_rule_set_id_get(account_id, temporal_rule_set_id)

Get Temporal Rule Set Details

Acquire details about a temporal rule set in an account.

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

api_instance = OpenapiClient::TemporalRuleSetApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
temporal_rule_set_id = 'temporal_rule_set_id_example' # String | Temporal Ruleset ID, 32 alpha numeric

begin
  # Get Temporal Rule Set Details
  result = api_instance.v1_account_account_id_temporalruleset_temporal_rule_set_id_get(account_id, temporal_rule_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_temporal_rule_set_id_get: #{e}"
end
```

#### Using the v1_account_account_id_temporalruleset_temporal_rule_set_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleSetGetSingle>, Integer, Hash)> v1_account_account_id_temporalruleset_temporal_rule_set_id_get_with_http_info(account_id, temporal_rule_set_id)

```ruby
begin
  # Get Temporal Rule Set Details
  data, status_code, headers = api_instance.v1_account_account_id_temporalruleset_temporal_rule_set_id_get_with_http_info(account_id, temporal_rule_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleSetGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_temporal_rule_set_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **temporal_rule_set_id** | **String** | Temporal Ruleset ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_temporalruleset_temporal_rule_set_id_put

> <ServiceDocsTemporalRuleSetGetSingle> v1_account_account_id_temporalruleset_temporal_rule_set_id_put(account_id, temporal_rule_set_id, req_body)

Update Temporal Rule Set

Efficiently adjust the temporal rule set in an account.

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

api_instance = OpenapiClient::TemporalRuleSetApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
temporal_rule_set_id = 'temporal_rule_set_id_example' # String | Temporal Ruleset ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPTemporalRuleSetAddEditData.new({name: 'name_example'}) # ServiceVOIPTemporalRuleSetAddEditData | payload fields

begin
  # Update Temporal Rule Set
  result = api_instance.v1_account_account_id_temporalruleset_temporal_rule_set_id_put(account_id, temporal_rule_set_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_temporal_rule_set_id_put: #{e}"
end
```

#### Using the v1_account_account_id_temporalruleset_temporal_rule_set_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsTemporalRuleSetGetSingle>, Integer, Hash)> v1_account_account_id_temporalruleset_temporal_rule_set_id_put_with_http_info(account_id, temporal_rule_set_id, req_body)

```ruby
begin
  # Update Temporal Rule Set
  data, status_code, headers = api_instance.v1_account_account_id_temporalruleset_temporal_rule_set_id_put_with_http_info(account_id, temporal_rule_set_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsTemporalRuleSetGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemporalRuleSetApi->v1_account_account_id_temporalruleset_temporal_rule_set_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **temporal_rule_set_id** | **String** | Temporal Ruleset ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPTemporalRuleSetAddEditData**](ServiceVOIPTemporalRuleSetAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

