# OpenapiClient::AccountApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_accountid_children_get**](AccountApi.md#v1_account_accountid_children_get) | **GET** /v1/account/{accountid}/children | Get Sub Account List |
| [**v1_account_accountid_delete**](AccountApi.md#v1_account_accountid_delete) | **DELETE** /v1/account/{accountid} | Delete Account |
| [**v1_account_accountid_dnsrecord_get**](AccountApi.md#v1_account_accountid_dnsrecord_get) | **GET** /v1/account/{accountid}/dnsrecord | Get Account DNS Record |
| [**v1_account_accountid_dnsrecord_post**](AccountApi.md#v1_account_accountid_dnsrecord_post) | **POST** /v1/account/{accountid}/dnsrecord | Create Account DNS Record |
| [**v1_account_accountid_dnsrecord_put**](AccountApi.md#v1_account_accountid_dnsrecord_put) | **PUT** /v1/account/{accountid}/dnsrecord | Convert Account DNS Record |
| [**v1_account_accountid_get**](AccountApi.md#v1_account_accountid_get) | **GET** /v1/account/{accountid} | Get Account Details |
| [**v1_account_accountid_limit_get**](AccountApi.md#v1_account_accountid_limit_get) | **GET** /v1/account/{accountid}/limit | Get Account Limits |
| [**v1_account_accountid_limit_put**](AccountApi.md#v1_account_accountid_limit_put) | **PUT** /v1/account/{accountid}/limit | Set Account Limits |
| [**v1_account_accountid_post**](AccountApi.md#v1_account_accountid_post) | **POST** /v1/account/{accountid} | Create Sub Account |
| [**v1_account_accountid_provisioningdetails_get**](AccountApi.md#v1_account_accountid_provisioningdetails_get) | **GET** /v1/account/{accountid}/provisioningdetails | Get Account Provisioning Details |
| [**v1_account_accountid_provisioningdetails_resetpw_put**](AccountApi.md#v1_account_accountid_provisioningdetails_resetpw_put) | **PUT** /v1/account/{accountid}/provisioningdetails/resetpw | Reset the provisioning details password. |
| [**v1_account_accountid_put**](AccountApi.md#v1_account_accountid_put) | **PUT** /v1/account/{accountid} | Update Account |
| [**v1_account_apikey_get**](AccountApi.md#v1_account_apikey_get) | **GET** /v1/account/apikey |  |
| [**v1_account_get**](AccountApi.md#v1_account_get) | **GET** /v1/account | Get Account List |
| [**v1_account_post**](AccountApi.md#v1_account_post) | **POST** /v1/account | Create Account |


## v1_account_accountid_children_get

> <ServiceDocsAccountGetAll> v1_account_accountid_children_get(accountid, opts)

Get Sub Account List

Conveniently access the list of children accounts.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Sub Account List
  result = api_instance.v1_account_accountid_children_get(accountid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_children_get: #{e}"
end
```

#### Using the v1_account_accountid_children_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetAll>, Integer, Hash)> v1_account_accountid_children_get_with_http_info(accountid, opts)

```ruby
begin
  # Get Sub Account List
  data, status_code, headers = api_instance.v1_account_accountid_children_get_with_http_info(accountid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_children_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsAccountGetAll**](ServiceDocsAccountGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_delete

> <ServiceDocsAccountGetSingle> v1_account_accountid_delete(accountid)

Delete Account

Delete an account within your organization.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Delete Account
  result = api_instance.v1_account_accountid_delete(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_delete: #{e}"
end
```

#### Using the v1_account_accountid_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_delete_with_http_info(accountid)

```ruby
begin
  # Delete Account
  data, status_code, headers = api_instance.v1_account_accountid_delete_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_dnsrecord_get

> <ServiceDocsAccountGetSingle> v1_account_accountid_dnsrecord_get(accountid)

Get Account DNS Record

Get the DNS record of an account from the Route 53 entry.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account DNS Record
  result = api_instance.v1_account_accountid_dnsrecord_get(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_dnsrecord_get: #{e}"
end
```

#### Using the v1_account_accountid_dnsrecord_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_dnsrecord_get_with_http_info(accountid)

```ruby
begin
  # Get Account DNS Record
  data, status_code, headers = api_instance.v1_account_accountid_dnsrecord_get_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_dnsrecord_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_dnsrecord_post

> <ServiceDocsAccountGetSingle> v1_account_accountid_dnsrecord_post(accountid)

Create Account DNS Record

Create the DNS record of an account with the help realm in the Route 53 entry.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Create Account DNS Record
  result = api_instance.v1_account_accountid_dnsrecord_post(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_dnsrecord_post: #{e}"
end
```

#### Using the v1_account_accountid_dnsrecord_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_dnsrecord_post_with_http_info(accountid)

```ruby
begin
  # Create Account DNS Record
  data, status_code, headers = api_instance.v1_account_accountid_dnsrecord_post_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_dnsrecord_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_dnsrecord_put

> <ServiceDocsAccountGetSingle> v1_account_accountid_dnsrecord_put(accountid, dnsrecord)

Convert Account DNS Record

Toggle the realm DNS record between srv and cname.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
dnsrecord = OpenapiClient::ServiceUpdateRecordTypeForAccount.new({record_type: 'record_type_example'}) # ServiceUpdateRecordTypeForAccount | record type fields with value SRV, CNAME

begin
  # Convert Account DNS Record
  result = api_instance.v1_account_accountid_dnsrecord_put(accountid, dnsrecord)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_dnsrecord_put: #{e}"
end
```

#### Using the v1_account_accountid_dnsrecord_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_dnsrecord_put_with_http_info(accountid, dnsrecord)

```ruby
begin
  # Convert Account DNS Record
  data, status_code, headers = api_instance.v1_account_accountid_dnsrecord_put_with_http_info(accountid, dnsrecord)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_dnsrecord_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **dnsrecord** | [**ServiceUpdateRecordTypeForAccount**](ServiceUpdateRecordTypeForAccount.md) | record type fields with value SRV, CNAME |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_get

> <ServiceDocsAccountGetSingle> v1_account_accountid_get(accountid)

Get Account Details

This endpoint will not allow for modifying or making updates, it will only allow users to view/retrieve details.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account Details
  result = api_instance.v1_account_accountid_get(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_get: #{e}"
end
```

#### Using the v1_account_accountid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_get_with_http_info(accountid)

```ruby
begin
  # Get Account Details
  data, status_code, headers = api_instance.v1_account_accountid_get_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_limit_get

> <ServiceDocsAccountLimit> v1_account_accountid_limit_get(accountid)

Get Account Limits

Check the maximum number of inbound, outbound, and two-way trunks.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account Limits
  result = api_instance.v1_account_accountid_limit_get(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_limit_get: #{e}"
end
```

#### Using the v1_account_accountid_limit_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountLimit>, Integer, Hash)> v1_account_accountid_limit_get_with_http_info(accountid)

```ruby
begin
  # Get Account Limits
  data, status_code, headers = api_instance.v1_account_accountid_limit_get_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountLimit>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_limit_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountLimit**](ServiceDocsAccountLimit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_limit_put

> <ServiceDocsAccountLimit> v1_account_accountid_limit_put(accountid, limit)

Set Account Limits

Apply parameters to restrict access to inbound, outbound, and two-way trunks.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
limit = OpenapiClient::ServiceVOIPAccountLimit2.new({inbound_trunks: 37, outbound_trunks: 37, twoway_trunks: 37}) # ServiceVOIPAccountLimit2 | account fields

begin
  # Set Account Limits
  result = api_instance.v1_account_accountid_limit_put(accountid, limit)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_limit_put: #{e}"
end
```

#### Using the v1_account_accountid_limit_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountLimit>, Integer, Hash)> v1_account_accountid_limit_put_with_http_info(accountid, limit)

```ruby
begin
  # Set Account Limits
  data, status_code, headers = api_instance.v1_account_accountid_limit_put_with_http_info(accountid, limit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountLimit>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_limit_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **limit** | [**ServiceVOIPAccountLimit2**](ServiceVOIPAccountLimit2.md) | account fields |  |

### Return type

[**ServiceDocsAccountLimit**](ServiceDocsAccountLimit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_post

> <ServiceDocsAccountGetSingle> v1_account_accountid_post(accountid, account)

Create Sub Account

Establish a sub account to enable an administrator within your organization to create accounts.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
account = OpenapiClient::ServiceVOIPAccountAddData.new({name: 'name_example', timezone: 'timezone_example'}) # ServiceVOIPAccountAddData | account fields

begin
  # Create Sub Account
  result = api_instance.v1_account_accountid_post(accountid, account)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_post: #{e}"
end
```

#### Using the v1_account_accountid_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_post_with_http_info(accountid, account)

```ruby
begin
  # Create Sub Account
  data, status_code, headers = api_instance.v1_account_accountid_post_with_http_info(accountid, account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **account** | [**ServiceVOIPAccountAddData**](ServiceVOIPAccountAddData.md) | account fields |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_accountid_provisioningdetails_get

> <ServiceDocsAccountProvisioning> v1_account_accountid_provisioningdetails_get(accountid)

Get Account Provisioning Details

Get the provisioning details of an account.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Get Account Provisioning Details
  result = api_instance.v1_account_accountid_provisioningdetails_get(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_provisioningdetails_get: #{e}"
end
```

#### Using the v1_account_accountid_provisioningdetails_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountProvisioning>, Integer, Hash)> v1_account_accountid_provisioningdetails_get_with_http_info(accountid)

```ruby
begin
  # Get Account Provisioning Details
  data, status_code, headers = api_instance.v1_account_accountid_provisioningdetails_get_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountProvisioning>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_provisioningdetails_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountProvisioning**](ServiceDocsAccountProvisioning.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_provisioningdetails_resetpw_put

> <ServiceDocsAccountProvisioning> v1_account_accountid_provisioningdetails_resetpw_put(accountid)

Reset the provisioning details password.

Reset the existing provisioning details password and set it to a new one.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric

begin
  # Reset the provisioning details password.
  result = api_instance.v1_account_accountid_provisioningdetails_resetpw_put(accountid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_provisioningdetails_resetpw_put: #{e}"
end
```

#### Using the v1_account_accountid_provisioningdetails_resetpw_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountProvisioning>, Integer, Hash)> v1_account_accountid_provisioningdetails_resetpw_put_with_http_info(accountid)

```ruby
begin
  # Reset the provisioning details password.
  data, status_code, headers = api_instance.v1_account_accountid_provisioningdetails_resetpw_put_with_http_info(accountid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountProvisioning>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_provisioningdetails_resetpw_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |

### Return type

[**ServiceDocsAccountProvisioning**](ServiceDocsAccountProvisioning.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_accountid_put

> <ServiceDocsAccountGetSingle> v1_account_accountid_put(accountid, account)

Update Account

Modify pertinent account data.

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

api_instance = OpenapiClient::AccountApi.new
accountid = 'accountid_example' # String | Account ID, 32 alpha numeric
account = OpenapiClient::ServiceVOIPAccountEditData.new({name: 'name_example', timezone: 'timezone_example'}) # ServiceVOIPAccountEditData | account fields

begin
  # Update Account
  result = api_instance.v1_account_accountid_put(accountid, account)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_put: #{e}"
end
```

#### Using the v1_account_accountid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_accountid_put_with_http_info(accountid, account)

```ruby
begin
  # Update Account
  data, status_code, headers = api_instance.v1_account_accountid_put_with_http_info(accountid, account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_accountid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountid** | **String** | Account ID, 32 alpha numeric |  |
| **account** | [**ServiceVOIPAccountEditData**](ServiceVOIPAccountEditData.md) | account fields |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_apikey_get

> <ServiceDocsAccountAPIKey> v1_account_apikey_get



Authenticate an application or user request to get the client ID and client secret for a CPaaS account.

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

api_instance = OpenapiClient::AccountApi.new

begin
  
  result = api_instance.v1_account_apikey_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_apikey_get: #{e}"
end
```

#### Using the v1_account_apikey_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountAPIKey>, Integer, Hash)> v1_account_apikey_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.v1_account_apikey_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountAPIKey>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_apikey_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsAccountAPIKey**](ServiceDocsAccountAPIKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_get

> <ServiceDocsAccountGetAll> v1_account_get(opts)

Get Account List

Retrieve a list of all CPaaS accounts that exist within your organization.

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

api_instance = OpenapiClient::AccountApi.new
opts = {
  start_key: 'start_key_example', # String | start_key for pagination that was returned as next_start_key from your previous call
  page_size: 56 # Integer | number of records to return, range 1 to 50
}

begin
  # Get Account List
  result = api_instance.v1_account_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_get: #{e}"
end
```

#### Using the v1_account_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetAll>, Integer, Hash)> v1_account_get_with_http_info(opts)

```ruby
begin
  # Get Account List
  data, status_code, headers = api_instance.v1_account_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetAll>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_key** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] |
| **page_size** | **Integer** | number of records to return, range 1 to 50 | [optional] |

### Return type

[**ServiceDocsAccountGetAll**](ServiceDocsAccountGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_post

> <ServiceDocsAccountGetSingle> v1_account_post(account)

Create Account

Create an account.

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

api_instance = OpenapiClient::AccountApi.new
account = OpenapiClient::ServiceVOIPAccountAddData.new({name: 'name_example', timezone: 'timezone_example'}) # ServiceVOIPAccountAddData | account fields

begin
  # Create Account
  result = api_instance.v1_account_post(account)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_post: #{e}"
end
```

#### Using the v1_account_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsAccountGetSingle>, Integer, Hash)> v1_account_post_with_http_info(account)

```ruby
begin
  # Create Account
  data, status_code, headers = api_instance.v1_account_post_with_http_info(account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsAccountGetSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**ServiceVOIPAccountAddData**](ServiceVOIPAccountAddData.md) | account fields |  |

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

