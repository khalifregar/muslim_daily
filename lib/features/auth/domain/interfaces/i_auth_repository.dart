import 'package:dartz/dartz.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/auth/data/models/request/login_request.dart';
import 'package:muslim_daily/features/auth/data/models/request/register_request.dart';
import 'package:muslim_daily/features/auth/domain/entities/user.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User>> login(LoginRequest request);
  Future<Either<Failure, User>> register(RegisterRequest request);
  Future<Either<Failure, User>> getProfile();
}
