# OpenapiClient::ProvisioningApi

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_account_id_provision_filename_get**](ProvisioningApi.md#v1_account_account_id_provision_filename_get) | **GET** /v1/account/{accountID}/provision/{filename} | Get Config File Details |
| [**v1_ap_brand_brand_family_family_get**](ProvisioningApi.md#v1_ap_brand_brand_family_family_get) | **GET** /v1/ap/brand/{brand}/family/{family} | Get Family Details |
| [**v1_ap_brand_brand_family_family_model_get**](ProvisioningApi.md#v1_ap_brand_brand_family_family_model_get) | **GET** /v1/ap/brand/{brand}/family/{family}/model | Get Model List |
| [**v1_ap_brand_brand_family_family_model_model_get**](ProvisioningApi.md#v1_ap_brand_brand_family_family_model_model_get) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model} | Get Model Details |
| [**v1_ap_brand_brand_family_family_model_model_template_get**](ProvisioningApi.md#v1_ap_brand_brand_family_family_model_model_template_get) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model}/template | Get Template List |
| [**v1_ap_brand_brand_family_family_model_model_template_template_get**](ProvisioningApi.md#v1_ap_brand_brand_family_family_model_model_template_template_get) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model}/template/{template} | Get Template Details |
| [**v1_ap_brand_brand_family_get**](ProvisioningApi.md#v1_ap_brand_brand_family_get) | **GET** /v1/ap/brand/{brand}/family | Get Family List |
| [**v1_ap_brand_brand_get**](ProvisioningApi.md#v1_ap_brand_brand_get) | **GET** /v1/ap/brand/{brand} | Get Brand Details |
| [**v1_ap_brand_get**](ProvisioningApi.md#v1_ap_brand_get) | **GET** /v1/ap/brand | Get Brand List |
| [**v1_ap_configfile_generate_post**](ProvisioningApi.md#v1_ap_configfile_generate_post) | **POST** /v1/ap/configfile/generate | Generate Config File |


## v1_account_account_id_provision_filename_get

> File v1_account_account_id_provision_filename_get(account_id, filename)

Get Config File Details

Retrieve the configuration details (e.g., settings and parameters) for a device.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::ProvisioningApi.new
account_id = 'account_id_example' # String | Account ID, 32 alpha numeric
filename = 'filename_example' # String | Name of config file

begin
  # Get Config File Details
  result = api_instance.v1_account_account_id_provision_filename_get(account_id, filename)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_account_account_id_provision_filename_get: #{e}"
end
```

#### Using the v1_account_account_id_provision_filename_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> v1_account_account_id_provision_filename_get_with_http_info(account_id, filename)

```ruby
begin
  # Get Config File Details
  data, status_code, headers = api_instance.v1_account_account_id_provision_filename_get_with_http_info(account_id, filename)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_account_account_id_provision_filename_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID, 32 alpha numeric |  |
| **filename** | **String** | Name of config file |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## v1_ap_brand_brand_family_family_get

> <ProvisioningDocsDocsFamilyOutputSingle> v1_ap_brand_brand_family_family_get(brand, family)

Get Family Details

Retrieve a family's details by the randomly generated ID.

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand
family = 'family_example' # String | family

begin
  # Get Family Details
  result = api_instance.v1_ap_brand_brand_family_family_get(brand, family)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_family_family_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsFamilyOutputSingle>, Integer, Hash)> v1_ap_brand_brand_family_family_get_with_http_info(brand, family)

```ruby
begin
  # Get Family Details
  data, status_code, headers = api_instance.v1_ap_brand_brand_family_family_get_with_http_info(brand, family)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsFamilyOutputSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand |  |
| **family** | **String** | family |  |

### Return type

[**ProvisioningDocsDocsFamilyOutputSingle**](ProvisioningDocsDocsFamilyOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_brand_family_family_model_get

> <ProvisioningDocsDocsModelOutput> v1_ap_brand_brand_family_family_model_get(brand, family, opts)

Get Model List

Retrieve a list of all models within a family for a brand (e.g., Yealink and Polycom).

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand
family = 'family_example' # String | family
opts = {
  model_name: 'model_name_example', # String | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  status: 'active' # String | 
}

begin
  # Get Model List
  result = api_instance.v1_ap_brand_brand_family_family_model_get(brand, family, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_family_family_model_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsModelOutput>, Integer, Hash)> v1_ap_brand_brand_family_family_model_get_with_http_info(brand, family, opts)

```ruby
begin
  # Get Model List
  data, status_code, headers = api_instance.v1_ap_brand_brand_family_family_model_get_with_http_info(brand, family, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsModelOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand |  |
| **family** | **String** | family |  |
| **model_name** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

### Return type

[**ProvisioningDocsDocsModelOutput**](ProvisioningDocsDocsModelOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_brand_family_family_model_model_get

> <ProvisioningDocsDocsModelOutputSingle> v1_ap_brand_brand_family_family_model_model_get(brand, family, model)

Get Model Details

Retrieve a model's details by the randomly generated ID.

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand
family = 'family_example' # String | family
model = 'model_example' # String | model

begin
  # Get Model Details
  result = api_instance.v1_ap_brand_brand_family_family_model_model_get(brand, family, model)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_model_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_family_family_model_model_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsModelOutputSingle>, Integer, Hash)> v1_ap_brand_brand_family_family_model_model_get_with_http_info(brand, family, model)

```ruby
begin
  # Get Model Details
  data, status_code, headers = api_instance.v1_ap_brand_brand_family_family_model_model_get_with_http_info(brand, family, model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsModelOutputSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_model_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand |  |
| **family** | **String** | family |  |
| **model** | **String** | model |  |

### Return type

[**ProvisioningDocsDocsModelOutputSingle**](ProvisioningDocsDocsModelOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_brand_family_family_model_model_template_get

> <ProvisioningDocsDocsTemplatesOutput> v1_ap_brand_brand_family_family_model_model_template_get(brand, family, model, opts)

Get Template List

Retrieve a list of all templates for a model within a brand (e.g., Yealink and Polycom).

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand
family = 'family_example' # String | family
model = 'model_example' # String | model
opts = {
  firmware: 'firmware_example', # String | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  status: 'active', # String | 
  template_name: 'template_name_example' # String | 
}

begin
  # Get Template List
  result = api_instance.v1_ap_brand_brand_family_family_model_model_template_get(brand, family, model, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_model_template_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_family_family_model_model_template_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsTemplatesOutput>, Integer, Hash)> v1_ap_brand_brand_family_family_model_model_template_get_with_http_info(brand, family, model, opts)

```ruby
begin
  # Get Template List
  data, status_code, headers = api_instance.v1_ap_brand_brand_family_family_model_model_template_get_with_http_info(brand, family, model, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsTemplatesOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_model_template_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand |  |
| **family** | **String** | family |  |
| **model** | **String** | model |  |
| **firmware** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **template_name** | **String** |  | [optional] |

### Return type

[**ProvisioningDocsDocsTemplatesOutput**](ProvisioningDocsDocsTemplatesOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_brand_family_family_model_model_template_template_get

> <ProvisioningDocsDocsTemplateOutputSingle> v1_ap_brand_brand_family_family_model_model_template_template_get(brand, family, model, template)

Get Template Details

Retrieve details about a template for a model by the randomly generated ID.

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand
family = 'family_example' # String | family
model = 'model_example' # String | model
template = 'template_example' # String | template

begin
  # Get Template Details
  result = api_instance.v1_ap_brand_brand_family_family_model_model_template_template_get(brand, family, model, template)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_model_template_template_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_family_family_model_model_template_template_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsTemplateOutputSingle>, Integer, Hash)> v1_ap_brand_brand_family_family_model_model_template_template_get_with_http_info(brand, family, model, template)

```ruby
begin
  # Get Template Details
  data, status_code, headers = api_instance.v1_ap_brand_brand_family_family_model_model_template_template_get_with_http_info(brand, family, model, template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsTemplateOutputSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_family_model_model_template_template_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand |  |
| **family** | **String** | family |  |
| **model** | **String** | model |  |
| **template** | **String** | template |  |

### Return type

[**ProvisioningDocsDocsTemplateOutputSingle**](ProvisioningDocsDocsTemplateOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_brand_family_get

> <ProvisioningDocsDocsFamilyOutput> v1_ap_brand_brand_family_get(brand, opts)

Get Family List

Retrieve a list of all families for a brand (e.g., Yealink and Polycom).

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand
opts = {
  family_name: 'family_name_example', # String | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  status: 'active' # String | 
}

begin
  # Get Family List
  result = api_instance.v1_ap_brand_brand_family_get(brand, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_family_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsFamilyOutput>, Integer, Hash)> v1_ap_brand_brand_family_get_with_http_info(brand, opts)

```ruby
begin
  # Get Family List
  data, status_code, headers = api_instance.v1_ap_brand_brand_family_get_with_http_info(brand, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsFamilyOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_family_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand |  |
| **family_name** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

### Return type

[**ProvisioningDocsDocsFamilyOutput**](ProvisioningDocsDocsFamilyOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_brand_get

> <ProvisioningDocsDocsBrandOutputSingle> v1_ap_brand_brand_get(brand)

Get Brand Details

Retrieve a brand's details by the randomly generated ID.

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

api_instance = OpenapiClient::ProvisioningApi.new
brand = 'brand_example' # String | brand id to retrieve a brand

begin
  # Get Brand Details
  result = api_instance.v1_ap_brand_brand_get(brand)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_get: #{e}"
end
```

#### Using the v1_ap_brand_brand_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsBrandOutputSingle>, Integer, Hash)> v1_ap_brand_brand_get_with_http_info(brand)

```ruby
begin
  # Get Brand Details
  data, status_code, headers = api_instance.v1_ap_brand_brand_get_with_http_info(brand)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsBrandOutputSingle>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_brand_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | brand id to retrieve a brand |  |

### Return type

[**ProvisioningDocsDocsBrandOutputSingle**](ProvisioningDocsDocsBrandOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_brand_get

> <ProvisioningDocsDocsBrandsOutput> v1_ap_brand_get(opts)

Get Brand List

Retrieve a list of all brands (e.g., Yealink and Polycom) by client.

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

api_instance = OpenapiClient::ProvisioningApi.new
opts = {
  brand_name: 'brand_name_example', # String | 
  page_size: 56, # Integer | 
  start_key: 'start_key_example', # String | 
  status: 'active' # String | 
}

begin
  # Get Brand List
  result = api_instance.v1_ap_brand_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_get: #{e}"
end
```

#### Using the v1_ap_brand_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsBrandsOutput>, Integer, Hash)> v1_ap_brand_get_with_http_info(opts)

```ruby
begin
  # Get Brand List
  data, status_code, headers = api_instance.v1_ap_brand_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsBrandsOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_brand_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand_name** | **String** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **start_key** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

### Return type

[**ProvisioningDocsDocsBrandsOutput**](ProvisioningDocsDocsBrandsOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_ap_configfile_generate_post

> <ProvisioningDocsDocsConfigFileOutput> v1_ap_configfile_generate_post(params)

Generate Config File

Generate a configuration file that includes a list of parameters passed to the specified template_id in the request payload, with populated values returned in the response.

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

api_instance = OpenapiClient::ProvisioningApi.new
params = OpenapiClient::ModelsGenerateConfigFileRequest.new({parameters: OpenapiClient::ModelsConfigFileParameter.new, template_file_id: 'template_file_id_example', template_id: 'template_id_example'}) # ModelsGenerateConfigFileRequest | body params to generate config file

begin
  # Generate Config File
  result = api_instance.v1_ap_configfile_generate_post(params)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_configfile_generate_post: #{e}"
end
```

#### Using the v1_ap_configfile_generate_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProvisioningDocsDocsConfigFileOutput>, Integer, Hash)> v1_ap_configfile_generate_post_with_http_info(params)

```ruby
begin
  # Generate Config File
  data, status_code, headers = api_instance.v1_ap_configfile_generate_post_with_http_info(params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProvisioningDocsDocsConfigFileOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProvisioningApi->v1_ap_configfile_generate_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **params** | [**ModelsGenerateConfigFileRequest**](ModelsGenerateConfigFileRequest.md) | body params to generate config file |  |

### Return type

[**ProvisioningDocsDocsConfigFileOutput**](ProvisioningDocsDocsConfigFileOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

