import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';


class LogoutResourceApi {
    final Dio _dio;
    Serializers _serializers;

    LogoutResourceApi(this._dio, this._serializers);

        /// logout
        ///
        /// 
        Future<Response<Object>>logoutUsingPOST({ Object claims,String tokenValue,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/logout";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'claims'] = claims;
                queryParams[r'tokenValue'] = tokenValue;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



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

        var serializer = _serializers.serializerForType(Object);
        var data = _serializers.deserializeWith<Object>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Object>(
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
