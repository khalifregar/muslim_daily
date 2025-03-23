import 'package:dio/dio.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/service/dio_factory.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart';

class EquranApiService {
  late final Dio dio;
  late final AlquranSurahApiService surahService;
  late final SurahReadApiService surahReadService;

  EquranApiService() {
    dio = DioFactory.create(baseUrl: AppConfig.instance.equranBaseUrl);
    surahService = AlquranSurahApiService(dio);
    surahReadService = SurahReadApiService(dio);
  }
}
