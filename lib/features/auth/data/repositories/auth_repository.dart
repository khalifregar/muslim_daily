import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/core/helper/failure/dio_error_parser.dart';
import 'package:muslim_daily/features/auth/data/datasources/remotes/auth_api_service.dart';
import 'package:muslim_daily/features/auth/data/models/dto/auth_dto.dart';
import 'package:muslim_daily/features/auth/data/models/request/login_request.dart';
import 'package:muslim_daily/features/auth/data/models/request/register_request.dart';
import 'package:muslim_daily/features/auth/domain/entities/user.dart';
import 'package:muslim_daily/features/auth/domain/interfaces/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final AuthApiService apiService;

  AuthRepository(this.apiService);

  @override
  Future<Either<Failure, User>> login(LoginRequest request) async {
    try {
      final response = await apiService.login(request);
      final data = _parseResponse(response.data);
      final user = AuthDto.fromJson(data).toDomain();
      return Right(user);
    } on DioException catch (e) {
      return Left(GeneralFailure(
        message: DioErrorParser.parse(e, fallback: 'Login gagal, coba lagi ya.'),
      ));
    } catch (_) {
      return const Left(GeneralFailure(message: 'Terjadi kesalahan tak terduga saat login'));
    }
  }

  @override
  Future<Either<Failure, User>> register(RegisterRequest request) async {
    try {
      final response = await apiService.register(request);
      final data = _parseResponse(response.data);
      final user = AuthDto.fromJson(data).toDomain();
      return Right(user);
    } on DioException catch (e) {
      return Left(GeneralFailure(
        message: DioErrorParser.parse(e, fallback: 'Registrasi gagal'),
      ));
    } catch (_) {
      return const Left(GeneralFailure(message: 'Terjadi kesalahan tak terduga saat registrasi'));
    }
  }

  @override
  Future<Either<Failure, User>> getProfile() async {
    try {
      final response = await apiService.getProfile();
      final data = _parseResponse(response.data);
      final user = AuthDto.fromJson(data).toDomain();
      return Right(user);
    } on DioException catch (e) {
      return Left(GeneralFailure(
        message: DioErrorParser.parse(e, fallback: 'Gagal ambil profil'),
      ));
    } catch (_) {
      return const Left(GeneralFailure(message: 'Terjadi kesalahan tak terduga saat ambil profil'));
    }
  }

  Map<String, dynamic> _parseResponse(dynamic data) {
    if (data is String) return jsonDecode(data);
    if (data is Map<String, dynamic>) return data;
    throw const FormatException('Format response tidak valid');
  }
}
