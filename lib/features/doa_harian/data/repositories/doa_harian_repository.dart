import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/core/network/api_service.dart';
import 'package:muslim_daily/features/doa_harian/data/models/dtos/doa_harian_dto.dart';
import 'package:muslim_daily/features/doa_harian/domain/entities/doa_harian.dart';
import 'package:muslim_daily/features/doa_harian/domain/interfaces/i_doa_harian_repository.dart';

@LazySingleton(as: IDoaHarianRepository)
class DoaHarianRepository implements IDoaHarianRepository {
  final ApiService api;

  DoaHarianRepository(this.api);

  @override
  Future<Either<Failure, List<DoaHarian>>> getDoaHarian() async {
    try {
      final response = await api.doaHarianApiService.getDoaHarian();
      final data = response.data;
      final parsed = data is String ? jsonDecode(data) : data;
      final list = DoaHarianDto.fromJsonList(parsed['data']);

      return Right(list);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DoaHarian>>> getDoaSource(String source) async {
    try {
      final response = await api.doaHarianApiService.getDoaSource(source);
      final data = response.data;
      final parsed = data is String ? jsonDecode(data) : data;
      final list = DoaHarianDto.fromJsonList(parsed['data']);

      return Right(list);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DoaHarian>>> getDoaFind(String query) async {
    try {
      final response = await api.doaHarianApiService.getDoaFind(query);
      final data = response.data;
      final parsed = data is String ? jsonDecode(data) : data;
      final list = DoaHarianDto.fromJsonList(parsed['data']);

      return Right(list);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
