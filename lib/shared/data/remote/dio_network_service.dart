import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/core/constants/api_constant.dart';
import 'package:nipuna_app/shared/data/remote/network_service.dart';
import 'package:nipuna_app/shared/domain/models/response.dart' as response;
import 'package:nipuna_app/shared/exceptions/http_exception.dart';
import 'package:nipuna_app/shared/mixins/exception_handler_mixin.dart';

final kTestMode = Platform.environment.containsKey('FLUTTER_TEST');

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio dio;
  final Ref ref;
  @override
  String baseUrl;
  List<Map<dynamic, dynamic>> failedRequests = [];
  bool isRefreshing = false;

  DioNetworkService(this.dio, this.baseUrl, this.ref) {
    if (!kTestMode) {
      dio.options = dioBaseOptions;

      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          handler.next(options);
        },
        onError: (DioException e, handler) async {
          return handler.next(e);
        },
      ));
    }
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) => log(object.toString()),
      ));
    }
  }

  Future retryRequests(token) async {
    for (var i = 0; i < failedRequests.length; i++) {
      RequestOptions requestOptions =
          failedRequests[i]['e'].requestOptions as RequestOptions;

      requestOptions.headers = {
        'x-rapidapi-key': ApiConstants.apiKey,
        'x-rapidapi-host': ApiConstants.apiHost
      };

      await dio.fetch(requestOptions).then(
        failedRequests[i]['handler'].resolve,
        onError: (error) async {
          failedRequests[i]['handler'].reject(error as DioException);
        },
      );
    }

    isRefreshing = false;
    failedRequests = [];
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );

  @override
  Map<String, Object> get headers {
    final Map<String, Object> baseHeaders = {
      'accept': 'application/json',
      'content-type': 'application/json',
      'x-rapidapi-key': ApiConstants.apiKey,
      'x-rapidapi-host': ApiConstants.apiHost
    };
    return baseHeaders;
  }

  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...data, ...headers};
    if (!kTestMode) {
      dio.options.headers = header;
    }
    return header;
  }

  @override
  Future<Either<AppException, response.Response>> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    // addAuthHeader();
    return handleException(
      () => dio.get(
        endpoint,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
  }
}
