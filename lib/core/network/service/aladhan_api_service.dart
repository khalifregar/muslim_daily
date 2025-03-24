import 'package:dio/dio.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/service/dio_factory.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/datasources/remotes/jadwal_sholat_api_service.dart';

class AladhanApiService {
  late final Dio dio;
  late final JadwalSholatApiService jadwalSholatService;

  AladhanApiService() {
    dio = DioFactory.create(baseUrl: AppConfig.instance.aladhanBaseUrl);
    jadwalSholatService = JadwalSholatApiService(dio);
  }
}
