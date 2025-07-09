# OpenapiClient::VoIPUserApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_accountid_user_get**](VoIPUserApi.md#v1_account_accountid_user_get) | **GET** /v1/account/{accountid}/user | Get User List |
| [**v1_account_accountid_user_post**](VoIPUserApi.md#v1_account_accountid_user_post) | **POST** /v1/account/{accountid}/user | Create User |
| [**v1_account_accountid_user_userid_delete**](VoIPUserApi.md#v1_account_accountid_user_userid_delete) | **DELETE** /v1/account/{accountid}/user/{userid} | Delete User |
| [**v1_account_accountid_user_userid_get**](VoIPUserApi.md#v1_account_accountid_user_userid_get) | **GET** /v1/account/{accountid}/user/{userid} | Get User Details |
| [**v1_account_accountid_user_userid_put**](VoIPUserApi.md#v1_account_accountid_user_userid_put) | **PUT** /v1/account/{accountid}/user/{userid} | Update User |
| [**v1_account_accountid_user_userid_userauth_post**](VoIPUserApi.md#v1_account_accountid_user_userid_userauth_post) | **POST** /v1/account/{accountid}/user/{userid}/userauth | Impersonate a User |


## v1_account_accountid_user_get

> <ServiceDocsUserGetAll> v1_account_accountid_user_get(accountid, opts)

Get User List

Get a list of all VoIP users that includes first and last names, email addresses, extensions, and account statuses.

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

api_instance = OpenapiClient::VoIPUserApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get User List
  result = api_instance.v1_account_accountid_user_get(accountid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_get: #{e}"
end
```

#### Using the v1_account_accountid_user_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsUserGetAll>, Integer, Hash)> v1_account_accountid_user_get_with_http_info(accountid, opts)

```ruby
begin
  # Get User List
  data, status_code, headers = api_instance.v1_account_accountid_user_get_with_http_info(accountid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsUserGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsUserGetAll**](ServiceDocsUserGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_user_post

> <ServiceDocsUserGetSingle> v1_account_accountid_user_post(accountid, user)

Create User

Add new users to the account. When a user is added, the system generates their unique 32 alpha numeric ID.

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

api_instance = OpenapiClient::VoIPUserApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
user = OpenapiClient::ServiceVOIPUserAdd2.new({email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example'}) # ServiceVOIPUserAdd2 | user fields

begin
  # Create User
  result = api_instance.v1_account_accountid_user_post(accountid, user)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_post: #{e}"
end
```

#### Using the v1_account_accountid_user_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsUserGetSingle>, Integer, Hash)> v1_account_accountid_user_post_with_http_info(accountid, user)

```ruby
begin
  # Create User
  data, status_code, headers = api_instance.v1_account_accountid_user_post_with_http_info(accountid, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **user** | [**ServiceVOIPUserAdd2**](ServiceVOIPUserAdd2.md) | user fields |  |

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_user_userid_delete

> <ServiceDocsUserGetSingle> v1_account_accountid_user_userid_delete(accountid, userid)

Delete User

Delete VoIP user access to maintain the security of your accounts.

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

api_instance = OpenapiClient::VoIPUserApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
userid = 'userid_example' # String | User ID, 32 alpha numeric

begin
  # Delete User
  result = api_instance.v1_account_accountid_user_userid_delete(accountid, userid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_delete: #{e}"
end
```

#### Using the v1_account_accountid_user_userid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsUserGetSingle>, Integer, Hash)> v1_account_accountid_user_userid_delete_with_http_info(accountid, userid)

```ruby
begin
  # Delete User
  data, status_code, headers = api_instance.v1_account_accountid_user_userid_delete_with_http_info(accountid, userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **userid** | **String** | User ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_user_userid_get

> <ServiceDocsUserGetSingle> v1_account_accountid_user_userid_get(accountid, userid)

Get User Details

View specific user details.

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

api_instance = OpenapiClient::VoIPUserApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
userid = 'userid_example' # String | User ID, 32 alpha numeric

begin
  # Get User Details
  result = api_instance.v1_account_accountid_user_userid_get(accountid, userid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_get: #{e}"
end
```

#### Using the v1_account_accountid_user_userid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsUserGetSingle>, Integer, Hash)> v1_account_accountid_user_userid_get_with_http_info(accountid, userid)

```ruby
begin
  # Get User Details
  data, status_code, headers = api_instance.v1_account_accountid_user_userid_get_with_http_info(accountid, userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **userid** | **String** | User ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_user_userid_put

> <ServiceDocsUserGetSingle> v1_account_accountid_user_userid_put(accountid, userid, user)

Update User

Keep user information current. Modify the first and last name, extension, and other pertinent information.

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

api_instance = OpenapiClient::VoIPUserApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
userid = 'userid_example' # String | User ID, 32 alpha numeric
user = OpenapiClient::ServiceVOIPUserAdd2.new({email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example'}) # ServiceVOIPUserAdd2 | user fields

begin
  # Update User
  result = api_instance.v1_account_accountid_user_userid_put(accountid, userid, user)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_put: #{e}"
end
```

#### Using the v1_account_accountid_user_userid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsUserGetSingle>, Integer, Hash)> v1_account_accountid_user_userid_put_with_http_info(accountid, userid, user)

```ruby
begin
  # Update User
  data, status_code, headers = api_instance.v1_account_accountid_user_userid_put_with_http_info(accountid, userid, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **userid** | **String** | User ID, 32 alpha numeric |  |
| **user** | [**ServiceVOIPUserAdd2**](ServiceVOIPUserAdd2.md) | user fields |  |

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_user_userid_userauth_post

> <ServiceDocsImpersonateUserGetSingle> v1_account_accountid_user_userid_userauth_post(accountid, userid, user)

Impersonate a User

Retrieve a token for making presence calls.

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

api_instance = OpenapiClient::VoIPUserApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
userid = 'userid_example' # String | User ID, 32 alpha numeric
user = OpenapiClient::ServiceVOIPImpersonateUser.new({action: 'impersonate_user'}) # ServiceVOIPImpersonateUser | Payload for impersonate a user

begin
  # Impersonate a User
  result = api_instance.v1_account_accountid_user_userid_userauth_post(accountid, userid, user)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_userauth_post: #{e}"
end
```

#### Using the v1_account_accountid_user_userid_userauth_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsImpersonateUserGetSingle>, Integer, Hash)> v1_account_accountid_user_userid_userauth_post_with_http_info(accountid, userid, user)

```ruby
begin
  # Impersonate a User
  data, status_code, headers = api_instance.v1_account_accountid_user_userid_userauth_post_with_http_info(accountid, userid, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsImpersonateUserGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoIPUserApi->v1_account_accountid_user_userid_userauth_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **userid** | **String** | User ID, 32 alpha numeric |  |
| **user** | [**ServiceVOIPImpersonateUser**](ServiceVOIPImpersonateUser.md) | Payload for impersonate a user |  |

### Return type

[**ServiceDocsImpersonateUserGetSingle**](ServiceDocsImpersonateUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

