# donor_sdk.api.AppointmentApi

## Load the API package
```dart
import 'package:donor_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appointmentControllerAddDonationCenterRating**](AppointmentApi.md#appointmentcontrolleradddonationcenterrating) | **POST** /v1/donor/appointment/add-rating | 
[**appointmentControllerCreateAppointment**](AppointmentApi.md#appointmentcontrollercreateappointment) | **POST** /v1/donor/appointment/create | 
[**appointmentControllerGetCompletedAppointments**](AppointmentApi.md#appointmentcontrollergetcompletedappointments) | **GET** /v1/donor/appointment/completed-appointments | 
[**appointmentControllerGetPendingAppointments**](AppointmentApi.md#appointmentcontrollergetpendingappointments) | **GET** /v1/donor/appointment/pending-appointments | 


# **appointmentControllerAddDonationCenterRating**
> appointmentControllerAddDonationCenterRating(appointmentId, addDonationCenterRatingDTO)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();
final num appointmentId = 8.14; // num | Appointment ID
final AddDonationCenterRatingDTO addDonationCenterRatingDTO = ; // AddDonationCenterRatingDTO | 

try {
    api.appointmentControllerAddDonationCenterRating(appointmentId, addDonationCenterRatingDTO);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->appointmentControllerAddDonationCenterRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **num**| Appointment ID | 
 **addDonationCenterRatingDTO** | [**AddDonationCenterRatingDTO**](AddDonationCenterRatingDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appointmentControllerCreateAppointment**
> AppointmentInfo appointmentControllerCreateAppointment(donationCenter, createAppointmentDTO)



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();
final num donationCenter = 8.14; // num | Donation center ID
final CreateAppointmentDTO createAppointmentDTO = ; // CreateAppointmentDTO | 

try {
    final response = api.appointmentControllerCreateAppointment(donationCenter, createAppointmentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->appointmentControllerCreateAppointment: $e\n');
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

# **appointmentControllerGetCompletedAppointments**
> BuiltList<AppointmentInfo> appointmentControllerGetCompletedAppointments()



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();

try {
    final response = api.appointmentControllerGetCompletedAppointments();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->appointmentControllerGetCompletedAppointments: $e\n');
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

# **appointmentControllerGetPendingAppointments**
> BuiltList<AppointmentInfo> appointmentControllerGetPendingAppointments()



### Example
```dart
import 'package:donor_sdk/api.dart';

final api = DonorSdk().getAppointmentApi();

try {
    final response = api.appointmentControllerGetPendingAppointments();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AppointmentApi->appointmentControllerGetPendingAppointments: $e\n');
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

