import 'package:dio/dio.dart';

class DioErrorParser {
  static String parse(DioException e, {String fallback = 'Terjadi kesalahan'}) {
    final response = e.response;

    if (response != null) {
      final status = response.statusCode;
      final data = response.data;

      // ✅ Status 400 atau 401 dianggap sebagai kesalahan autentikasi
      if (status == 400 || status == 401) {
        // Kalau data berupa Map dan punya key 'message'
        if (data is Map<String, dynamic> && data['message'] != null) {
          return data['message'].toString();
        }

        // Kalau data berupa String langsung
        if (data is String && data.isNotEmpty) {
          return data;
        }

        return 'Email atau password salah';
      }

      // ✅ Kalau bukan auth error, tetap coba ambil message
      if (data is Map<String, dynamic> && data['message'] != null) {
        return data['message'].toString();
      }
    }

    // ✅ Fallback terakhir
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Timeout! Server terlalu lama merespon';
      case DioExceptionType.connectionError:
        return 'Koneksi internet kamu bermasalah';
      case DioExceptionType.unknown:
      default:
        return fallback;
    }
  }
}

