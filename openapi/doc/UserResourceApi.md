# openapi.api.UserResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllUsersUsingGET**](UserResourceApi.md#getAllUsersUsingGET) | **get** /api/users | getAllUsers
[**getAuthoritiesUsingGET**](UserResourceApi.md#getAuthoritiesUsingGET) | **get** /api/users/authorities | getAuthorities
[**getUserUsingGET**](UserResourceApi.md#getUserUsingGET) | **get** /api/users/{login} | getUser


# **getAllUsersUsingGET**
> List<UserDTO> getAllUsersUsingGET(page, size, sort)

getAllUsers

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllUsersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getAllUsersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<UserDTO>**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthoritiesUsingGET**
> List<String> getAuthoritiesUsingGET()

getAuthorities

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();

try { 
    var result = api_instance.getAuthoritiesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getAuthoritiesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsingGET**
> UserDTO getUserUsingGET(login)

getUser

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var login = login_example; // String | login

try { 
    var result = api_instance.getUserUsingGET(login);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getUserUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | [default to null]

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

