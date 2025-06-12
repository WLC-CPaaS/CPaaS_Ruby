# OpenapiClient::SMSApi

All URIs are relative to *http://API_HOSTNAME*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_sms_account_account_id_campaign_campaign_id_import_get**](SMSApi.md#v1_sms_account_account_id_campaign_campaign_id_import_get) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/import |  |
| [**v1_sms_account_account_id_campaign_campaign_id_import_post**](SMSApi.md#v1_sms_account_account_id_campaign_campaign_id_import_post) | **POST** /v1/sms/account/{accountID}/campaign/{campaignID}/import |  |
| [**v1_sms_account_account_id_campaign_campaign_id_phonenumber_get**](SMSApi.md#v1_sms_account_account_id_campaign_campaign_id_phonenumber_get) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber |  |
| [**v1_sms_account_account_id_campaign_campaign_id_phonenumber_put**](SMSApi.md#v1_sms_account_account_id_campaign_campaign_id_phonenumber_put) | **PUT** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber |  |
| [**v1_sms_account_account_id_campaign_import_get**](SMSApi.md#v1_sms_account_account_id_campaign_import_get) | **GET** /v1/sms/account/{accountID}/campaign/import |  |


## v1_sms_account_account_id_campaign_campaign_id_import_get

> <ServiceDocsCampaignImportOutput> v1_sms_account_account_id_campaign_campaign_id_import_get(account_id, campaign_id)



Get details about a single imported campaign in an account.

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

api_instance = OpenapiClient::SMSApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
campaign_id = 'campaign_id_example' # String | Campaign ID

begin
  
  result = api_instance.v1_sms_account_account_id_campaign_campaign_id_import_get(account_id, campaign_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_import_get: #{e}"
end
```

#### Using the v1_sms_account_account_id_campaign_campaign_id_import_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCampaignImportOutput>, Integer, Hash)> v1_sms_account_account_id_campaign_campaign_id_import_get_with_http_info(account_id, campaign_id)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_sms_account_account_id_campaign_campaign_id_import_get_with_http_info(account_id, campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCampaignImportOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_import_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **campaign_id** | **String** | Campaign ID |  |

### Return type

[**ServiceDocsCampaignImportOutput**](ServiceDocsCampaignImportOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sms_account_account_id_campaign_campaign_id_import_post

> <ServiceDocsCampaignImportOutput> v1_sms_account_account_id_campaign_campaign_id_import_post(account_id, campaign_id)



Import campaign

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

api_instance = OpenapiClient::SMSApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
campaign_id = 'campaign_id_example' # String | Campaign ID

begin
  
  result = api_instance.v1_sms_account_account_id_campaign_campaign_id_import_post(account_id, campaign_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_import_post: #{e}"
end
```

#### Using the v1_sms_account_account_id_campaign_campaign_id_import_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCampaignImportOutput>, Integer, Hash)> v1_sms_account_account_id_campaign_campaign_id_import_post_with_http_info(account_id, campaign_id)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_sms_account_account_id_campaign_campaign_id_import_post_with_http_info(account_id, campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCampaignImportOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_import_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **campaign_id** | **String** | Campaign ID |  |

### Return type

[**ServiceDocsCampaignImportOutput**](ServiceDocsCampaignImportOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sms_account_account_id_campaign_campaign_id_phonenumber_get

> <ServiceDocsCampaignPhoneNumberOutput> v1_sms_account_account_id_campaign_campaign_id_phonenumber_get(account_id, campaign_id, opts)



Get telephone numbers associated with a campaign.

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

api_instance = OpenapiClient::SMSApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
campaign_id = 'campaign_id_example' # String | Campaign ID
opts = {
  page_num: 8.14, # Float | Page number
  page_size: 8.14 # Float | Page size
}

begin
  
  result = api_instance.v1_sms_account_account_id_campaign_campaign_id_phonenumber_get(account_id, campaign_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_phonenumber_get: #{e}"
end
```

#### Using the v1_sms_account_account_id_campaign_campaign_id_phonenumber_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCampaignPhoneNumberOutput>, Integer, Hash)> v1_sms_account_account_id_campaign_campaign_id_phonenumber_get_with_http_info(account_id, campaign_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_sms_account_account_id_campaign_campaign_id_phonenumber_get_with_http_info(account_id, campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCampaignPhoneNumberOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_phonenumber_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **campaign_id** | **String** | Campaign ID |  |
| **page_num** | **Float** | Page number | [optional] |
| **page_size** | **Float** | Page size | [optional] |

### Return type

[**ServiceDocsCampaignPhoneNumberOutput**](ServiceDocsCampaignPhoneNumberOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_sms_account_account_id_campaign_campaign_id_phonenumber_put

> <ServiceDocsCampaignTagDetagPhonenumbersOutput> v1_sms_account_account_id_campaign_campaign_id_phonenumber_put(account_id, campaign_id, req_body)



Associate or dissociate telephone numbers with a campaign.

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

api_instance = OpenapiClient::SMSApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
campaign_id = 'campaign_id_example' # String | Campaign ID, 32 alpha numeric
req_body = OpenapiClient::ServiceCampaignTagDetagPhonenumbers.new({phone_numbers: ['phone_numbers_example']}) # ServiceCampaignTagDetagPhonenumbers | payload fields

begin
  
  result = api_instance.v1_sms_account_account_id_campaign_campaign_id_phonenumber_put(account_id, campaign_id, req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_phonenumber_put: #{e}"
end
```

#### Using the v1_sms_account_account_id_campaign_campaign_id_phonenumber_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCampaignTagDetagPhonenumbersOutput>, Integer, Hash)> v1_sms_account_account_id_campaign_campaign_id_phonenumber_put_with_http_info(account_id, campaign_id, req_body)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_sms_account_account_id_campaign_campaign_id_phonenumber_put_with_http_info(account_id, campaign_id, req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCampaignTagDetagPhonenumbersOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_campaign_id_phonenumber_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **campaign_id** | **String** | Campaign ID, 32 alpha numeric |  |
| **req_body** | [**ServiceCampaignTagDetagPhonenumbers**](ServiceCampaignTagDetagPhonenumbers.md) | payload fields |  |

### Return type

[**ServiceDocsCampaignTagDetagPhonenumbersOutput**](ServiceDocsCampaignTagDetagPhonenumbersOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_sms_account_account_id_campaign_import_get

> <ServiceDocsCampaignImportedGetAllOutput> v1_sms_account_account_id_campaign_import_get(account_id, opts)



Get a list of all imported campaigns in an account.

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

api_instance = OpenapiClient::SMSApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
opts = {
  page_num: 8.14, # Float | Page number
  page_size: 8.14 # Float | Page size
}

begin
  
  result = api_instance.v1_sms_account_account_id_campaign_import_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_import_get: #{e}"
end
```

#### Using the v1_sms_account_account_id_campaign_import_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsCampaignImportedGetAllOutput>, Integer, Hash)> v1_sms_account_account_id_campaign_import_get_with_http_info(account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.v1_sms_account_account_id_campaign_import_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsCampaignImportedGetAllOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->v1_sms_account_account_id_campaign_import_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **page_num** | **Float** | Page number | [optional] |
| **page_size** | **Float** | Page size | [optional] |

### Return type

[**ServiceDocsCampaignImportedGetAllOutput**](ServiceDocsCampaignImportedGetAllOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

