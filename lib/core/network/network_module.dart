import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/service/dio_factory.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart';

@module
abstract class NetworkModule {
  /// Dio untuk equran.id
  @Named('equranDio')
  @lazySingleton
  Dio get equranDio => DioFactory.create(
        baseUrl: AppConfig.instance.equranBaseUrl,
      );

  /// Dio untuk muslim-api-three
  @Named('muslimDio')
  @lazySingleton
  Dio get muslimDio => DioFactory.create(
        baseUrl: AppConfig.instance.muslimApiBaseUrl,
      );

  /// Retrofit Service untuk Surah dari equran
  @lazySingleton
  AlquranSurahApiService alquranSurahApiService(
    @Named('equranDio') Dio dio,
  ) =>
      AlquranSurahApiService(dio);

  /// Retrofit Service untuk SurahRead dari muslim-api
  @lazySingleton
  SurahReadApiService surahReadApiService(
    @Named('equranDio') Dio dio,
  ) =>
      SurahReadApiService(dio);
}
