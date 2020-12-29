# openapi.api.CommandResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claimOfferUsingPOST**](CommandResourceApi.md#claimOfferUsingPOST) | **post** /api/command/offers/claim-offer | claimOffer
[**createAboutUsUsingPOST**](CommandResourceApi.md#createAboutUsUsingPOST) | **post** /api/command/about | createAboutUs
[**createBannerUsingPOST**](CommandResourceApi.md#createBannerUsingPOST) | **post** /api/command/banners | createBanner
[**createCancellationRequestUsingPOST**](CommandResourceApi.md#createCancellationRequestUsingPOST) | **post** /api/command/cancellation-requests | createCancellationRequest
[**createCancelledAuxilaryOrderLineByListUsingPOST**](CommandResourceApi.md#createCancelledAuxilaryOrderLineByListUsingPOST) | **post** /api/command/createCancelledAuxilaryOrderLineByList | createCancelledAuxilaryOrderLineByList
[**createCancelledOrderLineByListUsingPOST**](CommandResourceApi.md#createCancelledOrderLineByListUsingPOST) | **post** /api/command/createCancelledOrderLineByList | createCancelledOrderLineByList
[**createCancelledOrderLineUsingPOST**](CommandResourceApi.md#createCancelledOrderLineUsingPOST) | **post** /api/command/cancelled-order-lines | createCancelledOrderLine
[**createDeductionValueTypeUsingPOST**](CommandResourceApi.md#createDeductionValueTypeUsingPOST) | **post** /api/command/deduction-value-types | createDeductionValueType
[**createNotificationUsingPOST**](CommandResourceApi.md#createNotificationUsingPOST) | **post** /api/command/notifications | createNotification
[**createOfferUsingPOST**](CommandResourceApi.md#createOfferUsingPOST) | **post** /api/command/offers/create-offer | createOffer
[**createRefundDetailsUsingPOST**](CommandResourceApi.md#createRefundDetailsUsingPOST) | **post** /api/command/refund-details/{orderId} | createRefundDetails
[**createRefundUsingPOST**](CommandResourceApi.md#createRefundUsingPOST) | **post** /api/command/create/refundDetails/{orderId}/{paymentId} | createRefund
[**createSubTermUsingPOST**](CommandResourceApi.md#createSubTermUsingPOST) | **post** /api/command/sub-term | createSubTerm
[**createTermUsingPOST**](CommandResourceApi.md#createTermUsingPOST) | **post** /api/command/term | createTerm
[**deleteAboutUsUsingDELETE**](CommandResourceApi.md#deleteAboutUsUsingDELETE) | **delete** /api/command/about/{id} | deleteAboutUs
[**deleteBannerUsingDELETE**](CommandResourceApi.md#deleteBannerUsingDELETE) | **delete** /api/command/banners/{id} | deleteBanner
[**deleteCancellationRequestUsingDELETE**](CommandResourceApi.md#deleteCancellationRequestUsingDELETE) | **delete** /api/command/cancellation-requests/{id} | deleteCancellationRequest
[**deleteCancelledOrderLineUsingDELETE**](CommandResourceApi.md#deleteCancelledOrderLineUsingDELETE) | **delete** /api/command/cancelled-order-lines/{id} | deleteCancelledOrderLine
[**deleteNotificationUsingDELETE**](CommandResourceApi.md#deleteNotificationUsingDELETE) | **delete** /api/command/notifications/{id} | deleteNotification
[**deleteRefundDetailsUsingDELETE**](CommandResourceApi.md#deleteRefundDetailsUsingDELETE) | **delete** /api/command/refund-details/{id} | deleteRefundDetails
[**deleteSubTermUsingDELETE**](CommandResourceApi.md#deleteSubTermUsingDELETE) | **delete** /api/command/sub-term/{id} | deleteSubTerm
[**deleteTermUsingDELETE**](CommandResourceApi.md#deleteTermUsingDELETE) | **delete** /api/command/term/{id} | deleteTerm
[**updateAboutUsUsingPUT**](CommandResourceApi.md#updateAboutUsUsingPUT) | **put** /api/command/about | updateAboutUs
[**updateBannerUsingPUT**](CommandResourceApi.md#updateBannerUsingPUT) | **put** /api/command/banners | updateBanner
[**updateCancellationRequestUsingPUT**](CommandResourceApi.md#updateCancellationRequestUsingPUT) | **put** /api/command/cancellation-requests | updateCancellationRequest
[**updateCancelledOrderLineUsingPUT**](CommandResourceApi.md#updateCancelledOrderLineUsingPUT) | **put** /api/command/cancelled-order-lines | updateCancelledOrderLine
[**updateNotificationUsingPUT**](CommandResourceApi.md#updateNotificationUsingPUT) | **put** /api/command/notifications | updateNotification
[**updateRefundDetailsUsingPUT**](CommandResourceApi.md#updateRefundDetailsUsingPUT) | **put** /api/command/refund-details | updateRefundDetails
[**updateSubTermUsingPUT**](CommandResourceApi.md#updateSubTermUsingPUT) | **put** /api/command/sub-term | updateSubTerm
[**updateTermUsingPUT**](CommandResourceApi.md#updateTermUsingPUT) | **put** /api/command/term | updateTerm


# **claimOfferUsingPOST**
> OrderModel claimOfferUsingPOST(orderModel)

claimOffer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var orderModel = new OrderModel(); // OrderModel | orderModel

try { 
    var result = api_instance.claimOfferUsingPOST(orderModel);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->claimOfferUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderModel** | [**OrderModel**](OrderModel.md)| orderModel | 

### Return type

[**OrderModel**](OrderModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAboutUsUsingPOST**
> AboutDTO createAboutUsUsingPOST(aboutDTO)

createAboutUs

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var aboutDTO = new AboutDTO(); // AboutDTO | aboutDTO

try { 
    var result = api_instance.createAboutUsUsingPOST(aboutDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createAboutUsUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aboutDTO** | [**AboutDTO**](AboutDTO.md)| aboutDTO | 

### Return type

[**AboutDTO**](AboutDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBannerUsingPOST**
> BannerDTO createBannerUsingPOST(bannerDTO)

createBanner

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var bannerDTO = new BannerDTO(); // BannerDTO | bannerDTO

try { 
    var result = api_instance.createBannerUsingPOST(bannerDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createBannerUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bannerDTO** | [**BannerDTO**](BannerDTO.md)| bannerDTO | 

### Return type

[**BannerDTO**](BannerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCancellationRequestUsingPOST**
> CancellationRequestDTO createCancellationRequestUsingPOST(cancellationRequestDTO)

createCancellationRequest

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var cancellationRequestDTO = new CancellationRequestDTO(); // CancellationRequestDTO | cancellationRequestDTO

try { 
    var result = api_instance.createCancellationRequestUsingPOST(cancellationRequestDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createCancellationRequestUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancellationRequestDTO** | [**CancellationRequestDTO**](CancellationRequestDTO.md)| cancellationRequestDTO | 

### Return type

[**CancellationRequestDTO**](CancellationRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCancelledAuxilaryOrderLineByListUsingPOST**
> createCancelledAuxilaryOrderLineByListUsingPOST(cancelledAuxilaryOrderLineDTOList)

createCancelledAuxilaryOrderLineByList

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var cancelledAuxilaryOrderLineDTOList = [new List&lt;CancelledAuxilaryOrderLineDTO&gt;()]; // List<CancelledAuxilaryOrderLineDTO> | cancelledAuxilaryOrderLineDTOList

try { 
    api_instance.createCancelledAuxilaryOrderLineByListUsingPOST(cancelledAuxilaryOrderLineDTOList);
} catch (e) {
    print("Exception when calling CommandResourceApi->createCancelledAuxilaryOrderLineByListUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelledAuxilaryOrderLineDTOList** | [**List&lt;CancelledAuxilaryOrderLineDTO&gt;**](CancelledAuxilaryOrderLineDTO.md)| cancelledAuxilaryOrderLineDTOList | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCancelledOrderLineByListUsingPOST**
> createCancelledOrderLineByListUsingPOST(cancelledOrderLineDTOList)

createCancelledOrderLineByList

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var cancelledOrderLineDTOList = [new List&lt;CancelledOrderLineDTO&gt;()]; // List<CancelledOrderLineDTO> | cancelledOrderLineDTOList

try { 
    api_instance.createCancelledOrderLineByListUsingPOST(cancelledOrderLineDTOList);
} catch (e) {
    print("Exception when calling CommandResourceApi->createCancelledOrderLineByListUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelledOrderLineDTOList** | [**List&lt;CancelledOrderLineDTO&gt;**](CancelledOrderLineDTO.md)| cancelledOrderLineDTOList | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCancelledOrderLineUsingPOST**
> CancelledOrderLineDTO createCancelledOrderLineUsingPOST(cancelledOrderLineDTO)

createCancelledOrderLine

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var cancelledOrderLineDTO = new CancelledOrderLineDTO(); // CancelledOrderLineDTO | cancelledOrderLineDTO

try { 
    var result = api_instance.createCancelledOrderLineUsingPOST(cancelledOrderLineDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createCancelledOrderLineUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelledOrderLineDTO** | [**CancelledOrderLineDTO**](CancelledOrderLineDTO.md)| cancelledOrderLineDTO | 

### Return type

[**CancelledOrderLineDTO**](CancelledOrderLineDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDeductionValueTypeUsingPOST**
> DeductionValueTypeDTO createDeductionValueTypeUsingPOST(deductionValueTypeDTO)

createDeductionValueType

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var deductionValueTypeDTO = new DeductionValueTypeDTO(); // DeductionValueTypeDTO | deductionValueTypeDTO

try { 
    var result = api_instance.createDeductionValueTypeUsingPOST(deductionValueTypeDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createDeductionValueTypeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deductionValueTypeDTO** | [**DeductionValueTypeDTO**](DeductionValueTypeDTO.md)| deductionValueTypeDTO | 

### Return type

[**DeductionValueTypeDTO**](DeductionValueTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNotificationUsingPOST**
> NotificationDTO createNotificationUsingPOST(notificationDTO)

createNotification

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var notificationDTO = new NotificationDTO(); // NotificationDTO | notificationDTO

try { 
    var result = api_instance.createNotificationUsingPOST(notificationDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createNotificationUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationDTO** | [**NotificationDTO**](NotificationDTO.md)| notificationDTO | 

### Return type

[**NotificationDTO**](NotificationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOfferUsingPOST**
> OfferModel createOfferUsingPOST(offerModel)

createOffer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var offerModel = new OfferModel(); // OfferModel | offerModel

try { 
    var result = api_instance.createOfferUsingPOST(offerModel);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createOfferUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offerModel** | [**OfferModel**](OfferModel.md)| offerModel | 

### Return type

[**OfferModel**](OfferModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRefundDetailsUsingPOST**
> RefundDetailsDTO createRefundDetailsUsingPOST(orderId, refundDetailsDTO)

createRefundDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var orderId = orderId_example; // String | orderId
var refundDetailsDTO = new RefundDetailsDTO(); // RefundDetailsDTO | refundDetailsDTO

try { 
    var result = api_instance.createRefundDetailsUsingPOST(orderId, refundDetailsDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createRefundDetailsUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]
 **refundDetailsDTO** | [**RefundDetailsDTO**](RefundDetailsDTO.md)| refundDetailsDTO | 

### Return type

[**RefundDetailsDTO**](RefundDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRefundUsingPOST**
> RefundDetailsDTO createRefundUsingPOST(orderId, paymentId, refundDetailsDTO)

createRefund

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var orderId = orderId_example; // String | orderId
var paymentId = paymentId_example; // String | paymentId
var refundDetailsDTO = new RefundDTO(); // RefundDTO | refundDetailsDTO

try { 
    var result = api_instance.createRefundUsingPOST(orderId, paymentId, refundDetailsDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createRefundUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]
 **paymentId** | **String**| paymentId | [default to null]
 **refundDetailsDTO** | [**RefundDTO**](RefundDTO.md)| refundDetailsDTO | 

### Return type

[**RefundDetailsDTO**](RefundDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSubTermUsingPOST**
> SubTermDTO createSubTermUsingPOST(subTermDTO)

createSubTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var subTermDTO = new SubTermDTO(); // SubTermDTO | subTermDTO

try { 
    var result = api_instance.createSubTermUsingPOST(subTermDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createSubTermUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subTermDTO** | [**SubTermDTO**](SubTermDTO.md)| subTermDTO | 

### Return type

[**SubTermDTO**](SubTermDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTermUsingPOST**
> Term createTermUsingPOST(term)

createTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var term = new Term(); // Term | term

try { 
    var result = api_instance.createTermUsingPOST(term);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createTermUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | [**Term**](Term.md)| term | 

### Return type

[**Term**](Term.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAboutUsUsingDELETE**
> deleteAboutUsUsingDELETE(id)

deleteAboutUs

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteAboutUsUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteAboutUsUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBannerUsingDELETE**
> deleteBannerUsingDELETE(id)

deleteBanner

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteBannerUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteBannerUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCancellationRequestUsingDELETE**
> deleteCancellationRequestUsingDELETE(id)

deleteCancellationRequest

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCancellationRequestUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteCancellationRequestUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCancelledOrderLineUsingDELETE**
> deleteCancelledOrderLineUsingDELETE(id)

deleteCancelledOrderLine

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCancelledOrderLineUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteCancelledOrderLineUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNotificationUsingDELETE**
> deleteNotificationUsingDELETE(id)

deleteNotification

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteNotificationUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteNotificationUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRefundDetailsUsingDELETE**
> deleteRefundDetailsUsingDELETE(id)

deleteRefundDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteRefundDetailsUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteRefundDetailsUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubTermUsingDELETE**
> deleteSubTermUsingDELETE(id)

deleteSubTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteSubTermUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteSubTermUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTermUsingDELETE**
> deleteTermUsingDELETE(id)

deleteTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteTermUsingDELETE(id);
} catch (e) {
    print("Exception when calling CommandResourceApi->deleteTermUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAboutUsUsingPUT**
> AboutDTO updateAboutUsUsingPUT(aboutDTO)

updateAboutUs

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var aboutDTO = new AboutDTO(); // AboutDTO | aboutDTO

try { 
    var result = api_instance.updateAboutUsUsingPUT(aboutDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateAboutUsUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aboutDTO** | [**AboutDTO**](AboutDTO.md)| aboutDTO | 

### Return type

[**AboutDTO**](AboutDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBannerUsingPUT**
> BannerDTO updateBannerUsingPUT(bannerDTO)

updateBanner

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var bannerDTO = new BannerDTO(); // BannerDTO | bannerDTO

try { 
    var result = api_instance.updateBannerUsingPUT(bannerDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateBannerUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bannerDTO** | [**BannerDTO**](BannerDTO.md)| bannerDTO | 

### Return type

[**BannerDTO**](BannerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCancellationRequestUsingPUT**
> CancellationRequestDTO updateCancellationRequestUsingPUT(cancellationRequestDTO)

updateCancellationRequest

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var cancellationRequestDTO = new CancellationRequestDTO(); // CancellationRequestDTO | cancellationRequestDTO

try { 
    var result = api_instance.updateCancellationRequestUsingPUT(cancellationRequestDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateCancellationRequestUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancellationRequestDTO** | [**CancellationRequestDTO**](CancellationRequestDTO.md)| cancellationRequestDTO | 

### Return type

[**CancellationRequestDTO**](CancellationRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCancelledOrderLineUsingPUT**
> CancelledOrderLineDTO updateCancelledOrderLineUsingPUT(cancelledOrderLineDTO)

updateCancelledOrderLine

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var cancelledOrderLineDTO = new CancelledOrderLineDTO(); // CancelledOrderLineDTO | cancelledOrderLineDTO

try { 
    var result = api_instance.updateCancelledOrderLineUsingPUT(cancelledOrderLineDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateCancelledOrderLineUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelledOrderLineDTO** | [**CancelledOrderLineDTO**](CancelledOrderLineDTO.md)| cancelledOrderLineDTO | 

### Return type

[**CancelledOrderLineDTO**](CancelledOrderLineDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNotificationUsingPUT**
> NotificationDTO updateNotificationUsingPUT(notificationDTO)

updateNotification

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var notificationDTO = new NotificationDTO(); // NotificationDTO | notificationDTO

try { 
    var result = api_instance.updateNotificationUsingPUT(notificationDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateNotificationUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationDTO** | [**NotificationDTO**](NotificationDTO.md)| notificationDTO | 

### Return type

[**NotificationDTO**](NotificationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRefundDetailsUsingPUT**
> RefundDetailsDTO updateRefundDetailsUsingPUT(refundDetailsDTO)

updateRefundDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var refundDetailsDTO = new RefundDetailsDTO(); // RefundDetailsDTO | refundDetailsDTO

try { 
    var result = api_instance.updateRefundDetailsUsingPUT(refundDetailsDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateRefundDetailsUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refundDetailsDTO** | [**RefundDetailsDTO**](RefundDetailsDTO.md)| refundDetailsDTO | 

### Return type

[**RefundDetailsDTO**](RefundDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubTermUsingPUT**
> SubTermDTO updateSubTermUsingPUT(subTermDTO)

updateSubTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var subTermDTO = new SubTermDTO(); // SubTermDTO | subTermDTO

try { 
    var result = api_instance.updateSubTermUsingPUT(subTermDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateSubTermUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subTermDTO** | [**SubTermDTO**](SubTermDTO.md)| subTermDTO | 

### Return type

[**SubTermDTO**](SubTermDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTermUsingPUT**
> TermDTO updateTermUsingPUT(termDTO)

updateTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var termDTO = new TermDTO(); // TermDTO | termDTO

try { 
    var result = api_instance.updateTermUsingPUT(termDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->updateTermUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **termDTO** | [**TermDTO**](TermDTO.md)| termDTO | 

### Return type

[**TermDTO**](TermDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

