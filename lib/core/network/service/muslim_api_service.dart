import 'package:dio/dio.dart';
import 'package:muslim_daily/app_config.dart';
import 'package:muslim_daily/core/network/service/dio_factory.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasource/remotes/surah_read_api_service.dart';
import 'package:muslim_daily/features/doa_harian/data/datasources/remotes/doa_harian_api_service.dart';

class MuslimApiService {
  late final Dio dio;
  late final DoaHarianApiService doaHarianApiService;


  MuslimApiService() {
    dio = DioFactory.create(baseUrl: AppConfig.instance.muslimApiBaseUrl);
    doaHarianApiService = DoaHarianApiService(dio);
  }
}
