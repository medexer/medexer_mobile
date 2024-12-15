# account_sdk.api.ManageContactInfoApi

## Load the API package
```dart
import 'package:account_sdk/api.dart';
```

All URIs are relative to *https://www.staging-api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountControllerUpdateAccountEmail**](ManageContactInfoApi.md#accountcontrollerupdateaccountemail) | **POST** /v1/account/me/update-email | 
[**accountControllerUpdateAccountPhone**](ManageContactInfoApi.md#accountcontrollerupdateaccountphone) | **PATCH** /v1/account/me/update-phone | 
[**accountControllerVerifyNewAccountEmail**](ManageContactInfoApi.md#accountcontrollerverifynewaccountemail) | **PATCH** /v1/account/me/verify-new-email | 


# **accountControllerUpdateAccountEmail**
> accountControllerUpdateAccountEmail(updateAccountEmailDTO)



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getManageContactInfoApi();
final UpdateAccountEmailDTO updateAccountEmailDTO = ; // UpdateAccountEmailDTO | 

try {
    api.accountControllerUpdateAccountEmail(updateAccountEmailDTO);
} catch on DioException (e) {
    print('Exception when calling ManageContactInfoApi->accountControllerUpdateAccountEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateAccountEmailDTO** | [**UpdateAccountEmailDTO**](UpdateAccountEmailDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerUpdateAccountPhone**
> accountControllerUpdateAccountPhone(updateAccountPhoneDTO)



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getManageContactInfoApi();
final UpdateAccountPhoneDTO updateAccountPhoneDTO = ; // UpdateAccountPhoneDTO | 

try {
    api.accountControllerUpdateAccountPhone(updateAccountPhoneDTO);
} catch on DioException (e) {
    print('Exception when calling ManageContactInfoApi->accountControllerUpdateAccountPhone: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateAccountPhoneDTO** | [**UpdateAccountPhoneDTO**](UpdateAccountPhoneDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerVerifyNewAccountEmail**
> accountControllerVerifyNewAccountEmail(verifyNewAccountEmailDTO)



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getManageContactInfoApi();
final VerifyNewAccountEmailDTO verifyNewAccountEmailDTO = ; // VerifyNewAccountEmailDTO | 

try {
    api.accountControllerVerifyNewAccountEmail(verifyNewAccountEmailDTO);
} catch on DioException (e) {
    print('Exception when calling ManageContactInfoApi->accountControllerVerifyNewAccountEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyNewAccountEmailDTO** | [**VerifyNewAccountEmailDTO**](VerifyNewAccountEmailDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

