# OpenapiClient::CPaaSManagementApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_mgmt_user_get**](CPaaSManagementApi.md#v1_mgmt_user_get) | **GET** /v1/mgmt/user | Get All CPaaS Users |
| [**v1_mgmt_user_post**](CPaaSManagementApi.md#v1_mgmt_user_post) | **POST** /v1/mgmt/user | Invite CPaaS User |
| [**v1_mgmt_user_user_id_delete**](CPaaSManagementApi.md#v1_mgmt_user_user_id_delete) | **DELETE** /v1/mgmt/user/{userID} | Delete CPaaS User |
| [**v1_mgmt_user_user_id_get**](CPaaSManagementApi.md#v1_mgmt_user_user_id_get) | **GET** /v1/mgmt/user/{userID} | Get CPaaS User Details |
| [**v1_mgmt_user_user_id_put**](CPaaSManagementApi.md#v1_mgmt_user_user_id_put) | **PUT** /v1/mgmt/user/{userID} | Update CPaaS User Role |


## v1_mgmt_user_get

> <ServiceDocsAdminUserGetAll> v1_mgmt_user_get(opts)

Get All CPaaS Users

Retrieve a list of all CPaaS users in an account.

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

api_instance = OpenapiClient::CPaaSManagementApi.new
opts = {
  page_size: 56, # Integer | number of records to return, range 1 to 100
  start_key: 'start_key_example', # String | unique to fetch next records
  sort: 'sort_example', # String | sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort=role_A,email_D
  email: 'email_example', # String | Email
  role: 'role_example', # String | User Role
  first_name: 'first_name_example', # String | First Name
  last_name: 'last_name_example' # String | Last Name
}

begin
  # Get All CPaaS Users
  result = api_instance.v1_mgmt_user_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_get: #{e}"
end
```

#### Using the v1_mgmt_user_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAdminUserGetAll>, Integer, Hash)> v1_mgmt_user_get_with_http_info(opts)

```ruby
begin
  # Get All CPaaS Users
  data, status_code, headers = api_instance.v1_mgmt_user_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAdminUserGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | number of records to return, range 1 to 100 | [optional] |
| **start_key** | **String** | unique to fetch next records | [optional] |
| **sort** | **String** | sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort&#x3D;role_A,email_D | [optional] |
| **email** | **String** | Email | [optional] |
| **role** | **String** | User Role | [optional] |
| **first_name** | **String** | First Name | [optional] |
| **last_name** | **String** | Last Name | [optional] |

### Return type

[**ServiceDocsAdminUserGetAll**](ServiceDocsAdminUserGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_mgmt_user_post

> <ServiceDocsAdminUserGetSingle> v1_mgmt_user_post(req_body)

Invite CPaaS User

Link a new CPaaS user to an existing client account.

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

api_instance = OpenapiClient::CPaaSManagementApi.new
req_body = OpenapiClient::ServiceAdminUserAddData.new({email: 'email_example', role: 'admin'}) # ServiceAdminUserAddData | payload fields

begin
  # Invite CPaaS User
  result = api_instance.v1_mgmt_user_post(req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_post: #{e}"
end
```

#### Using the v1_mgmt_user_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAdminUserGetSingle>, Integer, Hash)> v1_mgmt_user_post_with_http_info(req_body)

```ruby
begin
  # Invite CPaaS User
  data, status_code, headers = api_instance.v1_mgmt_user_post_with_http_info(req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAdminUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **req_body** | [**ServiceAdminUserAddData**](ServiceAdminUserAddData.md) | payload fields |  |

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_mgmt_user_user_id_delete

> <ServiceDocsAdminUserDelete> v1_mgmt_user_user_id_delete(user_id)

Delete CPaaS User

Delete a CPaaS user from the associated account.

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

api_instance = OpenapiClient::CPaaSManagementApi.new
user_id = 'user_id_example' # String | User ID, numeric

begin
  # Delete CPaaS User
  result = api_instance.v1_mgmt_user_user_id_delete(user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_user_id_delete: #{e}"
end
```

#### Using the v1_mgmt_user_user_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAdminUserDelete>, Integer, Hash)> v1_mgmt_user_user_id_delete_with_http_info(user_id)

```ruby
begin
  # Delete CPaaS User
  data, status_code, headers = api_instance.v1_mgmt_user_user_id_delete_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAdminUserDelete>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_user_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User ID, numeric |  |

### Return type

[**ServiceDocsAdminUserDelete**](ServiceDocsAdminUserDelete.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_mgmt_user_user_id_get

> <ServiceDocsAdminUserGetSingle> v1_mgmt_user_user_id_get(user_id)

Get CPaaS User Details

View details about each CPaaS user in an account.

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

api_instance = OpenapiClient::CPaaSManagementApi.new
user_id = 'user_id_example' # String | User ID, numeric

begin
  # Get CPaaS User Details
  result = api_instance.v1_mgmt_user_user_id_get(user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_user_id_get: #{e}"
end
```

#### Using the v1_mgmt_user_user_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAdminUserGetSingle>, Integer, Hash)> v1_mgmt_user_user_id_get_with_http_info(user_id)

```ruby
begin
  # Get CPaaS User Details
  data, status_code, headers = api_instance.v1_mgmt_user_user_id_get_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAdminUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_user_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User ID, numeric |  |

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_mgmt_user_user_id_put

> <ServiceDocsAdminUserGetSingle> v1_mgmt_user_user_id_put(user_id, req_body)

Update CPaaS User Role

Update a CPaaS user's role within a client's account.

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

api_instance = OpenapiClient::CPaaSManagementApi.new
user_id = 'user_id_example' # String | User ID, numeric
req_body = OpenapiClient::ServiceAdminUserEditData.new({role: 'admin'}) # ServiceAdminUserEditData | payload fields

begin
  # Update CPaaS User Role
  result = api_instance.v1_mgmt_user_user_id_put(user_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_user_id_put: #{e}"
end
```

#### Using the v1_mgmt_user_user_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAdminUserGetSingle>, Integer, Hash)> v1_mgmt_user_user_id_put_with_http_info(user_id, req_body)

```ruby
begin
  # Update CPaaS User Role
  data, status_code, headers = api_instance.v1_mgmt_user_user_id_put_with_http_info(user_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAdminUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CPaaSManagementApi->v1_mgmt_user_user_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User ID, numeric |  |
| **req_body** | [**ServiceAdminUserEditData**](ServiceAdminUserEditData.md) | payload fields |  |

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

