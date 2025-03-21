import 'package:dio/dio.dart';

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Koneksi terlalu lama. Silakan coba lagi.';
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Permintaan tidak valid.';
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Tidak terotorisasi.';
}

class TokenExpiredException extends DioError {
  TokenExpiredException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Token kedaluwarsa.';
}

class ForbiddenException extends DioError {
  ForbiddenException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Akses ditolak.';
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Data tidak ditemukan.';
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Kesalahan server. Coba lagi nanti.';
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Tidak ada koneksi internet.';
}

class BadCertificateException extends DioError {
  BadCertificateException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Sertifikat tidak valid.';
}

class UnknownErrorException extends DioError {
  UnknownErrorException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() => 'Terjadi kesalahan yang tidak diketahui.';
}
