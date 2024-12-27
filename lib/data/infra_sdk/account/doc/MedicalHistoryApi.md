# account_sdk.api.MedicalHistoryApi

## Load the API package
```dart
import 'package:account_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountControllerGetMedicalHistory**](MedicalHistoryApi.md#accountcontrollergetmedicalhistory) | **GET** /v1/account/me/medical-history | 


# **accountControllerGetMedicalHistory**
> BuiltList<MedicalHistoryInfo> accountControllerGetMedicalHistory()



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getMedicalHistoryApi();

try {
    final response = api.accountControllerGetMedicalHistory();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MedicalHistoryApi->accountControllerGetMedicalHistory: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;MedicalHistoryInfo&gt;**](MedicalHistoryInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

