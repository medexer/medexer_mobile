# auth_sdk.api.HelpersApi

## Load the API package
```dart
import 'package:auth_sdk/api.dart';
```

All URIs are relative to *https://www.staging-api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authHelperControllerCheckEmailAvailability**](HelpersApi.md#authhelpercontrollercheckemailavailability) | **GET** /v1/auth/helper/availability/email | 
[**authHelperControllerCheckPhoneAvailability**](HelpersApi.md#authhelpercontrollercheckphoneavailability) | **GET** /v1/auth/helper/availability/phone | 


# **authHelperControllerCheckEmailAvailability**
> AvailabilityCheckResponsePayload authHelperControllerCheckEmailAvailability(email)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getHelpersApi();
final String email = email_example; // String | 

try {
    final response = api.authHelperControllerCheckEmailAvailability(email);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HelpersApi->authHelperControllerCheckEmailAvailability: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

[**AvailabilityCheckResponsePayload**](AvailabilityCheckResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authHelperControllerCheckPhoneAvailability**
> AvailabilityCheckResponsePayload authHelperControllerCheckPhoneAvailability(phone)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getHelpersApi();
final String phone = phone_example; // String | 

try {
    final response = api.authHelperControllerCheckPhoneAvailability(phone);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HelpersApi->authHelperControllerCheckPhoneAvailability: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**|  | 

### Return type

[**AvailabilityCheckResponsePayload**](AvailabilityCheckResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

