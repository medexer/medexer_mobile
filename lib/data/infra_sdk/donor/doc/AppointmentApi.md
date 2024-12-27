# donor_sdk.api.AppointmentApi

## Load the API package
```dart
import 'package:donor_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**donorControllerCreateAppointment**](AppointmentApi.md#donorcontrollercreateappointment) | **POST** /v1/donor/create-appointment | 
[**donorControllerGetCompletedAppointments**](AppointmentApi.md#donorcontrollergetcompletedappointments) | **GET** /v1/donor/completed-appointments | 
[**donorControllerGetPendingAppointments**](AppointmentApi.md#donorcontrollergetpendingappointments) | **GET** /v1/donor/pending-appointments | 


# **donorControllerCreateAppointment**
> AppointmentInfo donorControllerCreateAppointment(donationCenter, createAppointmentDTO)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();
final num donationCenter = 8.14; // num | Donation center ID
final CreateAppointmentDTO createAppointmentDTO = ; // CreateAppointmentDTO | 

try {
    final response = api.donorControllerCreateAppointment(donationCenter, createAppointmentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->donorControllerCreateAppointment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **donationCenter** | **num**| Donation center ID | 
 **createAppointmentDTO** | [**CreateAppointmentDTO**](CreateAppointmentDTO.md)|  | 

### Return type

[**AppointmentInfo**](AppointmentInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **donorControllerGetCompletedAppointments**
> BuiltList<AppointmentInfo> donorControllerGetCompletedAppointments()



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();

try {
    final response = api.donorControllerGetCompletedAppointments();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->donorControllerGetCompletedAppointments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;AppointmentInfo&gt;**](AppointmentInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **donorControllerGetPendingAppointments**
> BuiltList<AppointmentInfo> donorControllerGetPendingAppointments()



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();

try {
    final response = api.donorControllerGetPendingAppointments();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->donorControllerGetPendingAppointments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;AppointmentInfo&gt;**](AppointmentInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

