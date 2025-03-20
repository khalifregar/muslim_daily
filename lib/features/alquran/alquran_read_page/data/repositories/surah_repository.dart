
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/datasources/remotes/alquran_surah_api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/models/dtos/surah_dto.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_surah_repository.dart';
import 'package:muslim_daily/injection.dart';

@LazySingleton(as: ISurahRepository)
class SurahRepository implements ISurahRepository {
  final AlquranSurahApiService apiService;

  SurahRepository(this.apiService); // ✅ Gunakan konstruktor dependency injection

@override
Future<Either<Failure, List<Surah>>> getSurah() async {
  try {
    List<Surah> surahList = [];
    var response = await apiService.getSurah();
    
    if (response.data != null) {
      final body = response.data;
      final result = body is String ? jsonDecode(body) : body;
      surahList = SurahDto.fromJsonList(result['data']); // Menggunakan SurahDto
    } else {
      throw GeneralException(message: 'Invalid Request');
    }
    
    return Right(surahList);
  } on GeneralException catch (e) {
    return Left(GeneralFailure(message: e.message));
  }
}

}