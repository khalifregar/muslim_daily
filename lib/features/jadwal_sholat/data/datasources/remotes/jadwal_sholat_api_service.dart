import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'jadwal_sholat_api_service.g.dart';

@RestApi()
abstract class JadwalSholatApiService {
  factory JadwalSholatApiService(Dio dio, {String? baseUrl}) =
      _JadwalSholatApiService;

  @GET('/v1/timings')
  Future<HttpResponse> getJadwalSholat(@Query('latitude') double? latitude,
      @Query('longitude') double? longitude, @Query('method') int? method);
}
