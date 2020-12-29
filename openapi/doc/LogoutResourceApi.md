# openapi.api.LogoutResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logoutUsingPOST**](LogoutResourceApi.md#logoutUsingPOST) | **post** /api/logout | logout


# **logoutUsingPOST**
> Object logoutUsingPOST(claims, tokenValue)

logout

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new LogoutResourceApi();
var claims = Object; // Object | 
var tokenValue = tokenValue_example; // String | 

try { 
    var result = api_instance.logoutUsingPOST(claims, tokenValue);
    print(result);
} catch (e) {
    print("Exception when calling LogoutResourceApi->logoutUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **claims** | [**Object**](.md)|  | [optional] [default to null]
 **tokenValue** | **String**|  | [optional] [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

