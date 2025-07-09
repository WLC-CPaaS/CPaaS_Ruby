# OpenapiClient::E911Api

All URIs are relative to *http://api.beta.cpaaslabs.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_e911_get**](E911Api.md#v1_e911_get) | **GET** /v1/e911 | Get E911 List |
| [**v1_e911_location_location_id_activate_put**](E911Api.md#v1_e911_location_location_id_activate_put) | **PUT** /v1/e911/location/{locationID}/activate | Activate E911 Location |
| [**v1_e911_location_location_id_delete**](E911Api.md#v1_e911_location_location_id_delete) | **DELETE** /v1/e911/location/{locationID} | Delete E911 Location |
| [**v1_e911_location_validate_put**](E911Api.md#v1_e911_location_validate_put) | **PUT** /v1/e911/location/validate | Validate a Location |
| [**v1_e911_phone_number_delete**](E911Api.md#v1_e911_phone_number_delete) | **DELETE** /v1/e911/{phoneNumber} | Delete E911 Phone Number |
| [**v1_e911_phone_number_location_active_get**](E911Api.md#v1_e911_phone_number_location_active_get) | **GET** /v1/e911/{phoneNumber}/location/active | Get Actvie Location for a Phone Number |
| [**v1_e911_phone_number_location_get**](E911Api.md#v1_e911_phone_number_location_get) | **GET** /v1/e911/{phoneNumber}/location | Get Location List for Phone Number |
| [**v1_e911_post**](E911Api.md#v1_e911_post) | **POST** /v1/e911 | Create an E911 Location |


## v1_e911_get

> <ServiceDocsE911URIsApiOutput> v1_e911_get

Get E911 List

Obtain e911 URIs associated with the provided account ID.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new

begin
  # Get E911 List
  result = api_instance.v1_e911_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_get: #{e}"
end
```

#### Using the v1_e911_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911URIsApiOutput>, Integer, Hash)> v1_e911_get_with_http_info

```ruby
begin
  # Get E911 List
  data, status_code, headers = api_instance.v1_e911_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911URIsApiOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServiceDocsE911URIsApiOutput**](ServiceDocsE911URIsApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_e911_location_location_id_activate_put

> <ServiceDocsE911ActiveLocationOutput> v1_e911_location_location_id_activate_put(location_id)

Activate E911 Location

Edit the provision location.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
location_id = 'location_id_example' # String | Location ID

begin
  # Activate E911 Location
  result = api_instance.v1_e911_location_location_id_activate_put(location_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_location_location_id_activate_put: #{e}"
end
```

#### Using the v1_e911_location_location_id_activate_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911ActiveLocationOutput>, Integer, Hash)> v1_e911_location_location_id_activate_put_with_http_info(location_id)

```ruby
begin
  # Activate E911 Location
  data, status_code, headers = api_instance.v1_e911_location_location_id_activate_put_with_http_info(location_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911ActiveLocationOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_location_location_id_activate_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | Location ID |  |

### Return type

[**ServiceDocsE911ActiveLocationOutput**](ServiceDocsE911ActiveLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_e911_location_location_id_delete

> <ServiceDocsE911RemoveLocationOutput> v1_e911_location_location_id_delete(location_id)

Delete E911 Location

Remove the location.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
location_id = 'location_id_example' # String | Location ID

begin
  # Delete E911 Location
  result = api_instance.v1_e911_location_location_id_delete(location_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_location_location_id_delete: #{e}"
end
```

#### Using the v1_e911_location_location_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911RemoveLocationOutput>, Integer, Hash)> v1_e911_location_location_id_delete_with_http_info(location_id)

```ruby
begin
  # Delete E911 Location
  data, status_code, headers = api_instance.v1_e911_location_location_id_delete_with_http_info(location_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911RemoveLocationOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_location_location_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | Location ID |  |

### Return type

[**ServiceDocsE911RemoveLocationOutput**](ServiceDocsE911RemoveLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_e911_location_validate_put

> <ServiceDocsE911ValidateLocationOutput> v1_e911_location_validate_put(req_body)

Validate a Location

Validate the location details.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
req_body = OpenapiClient::ServiceE911ValidateLocationInput.new # ServiceE911ValidateLocationInput | location details

begin
  # Validate a Location
  result = api_instance.v1_e911_location_validate_put(req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_location_validate_put: #{e}"
end
```

#### Using the v1_e911_location_validate_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911ValidateLocationOutput>, Integer, Hash)> v1_e911_location_validate_put_with_http_info(req_body)

```ruby
begin
  # Validate a Location
  data, status_code, headers = api_instance.v1_e911_location_validate_put_with_http_info(req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911ValidateLocationOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_location_validate_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **req_body** | [**ServiceE911ValidateLocationInput**](ServiceE911ValidateLocationInput.md) | location details |  |

### Return type

[**ServiceDocsE911ValidateLocationOutput**](ServiceDocsE911ValidateLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_e911_phone_number_delete

> <ServiceDocsE911RemoveURIApiOutput> v1_e911_phone_number_delete(phone_number)

Delete E911 Phone Number

Delete the e911 URI connected with the account URI.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
phone_number = 'phone_number_example' # String | Phone Number

begin
  # Delete E911 Phone Number
  result = api_instance.v1_e911_phone_number_delete(phone_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_phone_number_delete: #{e}"
end
```

#### Using the v1_e911_phone_number_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911RemoveURIApiOutput>, Integer, Hash)> v1_e911_phone_number_delete_with_http_info(phone_number)

```ruby
begin
  # Delete E911 Phone Number
  data, status_code, headers = api_instance.v1_e911_phone_number_delete_with_http_info(phone_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911RemoveURIApiOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_phone_number_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Phone Number |  |

### Return type

[**ServiceDocsE911RemoveURIApiOutput**](ServiceDocsE911RemoveURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_e911_phone_number_location_active_get

> <ServiceDocsE911ActiveLocationURIApiOutput> v1_e911_phone_number_location_active_get(phone_number)

Get Actvie Location for a Phone Number

Get the e911 location connected with the URI.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
phone_number = 'phone_number_example' # String | Phone Number

begin
  # Get Actvie Location for a Phone Number
  result = api_instance.v1_e911_phone_number_location_active_get(phone_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_phone_number_location_active_get: #{e}"
end
```

#### Using the v1_e911_phone_number_location_active_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911ActiveLocationURIApiOutput>, Integer, Hash)> v1_e911_phone_number_location_active_get_with_http_info(phone_number)

```ruby
begin
  # Get Actvie Location for a Phone Number
  data, status_code, headers = api_instance.v1_e911_phone_number_location_active_get_with_http_info(phone_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911ActiveLocationURIApiOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_phone_number_location_active_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Phone Number |  |

### Return type

[**ServiceDocsE911ActiveLocationURIApiOutput**](ServiceDocsE911ActiveLocationURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_e911_phone_number_location_get

> <ServiceDocsE911LocationsURIApiOutput> v1_e911_phone_number_location_get(phone_number)

Get Location List for Phone Number

Access a list of the e911 locations associated with the provided URI.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
phone_number = 'phone_number_example' # String | Phone Number

begin
  # Get Location List for Phone Number
  result = api_instance.v1_e911_phone_number_location_get(phone_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_phone_number_location_get: #{e}"
end
```

#### Using the v1_e911_phone_number_location_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911LocationsURIApiOutput>, Integer, Hash)> v1_e911_phone_number_location_get_with_http_info(phone_number)

```ruby
begin
  # Get Location List for Phone Number
  data, status_code, headers = api_instance.v1_e911_phone_number_location_get_with_http_info(phone_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911LocationsURIApiOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_phone_number_location_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Phone Number |  |

### Return type

[**ServiceDocsE911LocationsURIApiOutput**](ServiceDocsE911LocationsURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_e911_post

> <ServiceDocsE911AddLocationOutput> v1_e911_post(req_body)

Create an E911 Location

Enter new location details.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::E911Api.new
req_body = OpenapiClient::ServiceE911AddLocationInput.new # ServiceE911AddLocationInput | location details

begin
  # Create an E911 Location
  result = api_instance.v1_e911_post(req_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_post: #{e}"
end
```

#### Using the v1_e911_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceDocsE911AddLocationOutput>, Integer, Hash)> v1_e911_post_with_http_info(req_body)

```ruby
begin
  # Create an E911 Location
  data, status_code, headers = api_instance.v1_e911_post_with_http_info(req_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceDocsE911AddLocationOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling E911Api->v1_e911_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **req_body** | [**ServiceE911AddLocationInput**](ServiceE911AddLocationInput.md) | location details |  |

### Return type

[**ServiceDocsE911AddLocationOutput**](ServiceDocsE911AddLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

