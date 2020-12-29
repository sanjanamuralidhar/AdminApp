import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/cancellation_request_dto.dart';
import 'package:openapi/model/sub_term_dto.dart';
import 'package:openapi/model/about_dto.dart';
import 'package:openapi/model/cancelled_auxilary_order_line_dto.dart';
import 'package:openapi/model/banner_dto.dart';
import 'package:openapi/model/refund_dto.dart';
import 'package:openapi/model/offer_model.dart';
import 'package:openapi/model/notification_dto.dart';
import 'package:openapi/model/term.dart';
import 'package:openapi/model/refund_details_dto.dart';
import 'package:openapi/model/cancelled_order_line_dto.dart';
import 'package:openapi/model/deduction_value_type_dto.dart';
import 'package:openapi/model/order_model.dart';
import 'package:openapi/model/term_dto.dart';

class CommandResourceApi {
    final Dio _dio;
    Serializers _serializers;

    CommandResourceApi(this._dio, this._serializers);

        /// claimOffer
        ///
        /// 
        Future<Response<OrderModel>>claimOfferUsingPOST(OrderModel orderModel,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/offers/claim-offer";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(orderModel);
            var jsonorderModel = json.encode(serializedBody);
            bodyData = jsonorderModel;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(OrderModel);
        var data = _serializers.deserializeWith<OrderModel>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OrderModel>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createAboutUs
        ///
        /// 
        Future<Response<AboutDTO>>createAboutUsUsingPOST(AboutDTO aboutDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/about";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(aboutDTO);
            var jsonaboutDTO = json.encode(serializedBody);
            bodyData = jsonaboutDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(AboutDTO);
        var data = _serializers.deserializeWith<AboutDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<AboutDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createBanner
        ///
        /// 
        Future<Response<BannerDTO>>createBannerUsingPOST(BannerDTO bannerDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/banners";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(bannerDTO);
            var jsonbannerDTO = json.encode(serializedBody);
            bodyData = jsonbannerDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(BannerDTO);
        var data = _serializers.deserializeWith<BannerDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<BannerDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createCancellationRequest
        ///
        /// 
        Future<Response<CancellationRequestDTO>>createCancellationRequestUsingPOST(CancellationRequestDTO cancellationRequestDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/cancellation-requests";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(cancellationRequestDTO);
            var jsoncancellationRequestDTO = json.encode(serializedBody);
            bodyData = jsoncancellationRequestDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(CancellationRequestDTO);
        var data = _serializers.deserializeWith<CancellationRequestDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<CancellationRequestDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createCancelledAuxilaryOrderLineByList
        ///
        /// 
        Future<Response>createCancelledAuxilaryOrderLineByListUsingPOST(List<CancelledAuxilaryOrderLineDTO> cancelledAuxilaryOrderLineDTOList,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/createCancelledAuxilaryOrderLineByList";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            final type = const FullType(BuiltList, const [const FullType(CancelledAuxilaryOrderLineDTO)]);
            var serializedBody = _serializers.serialize(BuiltList<CancelledAuxilaryOrderLineDTO>.from(cancelledAuxilaryOrderLineDTOList), specifiedType: type);
            var jsoncancelledAuxilaryOrderLineDTOList = json.encode(serializedBody);
            bodyData = jsoncancelledAuxilaryOrderLineDTOList;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// createCancelledOrderLineByList
        ///
        /// 
        Future<Response>createCancelledOrderLineByListUsingPOST(List<CancelledOrderLineDTO> cancelledOrderLineDTOList,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/createCancelledOrderLineByList";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            final type = const FullType(BuiltList, const [const FullType(CancelledOrderLineDTO)]);
            var serializedBody = _serializers.serialize(BuiltList<CancelledOrderLineDTO>.from(cancelledOrderLineDTOList), specifiedType: type);
            var jsoncancelledOrderLineDTOList = json.encode(serializedBody);
            bodyData = jsoncancelledOrderLineDTOList;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// createCancelledOrderLine
        ///
        /// 
        Future<Response<CancelledOrderLineDTO>>createCancelledOrderLineUsingPOST(CancelledOrderLineDTO cancelledOrderLineDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/cancelled-order-lines";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(cancelledOrderLineDTO);
            var jsoncancelledOrderLineDTO = json.encode(serializedBody);
            bodyData = jsoncancelledOrderLineDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(CancelledOrderLineDTO);
        var data = _serializers.deserializeWith<CancelledOrderLineDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<CancelledOrderLineDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createDeductionValueType
        ///
        /// 
        Future<Response<DeductionValueTypeDTO>>createDeductionValueTypeUsingPOST(DeductionValueTypeDTO deductionValueTypeDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/deduction-value-types";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(deductionValueTypeDTO);
            var jsondeductionValueTypeDTO = json.encode(serializedBody);
            bodyData = jsondeductionValueTypeDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(DeductionValueTypeDTO);
        var data = _serializers.deserializeWith<DeductionValueTypeDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<DeductionValueTypeDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createNotification
        ///
        /// 
        Future<Response<NotificationDTO>>createNotificationUsingPOST(NotificationDTO notificationDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/notifications";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(notificationDTO);
            var jsonnotificationDTO = json.encode(serializedBody);
            bodyData = jsonnotificationDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(NotificationDTO);
        var data = _serializers.deserializeWith<NotificationDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<NotificationDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createOffer
        ///
        /// 
        Future<Response<OfferModel>>createOfferUsingPOST(OfferModel offerModel,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/offers/create-offer";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(offerModel);
            var jsonofferModel = json.encode(serializedBody);
            bodyData = jsonofferModel;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(OfferModel);
        var data = _serializers.deserializeWith<OfferModel>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OfferModel>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createRefundDetails
        ///
        /// 
        Future<Response<RefundDetailsDTO>>createRefundDetailsUsingPOST(String orderId,RefundDetailsDTO refundDetailsDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/refund-details/{orderId}".replaceAll("{" r'orderId' "}", orderId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(refundDetailsDTO);
            var jsonrefundDetailsDTO = json.encode(serializedBody);
            bodyData = jsonrefundDetailsDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(RefundDetailsDTO);
        var data = _serializers.deserializeWith<RefundDetailsDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<RefundDetailsDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createRefund
        ///
        /// 
        Future<Response<RefundDetailsDTO>>createRefundUsingPOST(String orderId,String paymentId,RefundDTO refundDetailsDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/create/refundDetails/{orderId}/{paymentId}".replaceAll("{" r'orderId' "}", orderId.toString()).replaceAll("{" r'paymentId' "}", paymentId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(refundDetailsDTO);
            var jsonrefundDetailsDTO = json.encode(serializedBody);
            bodyData = jsonrefundDetailsDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(RefundDetailsDTO);
        var data = _serializers.deserializeWith<RefundDetailsDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<RefundDetailsDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createSubTerm
        ///
        /// 
        Future<Response<SubTermDTO>>createSubTermUsingPOST(SubTermDTO subTermDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/sub-term";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(subTermDTO);
            var jsonsubTermDTO = json.encode(serializedBody);
            bodyData = jsonsubTermDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(SubTermDTO);
        var data = _serializers.deserializeWith<SubTermDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<SubTermDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createTerm
        ///
        /// 
        Future<Response<Term>>createTermUsingPOST(Term term,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/term";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(term);
            var jsonterm = json.encode(serializedBody);
            bodyData = jsonterm;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Term);
        var data = _serializers.deserializeWith<Term>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Term>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// deleteAboutUs
        ///
        /// 
        Future<Response>deleteAboutUsUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/about/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteBanner
        ///
        /// 
        Future<Response>deleteBannerUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/banners/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteCancellationRequest
        ///
        /// 
        Future<Response>deleteCancellationRequestUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/cancellation-requests/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteCancelledOrderLine
        ///
        /// 
        Future<Response>deleteCancelledOrderLineUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/cancelled-order-lines/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteNotification
        ///
        /// 
        Future<Response>deleteNotificationUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/notifications/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteRefundDetails
        ///
        /// 
        Future<Response>deleteRefundDetailsUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/refund-details/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteSubTerm
        ///
        /// 
        Future<Response>deleteSubTermUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/sub-term/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// deleteTerm
        ///
        /// 
        Future<Response>deleteTermUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/term/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// updateAboutUs
        ///
        /// 
        Future<Response<AboutDTO>>updateAboutUsUsingPUT(AboutDTO aboutDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/about";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(aboutDTO);
            var jsonaboutDTO = json.encode(serializedBody);
            bodyData = jsonaboutDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(AboutDTO);
        var data = _serializers.deserializeWith<AboutDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<AboutDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateBanner
        ///
        /// 
        Future<Response<BannerDTO>>updateBannerUsingPUT(BannerDTO bannerDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/banners";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(bannerDTO);
            var jsonbannerDTO = json.encode(serializedBody);
            bodyData = jsonbannerDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(BannerDTO);
        var data = _serializers.deserializeWith<BannerDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<BannerDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateCancellationRequest
        ///
        /// 
        Future<Response<CancellationRequestDTO>>updateCancellationRequestUsingPUT(CancellationRequestDTO cancellationRequestDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/cancellation-requests";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(cancellationRequestDTO);
            var jsoncancellationRequestDTO = json.encode(serializedBody);
            bodyData = jsoncancellationRequestDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(CancellationRequestDTO);
        var data = _serializers.deserializeWith<CancellationRequestDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<CancellationRequestDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateCancelledOrderLine
        ///
        /// 
        Future<Response<CancelledOrderLineDTO>>updateCancelledOrderLineUsingPUT(CancelledOrderLineDTO cancelledOrderLineDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/cancelled-order-lines";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(cancelledOrderLineDTO);
            var jsoncancelledOrderLineDTO = json.encode(serializedBody);
            bodyData = jsoncancelledOrderLineDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(CancelledOrderLineDTO);
        var data = _serializers.deserializeWith<CancelledOrderLineDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<CancelledOrderLineDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateNotification
        ///
        /// 
        Future<Response<NotificationDTO>>updateNotificationUsingPUT(NotificationDTO notificationDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/notifications";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(notificationDTO);
            var jsonnotificationDTO = json.encode(serializedBody);
            bodyData = jsonnotificationDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(NotificationDTO);
        var data = _serializers.deserializeWith<NotificationDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<NotificationDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateRefundDetails
        ///
        /// 
        Future<Response<RefundDetailsDTO>>updateRefundDetailsUsingPUT(RefundDetailsDTO refundDetailsDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/refund-details";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(refundDetailsDTO);
            var jsonrefundDetailsDTO = json.encode(serializedBody);
            bodyData = jsonrefundDetailsDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(RefundDetailsDTO);
        var data = _serializers.deserializeWith<RefundDetailsDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<RefundDetailsDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateSubTerm
        ///
        /// 
        Future<Response<SubTermDTO>>updateSubTermUsingPUT(SubTermDTO subTermDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/sub-term";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(subTermDTO);
            var jsonsubTermDTO = json.encode(serializedBody);
            bodyData = jsonsubTermDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(SubTermDTO);
        var data = _serializers.deserializeWith<SubTermDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<SubTermDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// updateTerm
        ///
        /// 
        Future<Response<TermDTO>>updateTermUsingPUT(TermDTO termDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/term";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(termDTO);
            var jsontermDTO = json.encode(serializedBody);
            bodyData = jsontermDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(TermDTO);
        var data = _serializers.deserializeWith<TermDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<TermDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
