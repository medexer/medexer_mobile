# account_sdk.api.MeApi

## Load the API package
```dart
import 'package:account_sdk/api.dart';
```

All URIs are relative to *https://www.staging-api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountControllerGetDetailedAccountInfo**](MeApi.md#accountcontrollergetdetailedaccountinfo) | **GET** /v1/account/me/detailed | 
[**accountControllerUpdateAccountPassword**](MeApi.md#accountcontrollerupdateaccountpassword) | **PATCH** /v1/account/me/update-password | 
[**accountControllerUpdateFcmToken**](MeApi.md#accountcontrollerupdatefcmtoken) | **PATCH** /v1/account/me/update-fcm-token | 


# **accountControllerGetDetailedAccountInfo**
> Account accountControllerGetDetailedAccountInfo()



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getMeApi();

try {
    final response = api.accountControllerGetDetailedAccountInfo();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MeApi->accountControllerGetDetailedAccountInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Account**](Account.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerUpdateAccountPassword**
> accountControllerUpdateAccountPassword(updateAccountPasswordDTO)



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getMeApi();
final UpdateAccountPasswordDTO updateAccountPasswordDTO = ; // UpdateAccountPasswordDTO | 

try {
    api.accountControllerUpdateAccountPassword(updateAccountPasswordDTO);
} catch on DioException (e) {
    print('Exception when calling MeApi->accountControllerUpdateAccountPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateAccountPasswordDTO** | [**UpdateAccountPasswordDTO**](UpdateAccountPasswordDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerUpdateFcmToken**
> accountControllerUpdateFcmToken(updateFCMTokenDTO)



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getMeApi();
final UpdateFCMTokenDTO updateFCMTokenDTO = ; // UpdateFCMTokenDTO | 

try {
    api.accountControllerUpdateFcmToken(updateFCMTokenDTO);
} catch on DioException (e) {
    print('Exception when calling MeApi->accountControllerUpdateFcmToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateFCMTokenDTO** | [**UpdateFCMTokenDTO**](UpdateFCMTokenDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

