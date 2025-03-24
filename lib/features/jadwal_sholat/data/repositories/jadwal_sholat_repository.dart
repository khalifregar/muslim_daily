import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/core/network/api_service.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/models/dtos/jadwal_sholat_dto.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/interfaces/i_jadwal_sholat.dart';

@LazySingleton(as: IJadwalSholatRepository)
class JadwalSholatRepository implements IJadwalSholatRepository {
  final ApiService api;

  JadwalSholatRepository(this.api);

  @override
  Future<Either<Failure, JadwalSholat>> getJadwalSholat({
    required double latitude,
    required double longitude,
    int method = 20,
  }) async {
    try {
      final response = await api.jadwalSholatApiService.getJadwalSholat(
        latitude,
        longitude,
        method,
      );

      final data = response.data;
      final parsed = data is String ? jsonDecode(data) : data;
      final dto = JadwalSholatDto.fromJson(parsed['data']);
      final result = dto.toDomain();

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
