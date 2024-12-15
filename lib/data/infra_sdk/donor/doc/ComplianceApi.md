# donor_sdk.api.ComplianceApi

## Load the API package
```dart
import 'package:donor_sdk/api.dart';
```

All URIs are relative to *https://www.staging-api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**donorControllerUploadCompliance**](ComplianceApi.md#donorcontrolleruploadcompliance) | **POST** /v1/donor/upload-compliance | 


# **donorControllerUploadCompliance**
> donorControllerUploadCompliance(uploadDonorComplianceDTO)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getComplianceApi();
final UploadDonorComplianceDTO uploadDonorComplianceDTO = ; // UploadDonorComplianceDTO | 

try {
    api.donorControllerUploadCompliance(uploadDonorComplianceDTO);
} catch on DioException (e) {
    print('Exception when calling ComplianceApi->donorControllerUploadCompliance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadDonorComplianceDTO** | [**UploadDonorComplianceDTO**](UploadDonorComplianceDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

