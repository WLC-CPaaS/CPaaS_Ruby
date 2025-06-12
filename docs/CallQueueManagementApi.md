# OpenapiClient::CallQueueManagementApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_callqueue_get**](CallQueueManagementApi.md#v1_account_account_id_callqueue_get) | **GET** /v1/account/{accountID}/callqueue | Get Call Queues |
| [**v1_account_account_id_callqueue_post**](CallQueueManagementApi.md#v1_account_account_id_callqueue_post) | **POST** /v1/account/{accountID}/callqueue | Create Call Queue |
| [**v1_account_account_id_callqueue_queue_id_delete**](CallQueueManagementApi.md#v1_account_account_id_callqueue_queue_id_delete) | **DELETE** /v1/account/{accountID}/callqueue/{queueID} | Delete Call Queue |
| [**v1_account_account_id_callqueue_queue_id_get**](CallQueueManagementApi.md#v1_account_account_id_callqueue_queue_id_get) | **GET** /v1/account/{accountID}/callqueue/{queueID} | Get Call Queue Details |
| [**v1_account_account_id_callqueue_queue_id_put**](CallQueueManagementApi.md#v1_account_account_id_callqueue_queue_id_put) | **PUT** /v1/account/{accountID}/callqueue/{queueID} | Update Call Queue |
| [**v1_account_account_id_callqueue_queue_id_status_get**](CallQueueManagementApi.md#v1_account_account_id_callqueue_queue_id_status_get) | **GET** /v1/account/{accountID}/callqueue/{queueID}/status | Get Call Queue Status |
| [**v1_account_account_id_queueroles_get**](CallQueueManagementApi.md#v1_account_account_id_queueroles_get) | **GET** /v1/account/{accountID}/queueroles | Get Queue Roles of Account |
| [**v1_account_account_id_queueroles_queue_id_post**](CallQueueManagementApi.md#v1_account_account_id_queueroles_queue_id_post) | **POST** /v1/account/{accountID}/queueroles/{queueID} | Assign Queue Role to Call Queue |


## v1_account_account_id_callqueue_get

> <ServiceDocsCallQueueGetAll> v1_account_account_id_callqueue_get(account_id)

Get Call Queues

Retrieve call queue details for an account.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Call Queues
  result = api_instance.v1_account_account_id_callqueue_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_get: #{e}"
end
```

#### Using the v1_account_account_id_callqueue_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetAll>, Integer, Hash)> v1_account_account_id_callqueue_get_with_http_info(account_id)

```ruby
begin
  # Get Call Queues
  data, status_code, headers = api_instance.v1_account_account_id_callqueue_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallQueueGetAll**](ServiceDocsCallQueueGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_callqueue_post

> <ServiceDocsCallQueueGetSingle> v1_account_account_id_callqueue_post(account_id, req_body)

Create Call Queue

Set up a call queue in an account for specific inbound calls.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPCallQueueAddEditData.new({name: 'name_example'}) # ServiceVOIPCallQueueAddEditData | payload fields

begin
  # Create Call Queue
  result = api_instance.v1_account_account_id_callqueue_post(account_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_post: #{e}"
end
```

#### Using the v1_account_account_id_callqueue_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetSingle>, Integer, Hash)> v1_account_account_id_callqueue_post_with_http_info(account_id, req_body)

```ruby
begin
  # Create Call Queue
  data, status_code, headers = api_instance.v1_account_account_id_callqueue_post_with_http_info(account_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPCallQueueAddEditData**](ServiceVOIPCallQueueAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_callqueue_queue_id_delete

> <ServiceDocsCallQueueGetSingle> v1_account_account_id_callqueue_queue_id_delete(account_id, queue_id)

Delete Call Queue

Remove the call queue from an account.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
queue_id = 'queue_id_example' # String | Queue ID, 32 alpha numeric

begin
  # Delete Call Queue
  result = api_instance.v1_account_account_id_callqueue_queue_id_delete(account_id, queue_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_callqueue_queue_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetSingle>, Integer, Hash)> v1_account_account_id_callqueue_queue_id_delete_with_http_info(account_id, queue_id)

```ruby
begin
  # Delete Call Queue
  data, status_code, headers = api_instance.v1_account_account_id_callqueue_queue_id_delete_with_http_info(account_id, queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **queue_id** | **String** | Queue ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_callqueue_queue_id_get

> <ServiceDocsCallQueueGetSingle> v1_account_account_id_callqueue_queue_id_get(account_id, queue_id)

Get Call Queue Details

Capture metadata about a specific queue, such as queue_type and agent_wrapup_time.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
queue_id = 'queue_id_example' # String | Queue ID, 32 alpha numeric

begin
  # Get Call Queue Details
  result = api_instance.v1_account_account_id_callqueue_queue_id_get(account_id, queue_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_get: #{e}"
end
```

#### Using the v1_account_account_id_callqueue_queue_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetSingle>, Integer, Hash)> v1_account_account_id_callqueue_queue_id_get_with_http_info(account_id, queue_id)

```ruby
begin
  # Get Call Queue Details
  data, status_code, headers = api_instance.v1_account_account_id_callqueue_queue_id_get_with_http_info(account_id, queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **queue_id** | **String** | Queue ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_callqueue_queue_id_put

> <ServiceDocsCallQueueGetSingle> v1_account_account_id_callqueue_queue_id_put(account_id, queue_id, req_body)

Update Call Queue

Update the metadata mentioned above.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
queue_id = 'queue_id_example' # String | Queue ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPCallQueueAddEditData.new({name: 'name_example'}) # ServiceVOIPCallQueueAddEditData | payload fields

begin
  # Update Call Queue
  result = api_instance.v1_account_account_id_callqueue_queue_id_put(account_id, queue_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_put: #{e}"
end
```

#### Using the v1_account_account_id_callqueue_queue_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetSingle>, Integer, Hash)> v1_account_account_id_callqueue_queue_id_put_with_http_info(account_id, queue_id, req_body)

```ruby
begin
  # Update Call Queue
  data, status_code, headers = api_instance.v1_account_account_id_callqueue_queue_id_put_with_http_info(account_id, queue_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **queue_id** | **String** | Queue ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPCallQueueAddEditData**](ServiceVOIPCallQueueAddEditData.md) | payload fields |  |

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_callqueue_queue_id_status_get

> <ServiceDocsCallQueueGetSingleStatus> v1_account_account_id_callqueue_queue_id_status_get(account_id, queue_id)

Get Call Queue Status

Access the status of a call queue in an account, such as the number of available agents (recipients), estimated wait time, and number of active sessions.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
queue_id = 'queue_id_example' # String | Queue ID, 32 alpha numeric

begin
  # Get Call Queue Status
  result = api_instance.v1_account_account_id_callqueue_queue_id_status_get(account_id, queue_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_status_get: #{e}"
end
```

#### Using the v1_account_account_id_callqueue_queue_id_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetSingleStatus>, Integer, Hash)> v1_account_account_id_callqueue_queue_id_status_get_with_http_info(account_id, queue_id)

```ruby
begin
  # Get Call Queue Status
  data, status_code, headers = api_instance.v1_account_account_id_callqueue_queue_id_status_get_with_http_info(account_id, queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetSingleStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_callqueue_queue_id_status_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **queue_id** | **String** | Queue ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallQueueGetSingleStatus**](ServiceDocsCallQueueGetSingleStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_queueroles_get

> <ServiceDocsCallQueueGetRoles> v1_account_account_id_queueroles_get(account_id)

Get Queue Roles of Account

Obtain data about each queue role in an account.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric

begin
  # Get Queue Roles of Account
  result = api_instance.v1_account_account_id_queueroles_get(account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_queueroles_get: #{e}"
end
```

#### Using the v1_account_account_id_queueroles_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCallQueueGetRoles>, Integer, Hash)> v1_account_account_id_queueroles_get_with_http_info(account_id)

```ruby
begin
  # Get Queue Roles of Account
  data, status_code, headers = api_instance.v1_account_account_id_queueroles_get_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCallQueueGetRoles>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_queueroles_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsCallQueueGetRoles**](ServiceDocsCallQueueGetRoles.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_queueroles_queue_id_post

> <ServiceAPIResponse> v1_account_account_id_queueroles_queue_id_post(account_id, queue_id, req_body)

Assign Queue Role to Call Queue

Assign roles to members in a call queue.

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

api_instance = OpenapiClient::CallQueueManagementApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
queue_id = 'queue_id_example' # String | Queue ID, 32 alpha numeric
req_body = OpenapiClient::ServiceVOIPCallQueueRoleAssignData.new({action: 'set', recipients: [{ key: ['inner_example']}], set_membership: false}) # ServiceVOIPCallQueueRoleAssignData | payload fields

begin
  # Assign Queue Role to Call Queue
  result = api_instance.v1_account_account_id_queueroles_queue_id_post(account_id, queue_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_queueroles_queue_id_post: #{e}"
end
```

#### Using the v1_account_account_id_queueroles_queue_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAPIResponse>, Integer, Hash)> v1_account_account_id_queueroles_queue_id_post_with_http_info(account_id, queue_id, req_body)

```ruby
begin
  # Assign Queue Role to Call Queue
  data, status_code, headers = api_instance.v1_account_account_id_queueroles_queue_id_post_with_http_info(account_id, queue_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAPIResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CallQueueManagementApi->v1_account_account_id_queueroles_queue_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **queue_id** | **String** | Queue ID, 32 alpha numeric |  |
| **req_body** | [**ServiceVOIPCallQueueRoleAssignData**](ServiceVOIPCallQueueRoleAssignData.md) | payload fields |  |

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

