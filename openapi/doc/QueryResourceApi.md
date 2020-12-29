# openapi.api.QueryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.121.106.101:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancellationSummaryForViewUsingGET**](QueryResourceApi.md#cancellationSummaryForViewUsingGET) | **get** /api/query/cancellationview/{date}/{storeName} | cancellationSummaryForView
[**createReportSummaryUsingGET**](QueryResourceApi.md#createReportSummaryUsingGET) | **get** /api/query/reportview/{date} | createReportSummary
[**findAboutByIdUsingGET**](QueryResourceApi.md#findAboutByIdUsingGET) | **get** /api/query/about/{id} | findAboutById
[**findAllCancellationRequestsUsingGET**](QueryResourceApi.md#findAllCancellationRequestsUsingGET) | **get** /api/query/findAllCancellationRequests | findAllCancellationRequests
[**findAllFeedBackUsingGET**](QueryResourceApi.md#findAllFeedBackUsingGET) | **get** /api/query/findAllFeedBack | findAllFeedBack
[**findAuxItemsByIdUsingGET**](QueryResourceApi.md#findAuxItemsByIdUsingGET) | **get** /api/query/findAuxItemsLinesById/{id} | findAuxItemsById
[**findBannerByStoreIdUsingGET**](QueryResourceApi.md#findBannerByStoreIdUsingGET) | **get** /api/query/findBannerByStoreId/{storeId} | findBannerByStoreId
[**findCancellationDetailsByIdUsingGET**](QueryResourceApi.md#findCancellationDetailsByIdUsingGET) | **get** /api/query/findCancellationDetailsById/{id} | findCancellationDetailsById
[**findCancellationRequestByStatusUsingGET**](QueryResourceApi.md#findCancellationRequestByStatusUsingGET) | **get** /api/query/findCancellationRequestByStatus/{statusName}/{date} | findCancellationRequestByStatus
[**findCustomerByCustomerUniqueIdUsingGET**](QueryResourceApi.md#findCustomerByCustomerUniqueIdUsingGET) | **get** /api/query/findCustomerByCustomerUniqueId/{customerUniqueId} | findCustomerByCustomerUniqueId
[**findOfferLinesByOrderNumberUsingGET**](QueryResourceApi.md#findOfferLinesByOrderNumberUsingGET) | **get** /api/query/findOfferLinesByOrderNumber/{orderId} | findOfferLinesByOrderNumber
[**findOrderByDatebetweenAndStoreIdUsingGET**](QueryResourceApi.md#findOrderByDatebetweenAndStoreIdUsingGET) | **get** /api/query/findOrderByDatebetweenAndStoreId/{from}/{storeId}/{to} | findOrderByDatebetweenAndStoreId
[**findOrderByOrderIdUsingGET**](QueryResourceApi.md#findOrderByOrderIdUsingGET) | **get** /api/query/findOrderByOrderId/{orderId} | findOrderByOrderId
[**findOrderCountByDateAndStatusNameUsingGET**](QueryResourceApi.md#findOrderCountByDateAndStatusNameUsingGET) | **get** /api/query/findOrderCountByDateAndStatusName/{date}/{statusName} | findOrderCountByDateAndStatusName
[**findOrderCountByStatusNameUsingGET**](QueryResourceApi.md#findOrderCountByStatusNameUsingGET) | **get** /api/query/findOrderCountByStatusName/{statusName} | findOrderCountByStatusName
[**findOrderLinesByOrderNumberUsingGET**](QueryResourceApi.md#findOrderLinesByOrderNumberUsingGET) | **get** /api/query/findOrderLinesByOrderNumber/{orderId} | findOrderLinesByOrderNumber
[**findOrderMasterByExpectedDeliveryBetweenUsingGET**](QueryResourceApi.md#findOrderMasterByExpectedDeliveryBetweenUsingGET) | **get** /api/query/findOrderMasterByExpectedDeliveryBetween/{from}/{to} | findOrderMasterByExpectedDeliveryBetween
[**findOrderMasterByOrderMasterUsingGET**](QueryResourceApi.md#findOrderMasterByOrderMasterUsingGET) | **get** /api/query/findOrderMasterByOrderNumber/{orderNumber} | findOrderMasterByOrderMaster
[**findOrderMasterCountByExpectedDeliveryBetweenUsingGET**](QueryResourceApi.md#findOrderMasterCountByExpectedDeliveryBetweenUsingGET) | **get** /api/query/findOrderMasterCountByExpectedDeliveryBetween/{from}/{to} | findOrderMasterCountByExpectedDeliveryBetween
[**findOrdersByOrderIdUsingGET**](QueryResourceApi.md#findOrdersByOrderIdUsingGET) | **get** /api/query/findOrdersByOrderId/{orderId} | findOrdersByOrderId
[**findRefundDetailUsingGET**](QueryResourceApi.md#findRefundDetailUsingGET) | **get** /api/query/getRefundDetailById/{id} | findRefundDetail
[**findStoreBySearchTermUsingGET**](QueryResourceApi.md#findStoreBySearchTermUsingGET) | **get** /api/query/findStore/{name} | findStoreBySearchTerm
[**findSubTermByIdUsingGET**](QueryResourceApi.md#findSubTermByIdUsingGET) | **get** /api/query/subTerm/{id} | findSubTermById
[**findTermByIdUsingGET**](QueryResourceApi.md#findTermByIdUsingGET) | **get** /api/query/term/{id} | findTermById
[**findallaboutUsingGET**](QueryResourceApi.md#findallaboutUsingGET) | **get** /api/query/findallabout | findallabout
[**findalltermsUsingGET**](QueryResourceApi.md#findalltermsUsingGET) | **get** /api/query/findallterms | findallterms
[**getAllBannersUsingGET**](QueryResourceApi.md#getAllBannersUsingGET) | **get** /api/query/banners | getAllBanners
[**getAllCancellationRequestsUsingGET**](QueryResourceApi.md#getAllCancellationRequestsUsingGET) | **get** /api/query/cancellation-requests | getAllCancellationRequests
[**getAllCancelledOrderLinesUsingGET**](QueryResourceApi.md#getAllCancelledOrderLinesUsingGET) | **get** /api/query/cancelled-order-lines | getAllCancelledOrderLines
[**getAllDeductionValueTypesUsingGET**](QueryResourceApi.md#getAllDeductionValueTypesUsingGET) | **get** /api/query/offers/get-all-deduction-value-types | getAllDeductionValueTypes
[**getAllNotificationsUsingGET**](QueryResourceApi.md#getAllNotificationsUsingGET) | **get** /api/query/notifications | getAllNotifications
[**getAllOffersUsingGET**](QueryResourceApi.md#getAllOffersUsingGET) | **get** /api/query/offers/get-all-offers | getAllOffers
[**getAllRefundDetailsUsingGET**](QueryResourceApi.md#getAllRefundDetailsUsingGET) | **get** /api/query/refund-details | getAllRefundDetails
[**getBannerUsingGET**](QueryResourceApi.md#getBannerUsingGET) | **get** /api/query/banners/{id} | getBanner
[**getCancellationReportAsPdfUsingGET**](QueryResourceApi.md#getCancellationReportAsPdfUsingGET) | **get** /api/query/cancellationSummary/{date}/{storeName} | getCancellationReportAsPdf
[**getCancellationRequestByOrderIdUsingGET**](QueryResourceApi.md#getCancellationRequestByOrderIdUsingGET) | **get** /api/query/getCancellationRequest/{orderId} | getCancellationRequestByOrderId
[**getCancellationRequestUsingGET**](QueryResourceApi.md#getCancellationRequestUsingGET) | **get** /api/query/cancellation-requests/{id} | getCancellationRequest
[**getCancelledOrderLineUsingGET**](QueryResourceApi.md#getCancelledOrderLineUsingGET) | **get** /api/query/cancelled-order-lines/{id} | getCancelledOrderLine
[**getNotificationUsingGET**](QueryResourceApi.md#getNotificationUsingGET) | **get** /api/query/notifications/{id} | getNotification
[**getOfferByIdUsingGET**](QueryResourceApi.md#getOfferByIdUsingGET) | **get** /api/query/offers/get-offer-by-id/{id} | getOfferById
[**getOrderMasterByOrderNumberUsingGET**](QueryResourceApi.md#getOrderMasterByOrderNumberUsingGET) | **get** /api/query/getOrderMasterByOrderNumber/{orderNumber} | getOrderMasterByOrderNumber
[**getOrderSummaryByDateAndStoreNameUsingGET**](QueryResourceApi.md#getOrderSummaryByDateAndStoreNameUsingGET) | **get** /api/query/getOrderSummaryByDateAndStoreName/{date}/{storeId} | getOrderSummaryByDateAndStoreName
[**getOrdersByFilterUsingGET**](QueryResourceApi.md#getOrdersByFilterUsingGET) | **get** /api/query/getOrdersByFilter/{fromDate}/{toDate} | getOrdersByFilter
[**getOrdersPdfByFilterUsingGET**](QueryResourceApi.md#getOrdersPdfByFilterUsingGET) | **get** /api/query/getOrdersPdfByFilter/{fromDate}/{toDate} | getOrdersPdfByFilter
[**getRefundDetailsUsingGET**](QueryResourceApi.md#getRefundDetailsUsingGET) | **get** /api/query/refund-details/{id} | getRefundDetails
[**getReportSummaryAsPdfUsingGET**](QueryResourceApi.md#getReportSummaryAsPdfUsingGET) | **get** /api/query/reportSummary/{date} | getReportSummaryAsPdf
[**getReportWithAuxAndComboAsPdfUsingGET**](QueryResourceApi.md#getReportWithAuxAndComboAsPdfUsingGET) | **get** /api/query/auxcombo/{orderNumber} | getReportWithAuxAndComboAsPdf
[**getSaleReportAsPdfUsingGET**](QueryResourceApi.md#getSaleReportAsPdfUsingGET) | **get** /api/query/salereport/{storeidpcode} | getSaleReportAsPdf
[**getStoreByRegNoUsingGET**](QueryResourceApi.md#getStoreByRegNoUsingGET) | **get** /api/query/getStoreByRegNo/{regNo} | getStoreByRegNo
[**getStoreUsingGET**](QueryResourceApi.md#getStoreUsingGET) | **get** /api/query/getStore/{id} | getStore
[**getSubTermsByTermIdUsingGET**](QueryResourceApi.md#getSubTermsByTermIdUsingGET) | **get** /api/query/findSubTermByTermId/{id} | getSubTermsByTermId
[**getTasksUsingGET**](QueryResourceApi.md#getTasksUsingGET) | **get** /api/query/tasks | getTasks
[**getTermByTermIdUsingGET**](QueryResourceApi.md#getTermByTermIdUsingGET) | **get** /api/query/findTermByTermId/{id} | getTermByTermId
[**searchBannerUsingGET**](QueryResourceApi.md#searchBannerUsingGET) | **get** /api/query/_search/banners/ | searchBanner
[**searchCancellationRequestsUsingGET**](QueryResourceApi.md#searchCancellationRequestsUsingGET) | **get** /api/query/_search/cancellation-requests | searchCancellationRequests
[**searchCancelledOrderLinesUsingGET**](QueryResourceApi.md#searchCancelledOrderLinesUsingGET) | **get** /api/query/_search/cancelled-order-lines | searchCancelledOrderLines
[**searchNotificationsUsingGET**](QueryResourceApi.md#searchNotificationsUsingGET) | **get** /api/query/_search/notifications | searchNotifications
[**searchRefundDetailsUsingGET**](QueryResourceApi.md#searchRefundDetailsUsingGET) | **get** /api/query/_search/refund-details | searchRefundDetails


# **cancellationSummaryForViewUsingGET**
> CancellationSummary cancellationSummaryForViewUsingGET(date, storeName)

cancellationSummaryForView

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = date_example; // String | date
var storeName = storeName_example; // String | storeName

try { 
    var result = api_instance.cancellationSummaryForViewUsingGET(date, storeName);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->cancellationSummaryForViewUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date | [default to null]
 **storeName** | **String**| storeName | [default to null]

### Return type

[**CancellationSummary**](CancellationSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createReportSummaryUsingGET**
> ReportSummary createReportSummaryUsingGET(date, storeName)

createReportSummary

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = date_example; // String | date
var storeName = storeName_example; // String | storeName

try { 
    var result = api_instance.createReportSummaryUsingGET(date, storeName);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->createReportSummaryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date | [default to null]
 **storeName** | **String**| storeName | [optional] [default to null]

### Return type

[**ReportSummary**](ReportSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAboutByIdUsingGET**
> About findAboutByIdUsingGET(id)

findAboutById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.findAboutByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findAboutByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**About**](About.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllCancellationRequestsUsingGET**
> List<CancellationRequestDTO> findAllCancellationRequestsUsingGET(page, size, sort)

findAllCancellationRequests

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findAllCancellationRequestsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findAllCancellationRequestsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CancellationRequestDTO>**](CancellationRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllFeedBackUsingGET**
> PageOfFeedback findAllFeedBackUsingGET(page, size, sort)

findAllFeedBack

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findAllFeedBackUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findAllFeedBackUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfFeedback**](PageOfFeedback.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAuxItemsByIdUsingGET**
> List<AuxItem> findAuxItemsByIdUsingGET(id)

findAuxItemsById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.findAuxItemsByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findAuxItemsByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**List<AuxItem>**](AuxItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findBannerByStoreIdUsingGET**
> PageOfBanner findBannerByStoreIdUsingGET(storeId, page, size, sort)

findBannerByStoreId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var storeId = storeId_example; // String | storeId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findBannerByStoreIdUsingGET(storeId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findBannerByStoreIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **String**| storeId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfBanner**](PageOfBanner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCancellationDetailsByIdUsingGET**
> CancellationDetails findCancellationDetailsByIdUsingGET(id)

findCancellationDetailsById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.findCancellationDetailsByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findCancellationDetailsByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CancellationDetails**](CancellationDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCancellationRequestByStatusUsingGET**
> PageOfCancellationRequest findCancellationRequestByStatusUsingGET(date, statusName, page, size, sort)

findCancellationRequestByStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = 2013-10-20; // DateTime | date
var statusName = statusName_example; // String | statusName
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findCancellationRequestByStatusUsingGET(date, statusName, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findCancellationRequestByStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| date | [default to null]
 **statusName** | **String**| statusName | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfCancellationRequest**](PageOfCancellationRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCustomerByCustomerUniqueIdUsingGET**
> Customer findCustomerByCustomerUniqueIdUsingGET(customerUniqueId)

findCustomerByCustomerUniqueId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var customerUniqueId = customerUniqueId_example; // String | customerUniqueId

try { 
    var result = api_instance.findCustomerByCustomerUniqueIdUsingGET(customerUniqueId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findCustomerByCustomerUniqueIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerUniqueId** | **String**| customerUniqueId | [default to null]

### Return type

[**Customer**](Customer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOfferLinesByOrderNumberUsingGET**
> List<OfferLine> findOfferLinesByOrderNumberUsingGET(orderId)

findOfferLinesByOrderNumber

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderId = orderId_example; // String | orderId

try { 
    var result = api_instance.findOfferLinesByOrderNumberUsingGET(orderId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOfferLinesByOrderNumberUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]

### Return type

[**List<OfferLine>**](OfferLine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderByDatebetweenAndStoreIdUsingGET**
> PageOfOrderMaster findOrderByDatebetweenAndStoreIdUsingGET(from, storeId, to, page, size, sort)

findOrderByDatebetweenAndStoreId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var from = from_example; // String | from
var storeId = storeId_example; // String | storeId
var to = to_example; // String | to
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findOrderByDatebetweenAndStoreIdUsingGET(from, storeId, to, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderByDatebetweenAndStoreIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| from | [default to null]
 **storeId** | **String**| storeId | [default to null]
 **to** | **String**| to | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfOrderMaster**](PageOfOrderMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderByOrderIdUsingGET**
> Order findOrderByOrderIdUsingGET(orderId)

findOrderByOrderId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderId = orderId_example; // String | orderId

try { 
    var result = api_instance.findOrderByOrderIdUsingGET(orderId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderByOrderIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderCountByDateAndStatusNameUsingGET**
> int findOrderCountByDateAndStatusNameUsingGET(date, statusName)

findOrderCountByDateAndStatusName

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = date_example; // String | date
var statusName = statusName_example; // String | statusName

try { 
    var result = api_instance.findOrderCountByDateAndStatusNameUsingGET(date, statusName);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderCountByDateAndStatusNameUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date | [default to null]
 **statusName** | **String**| statusName | [default to null]

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderCountByStatusNameUsingGET**
> int findOrderCountByStatusNameUsingGET(statusName)

findOrderCountByStatusName

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var statusName = statusName_example; // String | statusName

try { 
    var result = api_instance.findOrderCountByStatusNameUsingGET(statusName);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderCountByStatusNameUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **statusName** | **String**| statusName | [default to null]

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderLinesByOrderNumberUsingGET**
> List<OrderLine> findOrderLinesByOrderNumberUsingGET(orderId)

findOrderLinesByOrderNumber

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderId = orderId_example; // String | orderId

try { 
    var result = api_instance.findOrderLinesByOrderNumberUsingGET(orderId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderLinesByOrderNumberUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]

### Return type

[**List<OrderLine>**](OrderLine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderMasterByExpectedDeliveryBetweenUsingGET**
> PageOfOrderMaster findOrderMasterByExpectedDeliveryBetweenUsingGET(from, to, page, size, sort)

findOrderMasterByExpectedDeliveryBetween

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var from = from_example; // String | from
var to = to_example; // String | to
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findOrderMasterByExpectedDeliveryBetweenUsingGET(from, to, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderMasterByExpectedDeliveryBetweenUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| from | [default to null]
 **to** | **String**| to | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfOrderMaster**](PageOfOrderMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderMasterByOrderMasterUsingGET**
> OrderMasterDTO findOrderMasterByOrderMasterUsingGET(orderNumber)

findOrderMasterByOrderMaster

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderNumber = orderNumber_example; // String | orderNumber

try { 
    var result = api_instance.findOrderMasterByOrderMasterUsingGET(orderNumber);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderMasterByOrderMasterUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **String**| orderNumber | [default to null]

### Return type

[**OrderMasterDTO**](OrderMasterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderMasterCountByExpectedDeliveryBetweenUsingGET**
> int findOrderMasterCountByExpectedDeliveryBetweenUsingGET(from, to)

findOrderMasterCountByExpectedDeliveryBetween

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var from = from_example; // String | from
var to = to_example; // String | to

try { 
    var result = api_instance.findOrderMasterCountByExpectedDeliveryBetweenUsingGET(from, to);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrderMasterCountByExpectedDeliveryBetweenUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| from | [default to null]
 **to** | **String**| to | [default to null]

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrdersByOrderIdUsingGET**
> List<Order> findOrdersByOrderIdUsingGET(orderId)

findOrdersByOrderId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderId = orderId_example; // String | orderId

try { 
    var result = api_instance.findOrdersByOrderIdUsingGET(orderId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findOrdersByOrderIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]

### Return type

[**List<Order>**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findRefundDetailUsingGET**
> RefundDetails findRefundDetailUsingGET(id)

findRefundDetail

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.findRefundDetailUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findRefundDetailUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [optional] [default to null]

### Return type

[**RefundDetails**](RefundDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findStoreBySearchTermUsingGET**
> PageOfStore findStoreBySearchTermUsingGET(name, page, size, sort)

findStoreBySearchTerm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var name = name_example; // String | name
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findStoreBySearchTermUsingGET(name, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findStoreBySearchTermUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfStore**](PageOfStore.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSubTermByIdUsingGET**
> SubTerm findSubTermByIdUsingGET(id)

findSubTermById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.findSubTermByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findSubTermByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [optional] [default to null]

### Return type

[**SubTerm**](SubTerm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTermByIdUsingGET**
> Term findTermByIdUsingGET(id)

findTermById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.findTermByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findTermByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**Term**](Term.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findallaboutUsingGET**
> PageOfAbout findallaboutUsingGET(page, size, sort)

findallabout

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findallaboutUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findallaboutUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfAbout**](PageOfAbout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findalltermsUsingGET**
> PageOfTerm findalltermsUsingGET(page, size, sort)

findallterms

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.findalltermsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->findalltermsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfTerm**](PageOfTerm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBannersUsingGET**
> List<BannerDTO> getAllBannersUsingGET(page, size, sort)

getAllBanners

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllBannersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllBannersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<BannerDTO>**](BannerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCancellationRequestsUsingGET**
> List<CancellationRequestDTO> getAllCancellationRequestsUsingGET(page, size, sort)

getAllCancellationRequests

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCancellationRequestsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllCancellationRequestsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CancellationRequestDTO>**](CancellationRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCancelledOrderLinesUsingGET**
> List<CancelledOrderLineDTO> getAllCancelledOrderLinesUsingGET(page, size, sort)

getAllCancelledOrderLines

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCancelledOrderLinesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllCancelledOrderLinesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CancelledOrderLineDTO>**](CancelledOrderLineDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllDeductionValueTypesUsingGET**
> List<DeductionValueTypeDTO> getAllDeductionValueTypesUsingGET(page, size, sort)

getAllDeductionValueTypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllDeductionValueTypesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllDeductionValueTypesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<DeductionValueTypeDTO>**](DeductionValueTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllNotificationsUsingGET**
> List<NotificationDTO> getAllNotificationsUsingGET(page, size, sort)

getAllNotifications

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllNotificationsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllNotificationsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<NotificationDTO>**](NotificationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllOffersUsingGET**
> List<OfferDTO> getAllOffersUsingGET(page, size, sort)

getAllOffers

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllOffersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllOffersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<OfferDTO>**](OfferDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllRefundDetailsUsingGET**
> List<RefundDetailsDTO> getAllRefundDetailsUsingGET(page, size, sort)

getAllRefundDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllRefundDetailsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getAllRefundDetailsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<RefundDetailsDTO>**](RefundDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBannerUsingGET**
> BannerDTO getBannerUsingGET(id)

getBanner

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getBannerUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getBannerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**BannerDTO**](BannerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCancellationReportAsPdfUsingGET**
> PdfDTO getCancellationReportAsPdfUsingGET(date, storeName)

getCancellationReportAsPdf

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = date_example; // String | date
var storeName = storeName_example; // String | storeName

try { 
    var result = api_instance.getCancellationReportAsPdfUsingGET(date, storeName);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getCancellationReportAsPdfUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date | [default to null]
 **storeName** | **String**| storeName | [default to null]

### Return type

[**PdfDTO**](PdfDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCancellationRequestByOrderIdUsingGET**
> CancellationRequest getCancellationRequestByOrderIdUsingGET(orderId)

getCancellationRequestByOrderId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderId = orderId_example; // String | orderId

try { 
    var result = api_instance.getCancellationRequestByOrderIdUsingGET(orderId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getCancellationRequestByOrderIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| orderId | [default to null]

### Return type

[**CancellationRequest**](CancellationRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCancellationRequestUsingGET**
> CancellationRequestDTO getCancellationRequestUsingGET(id)

getCancellationRequest

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCancellationRequestUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getCancellationRequestUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CancellationRequestDTO**](CancellationRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCancelledOrderLineUsingGET**
> CancelledOrderLineDTO getCancelledOrderLineUsingGET(id)

getCancelledOrderLine

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCancelledOrderLineUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getCancelledOrderLineUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CancelledOrderLineDTO**](CancelledOrderLineDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationUsingGET**
> NotificationDTO getNotificationUsingGET(id)

getNotification

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getNotificationUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getNotificationUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**NotificationDTO**](NotificationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOfferByIdUsingGET**
> OfferDTO getOfferByIdUsingGET(id)

getOfferById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getOfferByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getOfferByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**OfferDTO**](OfferDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderMasterByOrderNumberUsingGET**
> OrderMaster getOrderMasterByOrderNumberUsingGET(orderNumber)

getOrderMasterByOrderNumber

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderNumber = orderNumber_example; // String | orderNumber

try { 
    var result = api_instance.getOrderMasterByOrderNumberUsingGET(orderNumber);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getOrderMasterByOrderNumberUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **String**| orderNumber | [default to null]

### Return type

[**OrderMaster**](OrderMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderSummaryByDateAndStoreNameUsingGET**
> PdfDTO getOrderSummaryByDateAndStoreNameUsingGET(date, storeId)

getOrderSummaryByDateAndStoreName

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = date_example; // String | date
var storeId = storeId_example; // String | storeId

try { 
    var result = api_instance.getOrderSummaryByDateAndStoreNameUsingGET(date, storeId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getOrderSummaryByDateAndStoreNameUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date | [default to null]
 **storeId** | **String**| storeId | [default to null]

### Return type

[**PdfDTO**](PdfDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersByFilterUsingGET**
> PageOfOrderMaster getOrdersByFilterUsingGET(fromDate, toDate, methodOfOrder, pageNumber, paymentStatus, size, sort, storeId)

getOrdersByFilter

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var fromDate = fromDate_example; // String | fromDate
var toDate = toDate_example; // String | toDate
var methodOfOrder = methodOfOrder_example; // String | methodOfOrder
var pageNumber = 56; // int | pageNumber
var paymentStatus = paymentStatus_example; // String | paymentStatus
var size = 56; // int | size
var sort = []; // List<String> | sort
var storeId = storeId_example; // String | storeId

try { 
    var result = api_instance.getOrdersByFilterUsingGET(fromDate, toDate, methodOfOrder, pageNumber, paymentStatus, size, sort, storeId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getOrdersByFilterUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **String**| fromDate | [default to null]
 **toDate** | **String**| toDate | [default to null]
 **methodOfOrder** | **String**| methodOfOrder | [optional] [default to null]
 **pageNumber** | **int**| pageNumber | [optional] [default to null]
 **paymentStatus** | **String**| paymentStatus | [optional] [default to null]
 **size** | **int**| size | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| sort | [optional] [default to const []]
 **storeId** | **String**| storeId | [optional] [default to null]

### Return type

[**PageOfOrderMaster**](PageOfOrderMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrdersPdfByFilterUsingGET**
> PdfDTO getOrdersPdfByFilterUsingGET(fromDate, toDate, methodOfOrder, paymentStatus, storeId)

getOrdersPdfByFilter

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var fromDate = fromDate_example; // String | fromDate
var toDate = toDate_example; // String | toDate
var methodOfOrder = methodOfOrder_example; // String | methodOfOrder
var paymentStatus = paymentStatus_example; // String | paymentStatus
var storeId = storeId_example; // String | storeId

try { 
    var result = api_instance.getOrdersPdfByFilterUsingGET(fromDate, toDate, methodOfOrder, paymentStatus, storeId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getOrdersPdfByFilterUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **String**| fromDate | [default to null]
 **toDate** | **String**| toDate | [default to null]
 **methodOfOrder** | **String**| methodOfOrder | [optional] [default to null]
 **paymentStatus** | **String**| paymentStatus | [optional] [default to null]
 **storeId** | **String**| storeId | [optional] [default to null]

### Return type

[**PdfDTO**](PdfDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRefundDetailsUsingGET**
> RefundDetailsDTO getRefundDetailsUsingGET(id)

getRefundDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getRefundDetailsUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getRefundDetailsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**RefundDetailsDTO**](RefundDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportSummaryAsPdfUsingGET**
> PdfDTO getReportSummaryAsPdfUsingGET(date, storeId)

getReportSummaryAsPdf

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var date = date_example; // String | date
var storeId = storeId_example; // String | storeId

try { 
    var result = api_instance.getReportSummaryAsPdfUsingGET(date, storeId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getReportSummaryAsPdfUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| date | [default to null]
 **storeId** | **String**| storeId | [optional] [default to null]

### Return type

[**PdfDTO**](PdfDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportWithAuxAndComboAsPdfUsingGET**
> String getReportWithAuxAndComboAsPdfUsingGET(orderNumber)

getReportWithAuxAndComboAsPdf

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var orderNumber = orderNumber_example; // String | orderNumber

try { 
    var result = api_instance.getReportWithAuxAndComboAsPdfUsingGET(orderNumber);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getReportWithAuxAndComboAsPdfUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **String**| orderNumber | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaleReportAsPdfUsingGET**
> String getSaleReportAsPdfUsingGET(storeidpcode)

getSaleReportAsPdf

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var storeidpcode = storeidpcode_example; // String | storeidpcode

try { 
    var result = api_instance.getSaleReportAsPdfUsingGET(storeidpcode);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getSaleReportAsPdfUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeidpcode** | **String**| storeidpcode | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreByRegNoUsingGET**
> Store getStoreByRegNoUsingGET(regNo)

getStoreByRegNo

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var regNo = regNo_example; // String | regNo

try { 
    var result = api_instance.getStoreByRegNoUsingGET(regNo);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getStoreByRegNoUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regNo** | **String**| regNo | [default to null]

### Return type

[**Store**](Store.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreUsingGET**
> StoreDTO getStoreUsingGET(id)

getStore

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getStoreUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getStoreUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**StoreDTO**](StoreDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubTermsByTermIdUsingGET**
> List<SubTerm> getSubTermsByTermIdUsingGET(id)

getSubTermsByTermId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getSubTermsByTermIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getSubTermsByTermIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**List<SubTerm>**](SubTerm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTasksUsingGET**
> DataResponse getTasksUsingGET(active, assignee, assigneeLike, candidateGroup, candidateGroups, candidateOrAssigned, candidateUser, category, createdAfter, createdBefore, createdOn, delegationState, description, dueAfter, dueBefore, dueOn, excludeSubTasks, executionId, includeProcessVariables, includeTaskLocalVariables, involvedUser, maximumPriority, minimumPriority, name, nameLike, owner, ownerLike, priority, processDefinitionId, processDefinitionKey, processDefinitionKeyLike, processDefinitionName, processDefinitionNameLike, processInstanceBusinessKey, processInstanceBusinessKeyLike, processInstanceId, taskDefinitionKey, taskDefinitionKeyLike, tenantId, tenantIdLike, unassigned, withoutDueDate, withoutTenantId)

getTasks

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var active = true; // bool | If true, only return tasks that are not suspended (either part of a process that is not suspended or not part of a process at all). If false, only tasks that are part of suspended process instances are returned.
var assignee = assignee_example; // String | assignee
var assigneeLike = assigneeLike_example; // String | assigneeLike
var candidateGroup = candidateGroup_example; // String | candidateGroup
var candidateGroups = candidateGroups_example; // String | candidateGroups
var candidateOrAssigned = candidateOrAssigned_example; // String | Select tasks that has been claimed or assigned to user or waiting to claim by user (candidate user or groups).
var candidateUser = candidateUser_example; // String | candidateUser
var category = category_example; // String | Select tasks with the given category. Note that this is the task category, not the category of the process definition (namespace within the BPMN Xml). 
var createdAfter = createdAfter_example; // String | Only return tasks which are created after the given date.
var createdBefore = createdBefore_example; // String | Only return tasks which are created before the given date.
var createdOn = createdOn_example; // String | Only return tasks which are created on the given date.
var delegationState = delegationState_example; // String | delegationState
var description = description_example; // String | description
var dueAfter = dueAfter_example; // String | Only return tasks which are due after the given date.
var dueBefore = dueBefore_example; // String | Only return tasks which are due before the given date.
var dueOn = dueOn_example; // String | Only return tasks which are due on the given date.
var excludeSubTasks = true; // bool | Only return tasks that are not a subtask of another task.
var executionId = executionId_example; // String | Only return tasks which are part of the execution with the given id.
var includeProcessVariables = true; // bool | Indication to include process variables in the result.
var includeTaskLocalVariables = true; // bool | Indication to include task local variables in the result.
var involvedUser = involvedUser_example; // String | involvedUser
var maximumPriority = maximumPriority_example; // String | maximumPriority
var minimumPriority = minimumPriority_example; // String | minimumPriority
var name = name_example; // String | name
var nameLike = nameLike_example; // String | nameLike
var owner = owner_example; // String | owner
var ownerLike = ownerLike_example; // String | ownerLike
var priority = priority_example; // String | priority
var processDefinitionId = processDefinitionId_example; // String | Only return tasks which are part of a process instance which has a process definition with the given id.
var processDefinitionKey = processDefinitionKey_example; // String | Only return tasks which are part of a process instance which has a process definition with the given key.
var processDefinitionKeyLike = processDefinitionKeyLike_example; // String | Only return tasks which are part of a process instance which has a process definition with a key like the given value.
var processDefinitionName = processDefinitionName_example; // String | Only return tasks which are part of a process instance which has a process definition with the given name.
var processDefinitionNameLike = processDefinitionNameLike_example; // String | Only return tasks which are part of a process instance which has a process definition with a name like the given value.
var processInstanceBusinessKey = processInstanceBusinessKey_example; // String | processInstanceBusinessKey
var processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | processInstanceBusinessKeyLike
var processInstanceId = processInstanceId_example; // String | processInstanceId
var taskDefinitionKey = taskDefinitionKey_example; // String | taskDefinitionKey
var taskDefinitionKeyLike = taskDefinitionKeyLike_example; // String | taskDefinitionKeyLike
var tenantId = tenantId_example; // String | Only return tasks with the given tenantId.
var tenantIdLike = tenantIdLike_example; // String | Only return tasks with a tenantId like the given value.
var unassigned = unassigned_example; // String | unassigned
var withoutDueDate = true; // bool | Only return tasks which don�t have a due date. The property is ignored if the value is false.
var withoutTenantId = true; // bool | If true, only returns tasks without a tenantId set. If false, the withoutTenantId parameter is ignored.

try { 
    var result = api_instance.getTasksUsingGET(active, assignee, assigneeLike, candidateGroup, candidateGroups, candidateOrAssigned, candidateUser, category, createdAfter, createdBefore, createdOn, delegationState, description, dueAfter, dueBefore, dueOn, excludeSubTasks, executionId, includeProcessVariables, includeTaskLocalVariables, involvedUser, maximumPriority, minimumPriority, name, nameLike, owner, ownerLike, priority, processDefinitionId, processDefinitionKey, processDefinitionKeyLike, processDefinitionName, processDefinitionNameLike, processInstanceBusinessKey, processInstanceBusinessKeyLike, processInstanceId, taskDefinitionKey, taskDefinitionKeyLike, tenantId, tenantIdLike, unassigned, withoutDueDate, withoutTenantId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getTasksUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **active** | **bool**| If true, only return tasks that are not suspended (either part of a process that is not suspended or not part of a process at all). If false, only tasks that are part of suspended process instances are returned. | [optional] [default to null]
 **assignee** | **String**| assignee | [optional] [default to null]
 **assigneeLike** | **String**| assigneeLike | [optional] [default to null]
 **candidateGroup** | **String**| candidateGroup | [optional] [default to null]
 **candidateGroups** | **String**| candidateGroups | [optional] [default to null]
 **candidateOrAssigned** | **String**| Select tasks that has been claimed or assigned to user or waiting to claim by user (candidate user or groups). | [optional] [default to null]
 **candidateUser** | **String**| candidateUser | [optional] [default to null]
 **category** | **String**| Select tasks with the given category. Note that this is the task category, not the category of the process definition (namespace within the BPMN Xml).  | [optional] [default to null]
 **createdAfter** | **String**| Only return tasks which are created after the given date. | [optional] [default to null]
 **createdBefore** | **String**| Only return tasks which are created before the given date. | [optional] [default to null]
 **createdOn** | **String**| Only return tasks which are created on the given date. | [optional] [default to null]
 **delegationState** | **String**| delegationState | [optional] [default to null]
 **description** | **String**| description | [optional] [default to null]
 **dueAfter** | **String**| Only return tasks which are due after the given date. | [optional] [default to null]
 **dueBefore** | **String**| Only return tasks which are due before the given date. | [optional] [default to null]
 **dueOn** | **String**| Only return tasks which are due on the given date. | [optional] [default to null]
 **excludeSubTasks** | **bool**| Only return tasks that are not a subtask of another task. | [optional] [default to null]
 **executionId** | **String**| Only return tasks which are part of the execution with the given id. | [optional] [default to null]
 **includeProcessVariables** | **bool**| Indication to include process variables in the result. | [optional] [default to null]
 **includeTaskLocalVariables** | **bool**| Indication to include task local variables in the result. | [optional] [default to null]
 **involvedUser** | **String**| involvedUser | [optional] [default to null]
 **maximumPriority** | **String**| maximumPriority | [optional] [default to null]
 **minimumPriority** | **String**| minimumPriority | [optional] [default to null]
 **name** | **String**| name | [optional] [default to null]
 **nameLike** | **String**| nameLike | [optional] [default to null]
 **owner** | **String**| owner | [optional] [default to null]
 **ownerLike** | **String**| ownerLike | [optional] [default to null]
 **priority** | **String**| priority | [optional] [default to null]
 **processDefinitionId** | **String**| Only return tasks which are part of a process instance which has a process definition with the given id. | [optional] [default to null]
 **processDefinitionKey** | **String**| Only return tasks which are part of a process instance which has a process definition with the given key. | [optional] [default to null]
 **processDefinitionKeyLike** | **String**| Only return tasks which are part of a process instance which has a process definition with a key like the given value. | [optional] [default to null]
 **processDefinitionName** | **String**| Only return tasks which are part of a process instance which has a process definition with the given name. | [optional] [default to null]
 **processDefinitionNameLike** | **String**| Only return tasks which are part of a process instance which has a process definition with a name like the given value. | [optional] [default to null]
 **processInstanceBusinessKey** | **String**| processInstanceBusinessKey | [optional] [default to null]
 **processInstanceBusinessKeyLike** | **String**| processInstanceBusinessKeyLike | [optional] [default to null]
 **processInstanceId** | **String**| processInstanceId | [optional] [default to null]
 **taskDefinitionKey** | **String**| taskDefinitionKey | [optional] [default to null]
 **taskDefinitionKeyLike** | **String**| taskDefinitionKeyLike | [optional] [default to null]
 **tenantId** | **String**| Only return tasks with the given tenantId. | [optional] [default to null]
 **tenantIdLike** | **String**| Only return tasks with a tenantId like the given value. | [optional] [default to null]
 **unassigned** | **String**| unassigned | [optional] [default to null]
 **withoutDueDate** | **bool**| Only return tasks which don�t have a due date. The property is ignored if the value is false. | [optional] [default to null]
 **withoutTenantId** | **bool**| If true, only returns tasks without a tenantId set. If false, the withoutTenantId parameter is ignored. | [optional] [default to null]

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTermByTermIdUsingGET**
> List<Term> getTermByTermIdUsingGET(id)

getTermByTermId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getTermByTermIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getTermByTermIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**List<Term>**](Term.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchBannerUsingGET**
> List<BannerDTO> searchBannerUsingGET(query, page, size, sort)

searchBanner

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var query = query_example; // String | query
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.searchBannerUsingGET(query, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->searchBannerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| query | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<BannerDTO>**](BannerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCancellationRequestsUsingGET**
> List<CancellationRequestDTO> searchCancellationRequestsUsingGET(query, page, size, sort)

searchCancellationRequests

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var query = query_example; // String | query
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.searchCancellationRequestsUsingGET(query, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->searchCancellationRequestsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| query | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CancellationRequestDTO>**](CancellationRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCancelledOrderLinesUsingGET**
> List<CancelledOrderLineDTO> searchCancelledOrderLinesUsingGET(query, page, size, sort)

searchCancelledOrderLines

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var query = query_example; // String | query
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.searchCancelledOrderLinesUsingGET(query, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->searchCancelledOrderLinesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| query | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CancelledOrderLineDTO>**](CancelledOrderLineDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNotificationsUsingGET**
> List<NotificationDTO> searchNotificationsUsingGET(query, page, size, sort)

searchNotifications

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var query = query_example; // String | query
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.searchNotificationsUsingGET(query, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->searchNotificationsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| query | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<NotificationDTO>**](NotificationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRefundDetailsUsingGET**
> List<RefundDetailsDTO> searchRefundDetailsUsingGET(query, page, size, sort)

searchRefundDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var query = query_example; // String | query
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.searchRefundDetailsUsingGET(query, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->searchRefundDetailsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| query | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<RefundDetailsDTO>**](RefundDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

