import 'package:dartz/dartz.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah.dart';

abstract class ISurahRepository {
  Future<Either<Failure, List<Surah>>> getSurah();
}