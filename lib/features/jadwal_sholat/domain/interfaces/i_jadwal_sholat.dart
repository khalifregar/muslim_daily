import 'package:dartz/dartz.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';

abstract class IJadwalSholatRepository {
  Future<Either<Failure, JadwalSholat>> getJadwalSholat({
    required double latitude,
    required double longitude,
    int method = 20,
  });
}
