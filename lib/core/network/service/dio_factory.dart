import 'package:dio/dio.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/api_error_interceptors.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/foundation.dart';

class DioFactory {
  static Dio create({required String baseUrl}) {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      contentType: Headers.jsonContentType,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ));

    dio.interceptors.add(AppInterceptors());

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 100,
      ));
    }

    return dio;
  }
}
