import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:muslim_daily/core/constant/api_constant.dart';
import 'package:muslim_daily/core/network/api_error_interceptors.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  late final Dio dio;
  late final AlquranSurahApiService alquranSurahApiService;

  ApiService() {
    // ✅ Setup Dio
    final baseOptions = BaseOptions(
      baseUrl: ApiConstant.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      contentType: Headers.jsonContentType,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );

    dio = Dio(baseOptions)
      ..interceptors.add(AppInterceptors());

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          error: true,
          compact: true,
          maxWidth: 100,
        ),
      );
    }

    // ✅ Setup Retrofit service pakai Dio ini
    alquranSurahApiService = AlquranSurahApiService(dio);
  }

  /// ✅ **Tambahkan log pencarian di terminal**
  void logSearch(String query, List<dynamic> result) {
    if (query.isEmpty) return;

    if (result.isNotEmpty) {
      log('🔍 Search "$query" berhasil, ditemukan ${result.length} hasil: ${result.map((s) => s.namaLatin).join(", ")}');
    } else {
      log('❌ Search "$query" tidak ditemukan.');
    }
  }
}
