import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'doa_harian_api_service.g.dart';

@RestApi()
abstract class DoaHarianApiService {
  factory DoaHarianApiService(Dio dio, {String? baseUrl}) = _DoaHarianApiService;

  @GET('/v1/doa')
  Future<HttpResponse> getDoaHarian();

  @GET('/v1/doa')
  Future<HttpResponse> getDoaSource(@Query('source') String? source);

  @GET('/v1/doa/find')
  Future<HttpResponse> getDoaFind(@Query('query') String? query);

}