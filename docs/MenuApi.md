# OpenapiClient::MenuApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_menu_get**](MenuApi.md#v1_account_account_id_menu_get) | **GET** /v1/account/{accountID}/menu | Get Menu List |
| [**v1_account_account_id_menu_menu_id_delete**](MenuApi.md#v1_account_account_id_menu_menu_id_delete) | **DELETE** /v1/account/{accountID}/menu/{menuID} | Delete Menu |
| [**v1_account_account_id_menu_menu_id_get**](MenuApi.md#v1_account_account_id_menu_menu_id_get) | **GET** /v1/account/{accountID}/menu/{menuID} | Get Menu Details |
| [**v1_account_account_id_menu_menu_id_put**](MenuApi.md#v1_account_account_id_menu_menu_id_put) | **PUT** /v1/account/{accountID}/menu/{menuID} | Update Menu |
| [**v1_account_account_id_menu_post**](MenuApi.md#v1_account_account_id_menu_post) | **POST** /v1/account/{accountID}/menu | Create Menu |


## v1_account_account_id_menu_get

> <MenuOutputList> v1_account_account_id_menu_get(account_id, opts)

Get Menu List

Users can access data about all menus in an account.

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

api_instance = OpenapiClient::MenuApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Menu List
  result = api_instance.v1_account_account_id_menu_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_get: #{e}"
end
```

#### Using the v1_account_account_id_menu_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MenuOutputList>, Integer, Hash)> v1_account_account_id_menu_get_with_http_info(account_id, opts)

```ruby
begin
  # Get Menu List
  data, status_code, headers = api_instance.v1_account_account_id_menu_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MenuOutputList>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**MenuOutputList**](MenuOutputList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_menu_menu_id_delete

> <MenuOutputDetail> v1_account_account_id_menu_menu_id_delete(account_id, menu_id)

Delete Menu

Delete a menu from an account.

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

api_instance = OpenapiClient::MenuApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
menu_id = 'menu_id_example' # String | Menu ID, 32 alpha numeric

begin
  # Delete Menu
  result = api_instance.v1_account_account_id_menu_menu_id_delete(account_id, menu_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_menu_id_delete: #{e}"
end
```

#### Using the v1_account_account_id_menu_menu_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MenuOutputDetail>, Integer, Hash)> v1_account_account_id_menu_menu_id_delete_with_http_info(account_id, menu_id)

```ruby
begin
  # Delete Menu
  data, status_code, headers = api_instance.v1_account_account_id_menu_menu_id_delete_with_http_info(account_id, menu_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MenuOutputDetail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_menu_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **menu_id** | **String** | Menu ID, 32 alpha numeric |  |

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_menu_menu_id_get

> <MenuOutputDetail> v1_account_account_id_menu_menu_id_get(account_id, menu_id)

Get Menu Details

Get details about a menu in an account.

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

api_instance = OpenapiClient::MenuApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
menu_id = 'menu_id_example' # String | Menu ID, 32 alpha numeric

begin
  # Get Menu Details
  result = api_instance.v1_account_account_id_menu_menu_id_get(account_id, menu_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_menu_id_get: #{e}"
end
```

#### Using the v1_account_account_id_menu_menu_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MenuOutputDetail>, Integer, Hash)> v1_account_account_id_menu_menu_id_get_with_http_info(account_id, menu_id)

```ruby
begin
  # Get Menu Details
  data, status_code, headers = api_instance.v1_account_account_id_menu_menu_id_get_with_http_info(account_id, menu_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MenuOutputDetail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_menu_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **menu_id** | **String** | Menu ID, 32 alpha numeric |  |

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_account_id_menu_menu_id_put

> <MenuOutputDetail> v1_account_account_id_menu_menu_id_put(account_id, menu_id, req_body)

Update Menu

Edit an account menu.

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

api_instance = OpenapiClient::MenuApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
menu_id = 'menu_id_example' # String | Menu ID, 32 alpha numeric
req_body = OpenapiClient::MenuInputData.new({name: 'name_example'}) # MenuInputData | payload fields

begin
  # Update Menu
  result = api_instance.v1_account_account_id_menu_menu_id_put(account_id, menu_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_menu_id_put: #{e}"
end
```

#### Using the v1_account_account_id_menu_menu_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MenuOutputDetail>, Integer, Hash)> v1_account_account_id_menu_menu_id_put_with_http_info(account_id, menu_id, req_body)

```ruby
begin
  # Update Menu
  data, status_code, headers = api_instance.v1_account_account_id_menu_menu_id_put_with_http_info(account_id, menu_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MenuOutputDetail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_menu_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **menu_id** | **String** | Menu ID, 32 alpha numeric |  |
| **req_body** | [**MenuInputData**](MenuInputData.md) | payload fields |  |

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_account_id_menu_post

> <MenuOutputDetail> v1_account_account_id_menu_post(account_id, menu)

Create Menu

Create a new menu for an account.

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

api_instance = OpenapiClient::MenuApi.new
account_id = 'account_id_example' # String | Account ID, 32 alphanumeric
menu = OpenapiClient::MenuInputData.new({name: 'name_example'}) # MenuInputData | Menu data

begin
  # Create Menu
  result = api_instance.v1_account_account_id_menu_post(account_id, menu)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_post: #{e}"
end
```

#### Using the v1_account_account_id_menu_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MenuOutputDetail>, Integer, Hash)> v1_account_account_id_menu_post_with_http_info(account_id, menu)

```ruby
begin
  # Create Menu
  data, status_code, headers = api_instance.v1_account_account_id_menu_post_with_http_info(account_id, menu)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MenuOutputDetail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MenuApi->v1_account_account_id_menu_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alphanumeric |  |
| **menu** | [**MenuInputData**](MenuInputData.md) | Menu data |  |

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

