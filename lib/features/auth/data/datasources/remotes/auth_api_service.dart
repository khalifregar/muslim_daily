import 'package:dio/dio.dart';
import 'package:muslim_daily/features/auth/data/models/request/login_request.dart';
import 'package:muslim_daily/features/auth/data/models/request/register_request.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService (Dio dio, {String? baseUrl}) = 
    _AuthApiService;

@POST('/auth/login')
Future<HttpResponse> login(@Body() LoginRequest request);

@POST('/auth/register')
Future<HttpResponse> register(@Body() RegisterRequest request);

@GET('/auth/profile')
Future<HttpResponse> getProfile();

}