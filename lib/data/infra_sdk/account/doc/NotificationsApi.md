# account_sdk.api.NotificationsApi

## Load the API package
```dart
import 'package:account_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountControllerGetNotifications**](NotificationsApi.md#accountcontrollergetnotifications) | **GET** /v1/account/me/notifications | 


# **accountControllerGetNotifications**
> BuiltList<NotificationInfo> accountControllerGetNotifications()



### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getNotificationsApi();

try {
    final response = api.accountControllerGetNotifications();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationsApi->accountControllerGetNotifications: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;NotificationInfo&gt;**](NotificationInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

