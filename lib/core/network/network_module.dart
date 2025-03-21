import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/constant/api_constant.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';

@module
abstract class NetworkModule {
  // ✅ 1. Registrasi Dio
  @lazySingleton
  Dio get dio => Dio(BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ));

  // ✅ 2. Registrasi Retrofit API Service
  @lazySingleton
  AlquranSurahApiService get alquranSurahApiService =>
      AlquranSurahApiService(dio);
}
