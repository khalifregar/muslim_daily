part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loadInProgress() = _LoadInProgress;
  const factory AuthState.loadSuccess(User user) = _LoadSuccess;
  const factory AuthState.loadFailure(Failure failure) = _LoadFailure;
}
