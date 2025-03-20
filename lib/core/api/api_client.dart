import 'package:dio/dio.dart';
import 'package:muslim_daily/core/constant/api_constant.dart';

class ApiClient {
  static Dio dioClient() {
    final dio = Dio();
    dio.options = BaseOptions(
      baseUrl: ApiConstant.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
    return dio;
  }
}
