import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/service/dio_factory.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart';
import 'package:muslim_daily/features/auth/data/datasources/remotes/auth_api_service.dart';
import 'package:muslim_daily/features/doa_harian/data/datasources/remotes/doa_harian_api_service.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/datasources/remotes/jadwal_sholat_api_service.dart';

class ApiService {
  late final AlquranSurahApiService alquranSurahApiService;
  late final SurahReadApiService surahReadApiService;
  late final DoaHarianApiService doaHarianApiService;
  late final JadwalSholatApiService jadwalSholatApiService;

  late final AuthApiService authApiService;

  ApiService() {
    print('🔥 equranBaseUrl: ${AppConfig.instance.equranBaseUrl}');
    print('🔥 muslimApiBaseUrl: ${AppConfig.instance.muslimApiBaseUrl}');
    print('🔥 aladhanBaseUrl: ${AppConfig.instance.aladhanBaseUrl}');
    print('🔥 muslimDailyBaseUrl: ${AppConfig.instance.muslimDailyBaseUrl}'); // 🟡 Fokus utama

    final equranDio = DioFactory.create(baseUrl: AppConfig.instance.equranBaseUrl);
    final muslimDio = DioFactory.create(baseUrl: AppConfig.instance.muslimApiBaseUrl);
    final aladhanDio = DioFactory.create(baseUrl: AppConfig.instance.aladhanBaseUrl);
    final muslimDailyDio = DioFactory.create(baseUrl: AppConfig.instance.muslimDailyBaseUrl);

    alquranSurahApiService = AlquranSurahApiService(equranDio);
    surahReadApiService = SurahReadApiService(equranDio);
    doaHarianApiService = DoaHarianApiService(muslimDio);
    jadwalSholatApiService = JadwalSholatApiService(aladhanDio);

    authApiService = AuthApiService(muslimDailyDio);
  }
}


