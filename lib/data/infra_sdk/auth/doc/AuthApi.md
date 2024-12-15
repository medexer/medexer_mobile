# auth_sdk.api.AuthApi

## Load the API package
```dart
import 'package:auth_sdk/api.dart';
```

All URIs are relative to *https://www.staging-api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerSigninAs**](AuthApi.md#authcontrollersigninas) | **POST** /v1/auth/signin/as | 
[**authControllerSigninDonor**](AuthApi.md#authcontrollersignindonor) | **POST** /v1/auth/signin | 
[**authControllerSigninOAuth**](AuthApi.md#authcontrollersigninoauth) | **POST** /v1/auth/signin-oauth | 
[**authControllerSignupCompleteVerification**](AuthApi.md#authcontrollersignupcompleteverification) | **POST** /v1/auth/signup-complete-verification | 
[**authControllerSignupDonationCenter**](AuthApi.md#authcontrollersignupdonationcenter) | **POST** /v1/auth/signup-donation-center | 
[**authControllerSignupDonor**](AuthApi.md#authcontrollersignupdonor) | **POST** /v1/auth/signup | 


# **authControllerSigninAs**
> SigninResponsePayload authControllerSigninAs(signinAsDTO)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getAuthApi();
final SigninAsDTO signinAsDTO = ; // SigninAsDTO | 

try {
    final response = api.authControllerSigninAs(signinAsDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSigninAs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinAsDTO** | [**SigninAsDTO**](SigninAsDTO.md)|  | 

### Return type

[**SigninResponsePayload**](SigninResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerSigninDonor**
> SigninResponsePayload authControllerSigninDonor(signinDTO)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getAuthApi();
final SigninDTO signinDTO = ; // SigninDTO | 

try {
    final response = api.authControllerSigninDonor(signinDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSigninDonor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinDTO** | [**SigninDTO**](SigninDTO.md)|  | 

### Return type

[**SigninResponsePayload**](SigninResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerSigninOAuth**
> SigninResponsePayload authControllerSigninOAuth(oAuthSigninDTO)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getAuthApi();
final OAuthSigninDTO oAuthSigninDTO = ; // OAuthSigninDTO | 

try {
    final response = api.authControllerSigninOAuth(oAuthSigninDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSigninOAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuthSigninDTO** | [**OAuthSigninDTO**](OAuthSigninDTO.md)|  | 

### Return type

[**SigninResponsePayload**](SigninResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerSignupCompleteVerification**
> SignupVerificationResponsePayload authControllerSignupCompleteVerification(completeSignupVerificationDTO)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getAuthApi();
final CompleteSignupVerificationDTO completeSignupVerificationDTO = ; // CompleteSignupVerificationDTO | 

try {
    final response = api.authControllerSignupCompleteVerification(completeSignupVerificationDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSignupCompleteVerification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **completeSignupVerificationDTO** | [**CompleteSignupVerificationDTO**](CompleteSignupVerificationDTO.md)|  | 

### Return type

[**SignupVerificationResponsePayload**](SignupVerificationResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerSignupDonationCenter**
> SigninResponsePayload authControllerSignupDonationCenter(createDonationCenterAccountDTO)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getAuthApi();
final CreateDonationCenterAccountDTO createDonationCenterAccountDTO = ; // CreateDonationCenterAccountDTO | 

try {
    final response = api.authControllerSignupDonationCenter(createDonationCenterAccountDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSignupDonationCenter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDonationCenterAccountDTO** | [**CreateDonationCenterAccountDTO**](CreateDonationCenterAccountDTO.md)|  | 

### Return type

[**SigninResponsePayload**](SigninResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerSignupDonor**
> SignupResponsePayload authControllerSignupDonor(createAccountDTO)



### Example
```dart
import 'package:auth_sdk/api.dart';

final api = AuthSdk().getAuthApi();
final CreateAccountDTO createAccountDTO = ; // CreateAccountDTO | 

try {
    final response = api.authControllerSignupDonor(createAccountDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSignupDonor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAccountDTO** | [**CreateAccountDTO**](CreateAccountDTO.md)|  | 

### Return type

[**SignupResponsePayload**](SignupResponsePayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

