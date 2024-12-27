# donor_sdk.api.DonationCenterApi

## Load the API package
```dart
import 'package:donor_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**donorControllerGetDonationCenterAppointmentAvailability**](DonationCenterApi.md#donorcontrollergetdonationcenterappointmentavailability) | **GET** /v1/donor/donation-center/{id}/appointment-availability | 
[**donorControllerGetDonationCenterDaysOfWork**](DonationCenterApi.md#donorcontrollergetdonationcenterdaysofwork) | **GET** /v1/donor/donation-center/{id}/days-of-work | 


# **donorControllerGetDonationCenterAppointmentAvailability**
> BuiltList<DonationCenterAvailability> donorControllerGetDonationCenterAppointmentAvailability(id)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getDonationCenterApi();
final num id = 8.14; // num | Donation center ID

try {
    final response = api.donorControllerGetDonationCenterAppointmentAvailability(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DonationCenterApi->donorControllerGetDonationCenterAppointmentAvailability: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| Donation center ID | 

### Return type

[**BuiltList&lt;DonationCenterAvailability&gt;**](DonationCenterAvailability.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **donorControllerGetDonationCenterDaysOfWork**
> BuiltList<DonationCentreDaysOfWork> donorControllerGetDonationCenterDaysOfWork(id)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getDonationCenterApi();
final num id = 8.14; // num | Donation center ID

try {
    final response = api.donorControllerGetDonationCenterDaysOfWork(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DonationCenterApi->donorControllerGetDonationCenterDaysOfWork: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| Donation center ID | 

### Return type

[**BuiltList&lt;DonationCentreDaysOfWork&gt;**](DonationCentreDaysOfWork.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

