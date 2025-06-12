# OpenapiClient::WebhookApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_webhook_account_account_id_get**](WebhookApi.md#v1_webhook_account_account_id_get) | **GET** /v1/webhook/account/{accountID} | Get Webhook List |
| [**v1_webhook_account_account_id_post**](WebhookApi.md#v1_webhook_account_account_id_post) | **POST** /v1/webhook/account/{accountID} | Create Webhook |
| [**v1_webhook_account_account_id_webhook_id_delete**](WebhookApi.md#v1_webhook_account_account_id_webhook_id_delete) | **DELETE** /v1/webhook/account/{accountID}/{webhookID} | Delete Webhook |
| [**v1_webhook_account_account_id_webhook_id_get**](WebhookApi.md#v1_webhook_account_account_id_webhook_id_get) | **GET** /v1/webhook/account/{accountID}/{webhookID} | Get Webhook Details |
| [**v1_webhook_account_account_id_webhook_id_put**](WebhookApi.md#v1_webhook_account_account_id_webhook_id_put) | **PUT** /v1/webhook/account/{accountID}/{webhookID} | Update Webhook |


## v1_webhook_account_account_id_get

> <ServiceDocsWebhookGetAll> v1_webhook_account_account_id_get(account_id, opts)

Get Webhook List

Retrieve the webhook list in an account.

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

api_instance = OpenapiClient::WebhookApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  page_size: 56, # Integer | number of records to return, range 1 to 50
  current_page: 56 # Integer | Current Page
}

begin
  # Get Webhook List
  result = api_instance.v1_webhook_account_account_id_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_get: #{e}"
end
```

#### Using the v1_webhook_account_account_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsWebhookGetAll>, Integer, Hash)> v1_webhook_account_account_id_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Webhook List
  data, status_code, headers = api_instance.v1_webhook_account_account_id_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsWebhookGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |
| **current_page** | **Integer** | Current Page | [optional] |

### Return type

[**ServiceDocsWebhookGetAll**](ServiceDocsWebhookGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_webhook_account_account_id_post

> <ServiceDocsWebhookGetSingle> v1_webhook_account_account_id_post(account_id, body)

Create Webhook

Create a webhook for a specific account ID.

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

api_instance = OpenapiClient::WebhookApi.new
account_id = 'account_id_example' # String | Account ID
body = OpenapiClient::ServiceWebhookAdd.new({callback_method: 'POST', callback_url: 'callback_url_example', title: 'title_example', webhook_type: 'webhook_type_example'}) # ServiceWebhookAdd | Webhook data

begin
  # Create Webhook
  result = api_instance.v1_webhook_account_account_id_post(account_id, body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_post: #{e}"
end
```

#### Using the v1_webhook_account_account_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsWebhookGetSingle>, Integer, Hash)> v1_webhook_account_account_id_post_with_http_info(account_id, body)

```ruby
begin
  # Create Webhook
  data, status_code, headers = api_instance.v1_webhook_account_account_id_post_with_http_info(account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsWebhookGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **body** | [**ServiceWebhookAdd**](ServiceWebhookAdd.md) | Webhook data |  |

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_webhook_account_account_id_webhook_id_delete

> <ServiceDocsWebhookDelete> v1_webhook_account_account_id_webhook_id_delete(account_id, webhook_id)

Delete Webhook

Remove a webhook identified by its ID for a particular account ID.

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

api_instance = OpenapiClient::WebhookApi.new
account_id = 'account_id_example' # String | Account ID
webhook_id = 56 # Integer | Webhook ID

begin
  # Delete Webhook
  result = api_instance.v1_webhook_account_account_id_webhook_id_delete(account_id, webhook_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_webhook_id_delete: #{e}"
end
```

#### Using the v1_webhook_account_account_id_webhook_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsWebhookDelete>, Integer, Hash)> v1_webhook_account_account_id_webhook_id_delete_with_http_info(account_id, webhook_id)

```ruby
begin
  # Delete Webhook
  data, status_code, headers = api_instance.v1_webhook_account_account_id_webhook_id_delete_with_http_info(account_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsWebhookDelete>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_webhook_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **webhook_id** | **Integer** | Webhook ID |  |

### Return type

[**ServiceDocsWebhookDelete**](ServiceDocsWebhookDelete.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_webhook_account_account_id_webhook_id_get

> <ServiceDocsWebhookGetSingle> v1_webhook_account_account_id_webhook_id_get(account_id, webhook_id)

Get Webhook Details

Access details about a single webhook ID for an individual account ID.

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

api_instance = OpenapiClient::WebhookApi.new
account_id = 'account_id_example' # String | Account ID
webhook_id = 56 # Integer | Webhook ID

begin
  # Get Webhook Details
  result = api_instance.v1_webhook_account_account_id_webhook_id_get(account_id, webhook_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_webhook_id_get: #{e}"
end
```

#### Using the v1_webhook_account_account_id_webhook_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsWebhookGetSingle>, Integer, Hash)> v1_webhook_account_account_id_webhook_id_get_with_http_info(account_id, webhook_id)

```ruby
begin
  # Get Webhook Details
  data, status_code, headers = api_instance.v1_webhook_account_account_id_webhook_id_get_with_http_info(account_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsWebhookGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_webhook_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **webhook_id** | **Integer** | Webhook ID |  |

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_webhook_account_account_id_webhook_id_put

> <ServiceDocsWebhookGetSingle> v1_webhook_account_account_id_webhook_id_put(account_id, webhook_id, body)

Update Webhook

Update a webhook identified by its ID for a distinct account ID.

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

api_instance = OpenapiClient::WebhookApi.new
account_id = 'account_id_example' # String | Account ID
webhook_id = 'webhook_id_example' # String | Webhook ID
body = OpenapiClient::ServiceWebhookEdit.new({callback_method: 'POST', callback_url: 'callback_url_example', title: 'title_example', webhook_type: 'webhook_type_example'}) # ServiceWebhookEdit | Updated webhook data

begin
  # Update Webhook
  result = api_instance.v1_webhook_account_account_id_webhook_id_put(account_id, webhook_id, body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_webhook_id_put: #{e}"
end
```

#### Using the v1_webhook_account_account_id_webhook_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsWebhookGetSingle>, Integer, Hash)> v1_webhook_account_account_id_webhook_id_put_with_http_info(account_id, webhook_id, body)

```ruby
begin
  # Update Webhook
  data, status_code, headers = api_instance.v1_webhook_account_account_id_webhook_id_put_with_http_info(account_id, webhook_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsWebhookGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_account_account_id_webhook_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID |  |
| **webhook_id** | **String** | Webhook ID |  |
| **body** | [**ServiceWebhookEdit**](ServiceWebhookEdit.md) | Updated webhook data |  |

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

