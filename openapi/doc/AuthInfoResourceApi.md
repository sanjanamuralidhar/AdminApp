# openapi.api.AuthInfoResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuthInfoUsingGET**](AuthInfoResourceApi.md#getAuthInfoUsingGET) | **get** /api/auth-info | getAuthInfo


# **getAuthInfoUsingGET**
> AuthInfoVM getAuthInfoUsingGET()

getAuthInfo

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AuthInfoResourceApi();

try { 
    var result = api_instance.getAuthInfoUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling AuthInfoResourceApi->getAuthInfoUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthInfoVM**](AuthInfoVM.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

