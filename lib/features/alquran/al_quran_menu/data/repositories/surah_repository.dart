import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/core/network/api_service.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/data/models/dtos/surah_dto.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart';

@LazySingleton(as: ISurahRepository)
class SurahRepository implements ISurahRepository {
  final ApiService api;

  SurahRepository(this.api);

  @override
  Future<Either<Failure, List<Surah>>> getSurah() async {
    try {
      final response = await api.alquranSurahApiService.getSurah();
      final data = response.data;

      final parsed = data is String ? jsonDecode(data) : data;
      final list = SurahDto.fromJsonList(parsed['data']);

      return Right(list);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
