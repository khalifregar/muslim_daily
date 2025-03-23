import 'package:dartz/dartz.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/doa_harian/domain/entities/doa_harian.dart';

abstract class IDoaHarianRepository {
  Future<Either<Failure, List<DoaHarian>>> getDoaHarian();
  Future<Either<Failure, List<DoaHarian>>> getDoaSource(String source);
  Future<Either<Failure, List<DoaHarian>>> getDoaFind(String query);
}
