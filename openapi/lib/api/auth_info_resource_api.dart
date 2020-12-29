import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/auth_info_vm.dart';

class AuthInfoResourceApi {
    final Dio _dio;
    Serializers _serializers;

    AuthInfoResourceApi(this._dio, this._serializers);

        /// getAuthInfo
        ///
        /// 
        Future<Response<AuthInfoVM>>getAuthInfoUsingGET({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/auth-info";

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
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(AuthInfoVM);
        var data = _serializers.deserializeWith<AuthInfoVM>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<AuthInfoVM>(
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
