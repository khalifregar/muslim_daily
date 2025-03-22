import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:muslim_daily/core/constant/api_constant.dart';
import 'package:muslim_daily/core/network/api_error_interceptors.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  late final Dio dio;
  late final AlquranSurahApiService alquranSurahApiService;
  late final SurahReadApiService surahReadApiService;

  ApiService() {
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

    dio = Dio(baseOptions)..interceptors.add(AppInterceptors());

    if (kDebugMode) {
      dio.interceptors.addAll([
        PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          error: true,
          compact: true,
          maxWidth: 100,
        ),
        InterceptorsWrapper(
          onResponse: (response, handler) {
            final path = response.requestOptions.path;

            // Log hanya untuk endpoint surat/{nomor}
            if (path.contains('/surat/')) {
              final data = response.data['data'];
              log(
                '[📘 SURAH] ${data['nomor']}. ${data['namaLatin']} | '
                'Arti: ${data['arti']}',
              );
            }

            handler.next(response);
          },
        ),
      ]);
    }

    // Inisialisasi Retrofit service
    alquranSurahApiService = AlquranSurahApiService(dio);
    surahReadApiService = SurahReadApiService(dio);
  }

  /// Logging untuk fitur pencarian (khusus debug mode)
  void logSearch(String query, List<dynamic> result) {
    if (query.isEmpty || !kDebugMode) return;

    if (result.isNotEmpty) {
      log('🔍 Search "$query" berhasil, ditemukan ${result.length} hasil: ${result.map((s) => s.namaLatin).join(", ")}');
    } else {
      log('❌ Search "$query" tidak ditemukan.');
    }
  }
}
