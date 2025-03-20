import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'alquran_surah_api_service.g.dart';

@RestApi()
abstract class AlquranSurahApiService {
  factory AlquranSurahApiService(Dio dio, {String? baseUrl}) = _AlquranSurahApiService;

  @GET('/v2/surat')
  Future<HttpResponse> getSurah();
}