import 'package:dio/dio.dart';

/// Base class for custom Dio exceptions
abstract class AppDioError extends DioError {
  final String userMessage;
  final String? devMessage;

  AppDioError({
    required RequestOptions requestOptions,
    required this.userMessage,
    this.devMessage,
  }) : super(requestOptions: requestOptions);

  @override
  String toString() => userMessage;
}

// Timeout / deadline
class DeadlineExceededException extends AppDioError {
  DeadlineExceededException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Lama banget nunggu, koneksinya lelet nih.',
          devMessage: 'Request timeout (DeadlineExceeded)',
        );
}

// 400
class BadRequestException extends AppDioError {
  BadRequestException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Ada yang salah dari permintaan kamu, cek lagi ya!',
          devMessage: 'Bad request (400)',
        );
}

// 401
class UnauthorizedException extends AppDioError {
  UnauthorizedException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Kamu belum login nih. Masuk dulu ya~',
          devMessage: 'Unauthorized (401)',
        );
}

// 401 expired
class TokenExpiredException extends AppDioError {
  TokenExpiredException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Sesi kamu udah habis. Login ulang dulu yuk!',
          devMessage: 'Token expired (401)',
        );
}

// 403
class ForbiddenException extends AppDioError {
  ForbiddenException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Ups! Kamu nggak boleh akses bagian ini 😅',
          devMessage: 'Forbidden (403)',
        );
}

// 404
class NotFoundException extends AppDioError {
  NotFoundException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Hmm... datanya nggak ketemu nih.',
          devMessage: 'Not Found (404)',
        );
}

// 500
class InternalServerErrorException extends AppDioError {
  InternalServerErrorException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Ada yang error di server. Coba bentar lagi ya.',
          devMessage: 'Internal Server Error (500)',
        );
}

// No internet
class NoInternetConnectionException extends AppDioError {
  NoInternetConnectionException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Kayaknya kamu lagi offline deh. Cek koneksi ya!',
          devMessage: 'No internet',
        );
}

// Sertifikat SSL gagal
class BadCertificateException extends AppDioError {
  BadCertificateException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Oops! Sertifikatnya nggak valid 😬',
          devMessage: 'Bad certificate (SSL error)',
        );
}

// Fallback error
class UnknownErrorException extends AppDioError {
  UnknownErrorException(RequestOptions r)
      : super(
          requestOptions: r,
          userMessage: 'Waduh, ada error aneh nih. Coba lagi ya.',
          devMessage: 'Unknown error',
        );
}
