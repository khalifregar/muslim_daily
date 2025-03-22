import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/core/network/api_service.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/models/dtos/surah_read_dto.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah_read.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_alquran_repository.dart';

@LazySingleton(as: IAlquranRepository)
class AlquranRepository implements IAlquranRepository {
  final ApiService api;

  AlquranRepository(this.api);

  @override
  Future<Either<Failure, SurahRead>> getSurahRead(int nomor) async {
    try {
      final response = await api.surahReadApiService.getSurahRead(nomor.toString());
      final data = response.data;
      final parsed = data is String ? jsonDecode(data) : data;
      if (parsed == null || parsed['data'] == null) {
  return Left(ServerFailure(message: 'Data kosong dari server'));
}
      final surahRead = SurahReadDto.fromJson(parsed['data']).toDomain();
      return Right(surahRead);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
