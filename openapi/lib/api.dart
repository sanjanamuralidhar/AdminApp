library openapi.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/serializers.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:openapi/api/account_resource_api.dart';
import 'package:openapi/api/auth_info_resource_api.dart';
import 'package:openapi/api/command_resource_api.dart';
import 'package:openapi/api/gateway_resource_api.dart';
import 'package:openapi/api/logout_resource_api.dart';
import 'package:openapi/api/query_resource_api.dart';
import 'package:openapi/api/user_resource_api.dart';


final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class Openapi {

    Dio dio;
    Serializers serializers;
    String basePath = "http://34.121.106.101:8080";

    Openapi({this.dio, Serializers serializers, String basePathOverride, List<Interceptor> interceptors}) {
        if (dio == null) {
            BaseOptions options = new BaseOptions(
                baseUrl: basePathOverride ?? basePath,
                connectTimeout: 5000,
                receiveTimeout: 3000,
            );
            this.dio = new Dio(options);
        }

        if (interceptors == null) {
            this.dio.interceptors.addAll(_defaultInterceptors);
        } else {
            this.dio.interceptors.addAll(interceptors);
        }

        this.serializers = serializers ?? standardSerializers;
    }

    void setOAuthToken(String name, String token) {
        (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor, orElse: null) as OAuthInterceptor)?.tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (this.dio.interceptors.firstWhere((element) => element is BasicAuthInterceptor, orElse: null) as BasicAuthInterceptor)?.authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor, orElse: null) as ApiKeyAuthInterceptor)?.apiKeys[name] = apiKey;
    }


    /**
    * Get AccountResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AccountResourceApi getAccountResourceApi() {
    return AccountResourceApi(dio, serializers);
    }


    /**
    * Get AuthInfoResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AuthInfoResourceApi getAuthInfoResourceApi() {
    return AuthInfoResourceApi(dio, serializers);
    }


    /**
    * Get CommandResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    CommandResourceApi getCommandResourceApi() {
    return CommandResourceApi(dio, serializers);
    }


    /**
    * Get GatewayResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    GatewayResourceApi getGatewayResourceApi() {
    return GatewayResourceApi(dio, serializers);
    }


    /**
    * Get LogoutResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    LogoutResourceApi getLogoutResourceApi() {
    return LogoutResourceApi(dio, serializers);
    }


    /**
    * Get QueryResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    QueryResourceApi getQueryResourceApi() {
    return QueryResourceApi(dio, serializers);
    }


    /**
    * Get UserResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    UserResourceApi getUserResourceApi() {
    return UserResourceApi(dio, serializers);
    }


}
