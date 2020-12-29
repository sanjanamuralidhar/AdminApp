# openapi.api.AccountResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountUsingGET**](AccountResourceApi.md#getAccountUsingGET) | **get** /api/account | getAccount
[**isAuthenticatedUsingGET**](AccountResourceApi.md#isAuthenticatedUsingGET) | **get** /api/authenticate | isAuthenticated


# **getAccountUsingGET**
> UserDTO getAccountUsingGET(name)

getAccount

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AccountResourceApi();
var name = name_example; // String | 

try { 
    var result = api_instance.getAccountUsingGET(name);
    print(result);
} catch (e) {
    print("Exception when calling AccountResourceApi->getAccountUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] [default to null]

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isAuthenticatedUsingGET**
> String isAuthenticatedUsingGET()

isAuthenticated

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AccountResourceApi();

try { 
    var result = api_instance.isAuthenticatedUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling AccountResourceApi->isAuthenticatedUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

