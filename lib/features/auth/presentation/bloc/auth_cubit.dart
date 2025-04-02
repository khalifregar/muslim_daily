import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/core/constant/preference_constant.dart';
import 'package:muslim_daily/core/helper/preference/preference_helper.dart';
import 'package:muslim_daily/features/auth/data/models/request/login_request.dart';
import 'package:muslim_daily/features/auth/data/models/request/register_request.dart';
import 'package:muslim_daily/features/auth/domain/entities/user.dart';
import 'package:muslim_daily/features/auth/domain/interfaces/i_auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository iAuthRepository;

  AuthCubit(this.iAuthRepository) : super(const AuthState.initial());

  Future<void> login(LoginRequest request) async {
    emit(const AuthState.loadInProgress());
    final result = await iAuthRepository.login(request);

    if (result.isLeft()) {
      final failure = result.fold((l) => l, (r) => null);
      emit(AuthState.loadFailure(failure!));
      return;
    }

    final user = result.getOrElse(() => User());
    await saveStringValue(
      key: PreferenceConstants.token,
      value: user.token ?? '',
    );

    emit(AuthState.loadSuccess(user));
  }

  Future<void> register(RegisterRequest request) async {
    emit(const AuthState.loadInProgress());
    final result = await iAuthRepository.register(request);

    if (result.isLeft()) {
      final failure = result.fold((l) => l, (r) => null);
      emit(AuthState.loadFailure(failure!));
      return;
    }

    final user = result.getOrElse(() => User());
    await saveStringValue(
      key: PreferenceConstants.token,
      value: user.token ?? '',
    );

    emit(AuthState.loadSuccess(user));
  }

  Future<void> getProfile() async {
    emit(const AuthState.loadInProgress());
    final result = await iAuthRepository.getProfile();

    if (result.isLeft()) {
      final failure = result.fold((l) => l, (r) => null);
      emit(AuthState.loadFailure(failure!));
      return;
    }

    final user = result.getOrElse(() => User());
    emit(AuthState.loadSuccess(user));
  }

  Future<void> logout() async {
    await removeValue(key: PreferenceConstants.token);
    emit(const AuthState.initial());
  }
}
