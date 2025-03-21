import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:muslim_daily/core/network/dio_exceptions.dart';

class AppInterceptors extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('❌ Dio Error: ${err.message}');

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        handler.next(DeadlineExceededException(err.requestOptions));
        return;

      case DioExceptionType.badResponse:
        final statusCode = err.response?.statusCode ?? 0;
        final responseData = err.response?.data.toString() ?? '';
        log('📡 Response $statusCode: $responseData');

        switch (statusCode) {
          case 400:
            handler.next(BadRequestException(err.requestOptions));
            return;

          case 401:
            handler.next(UnauthorizedException(err.requestOptions));
            return;

          case 403:
            handler.next(ForbiddenException(err.requestOptions));
            return;

          case 404:
            handler.next(NotFoundException(err.requestOptions));
            return;

          case 500:
          default:
            handler.next(InternalServerErrorException(err.requestOptions));
            return;
        }

      case DioExceptionType.badCertificate:
        handler.next(BadCertificateException(err.requestOptions));
        return;

      case DioExceptionType.unknown:
        handler.next(NoInternetConnectionException(err.requestOptions));
        return;

      case DioExceptionType.cancel:
      default:
        handler.next(UnknownErrorException(err.requestOptions));
        return;
    }
  }
}
