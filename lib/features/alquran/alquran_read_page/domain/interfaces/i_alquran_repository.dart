import 'package:dartz/dartz.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/ayat.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah_read.dart';

abstract class IAlquranRepository {
  Future<Either<Failure, SurahRead>> getSurahRead(int nomor);
}
