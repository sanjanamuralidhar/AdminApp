# openapi.api.GatewayResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activeRoutesUsingGET**](GatewayResourceApi.md#activeRoutesUsingGET) | **get** /api/gateway/routes | activeRoutes


# **activeRoutesUsingGET**
> List<RouteVM> activeRoutesUsingGET()

activeRoutes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new GatewayResourceApi();

try { 
    var result = api_instance.activeRoutesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling GatewayResourceApi->activeRoutesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<RouteVM>**](RouteVM.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

