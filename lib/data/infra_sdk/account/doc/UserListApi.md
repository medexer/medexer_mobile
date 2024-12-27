# account_sdk.api.UserListApi

## Load the API package
```dart
import 'package:account_sdk/api.dart';
```

All URIs are relative to *https://www.api.medexer.livestocx.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listItemControllerAddItemToList**](UserListApi.md#listitemcontrolleradditemtolist) | **POST** /v1/account/list-items | Add an item to a user&#39;s list
[**listItemControllerGetUserList**](UserListApi.md#listitemcontrollergetuserlist) | **GET** /v1/account/list-items | Get all list items for the current user
[**listItemControllerRemoveItemFromList**](UserListApi.md#listitemcontrollerremoveitemfromlist) | **DELETE** /v1/account/list-items/{itemId} | Remove an item from a user&#39;s list


# **listItemControllerAddItemToList**
> ListItemInfo listItemControllerAddItemToList(addListItemDTO)

Add an item to a user's list

### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getUserListApi();
final AddListItemDTO addListItemDTO = ; // AddListItemDTO | 

try {
    final response = api.listItemControllerAddItemToList(addListItemDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserListApi->listItemControllerAddItemToList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addListItemDTO** | [**AddListItemDTO**](AddListItemDTO.md)|  | 

### Return type

[**ListItemInfo**](ListItemInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listItemControllerGetUserList**
> BuiltList<ListItemInfo> listItemControllerGetUserList()

Get all list items for the current user

### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getUserListApi();

try {
    final response = api.listItemControllerGetUserList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserListApi->listItemControllerGetUserList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ListItemInfo&gt;**](ListItemInfo.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listItemControllerRemoveItemFromList**
> listItemControllerRemoveItemFromList(itemId)

Remove an item from a user's list

### Example
```dart
import 'package:account_sdk/api.dart';

final api = AccountSdk().getUserListApi();
final num itemId = 8.14; // num | ID of the list item to remove

try {
    api.listItemControllerRemoveItemFromList(itemId);
} catch on DioException (e) {
    print('Exception when calling UserListApi->listItemControllerRemoveItemFromList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **num**| ID of the list item to remove | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

