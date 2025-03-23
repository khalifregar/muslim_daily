import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/service/dio_factory.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart';
import 'package:muslim_daily/features/doa_harian/data/datasources/remotes/doa_harian_api_service.dart';

class ApiService {
  late final AlquranSurahApiService alquranSurahApiService;
  late final SurahReadApiService surahReadApiService;
  late final DoaHarianApiService doaHarianApiService;

  ApiService() {
    final equranDio = DioFactory.create(baseUrl: AppConfig.instance.equranBaseUrl);
    final muslimDio = DioFactory.create(baseUrl: AppConfig.instance.muslimApiBaseUrl);

    alquranSurahApiService = AlquranSurahApiService(equranDio);
    surahReadApiService = SurahReadApiService(equranDio);
    doaHarianApiService = DoaHarianApiService(muslimDio);
  }
}
