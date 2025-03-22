import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'surah_read_api_service.g.dart';

@RestApi()
abstract class SurahReadApiService {
  factory SurahReadApiService(Dio dio, {String? baseUrl}) = _SurahReadApiService;

  @GET('/v2/surat/{nomor}')
  Future<HttpResponse> getSurahRead(@Path('nomor') String? nomor);
}