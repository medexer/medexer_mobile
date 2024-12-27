# donor_sdk.api.FeedApi

## Load the API package
```dart
import 'package:donor_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**donorControllerGetDonationCenter**](FeedApi.md#donorcontrollergetdonationcenter) | **GET** /v1/donor/donation-center/{id} | 
[**donorControllerGetDonationCenters**](FeedApi.md#donorcontrollergetdonationcenters) | **GET** /v1/donor/donation-centers | 


# **donorControllerGetDonationCenter**
> DonationCenterInfo donorControllerGetDonationCenter(id)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getFeedApi();
final num id = 8.14; // num | 

try {
    final response = api.donorControllerGetDonationCenter(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FeedApi->donorControllerGetDonationCenter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 

### Return type

[**DonationCenterInfo**](DonationCenterInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **donorControllerGetDonationCenters**
> BuiltList<DonationCenterInfo> donorControllerGetDonationCenters()



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getFeedApi();

try {
    final response = api.donorControllerGetDonationCenters();
    print(response);
} catch on DioException (e) {
    print('Exception when calling FeedApi->donorControllerGetDonationCenters: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DonationCenterInfo&gt;**](DonationCenterInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

