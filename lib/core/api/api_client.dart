import 'package:dio/dio.dart';
import 'package:muslim_daily/app_config.dart';

final equranDio = Dio(BaseOptions(baseUrl: AppConfig.instance.equranBaseUrl));
final muslimApiDio = Dio(BaseOptions(baseUrl: AppConfig.instance.muslimApiBaseUrl));
