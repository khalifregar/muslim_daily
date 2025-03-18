part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const SplashState._(); // Tambahkan ini agar `maybeMap` dikenali oleh Freezed

  const factory SplashState.initial() = _Initial;
  const factory SplashState.loadInProgress() = _LoadInProgress;
  const factory SplashState.loadSuccess(String routerName) = _LoadSuccess;
  const factory SplashState.loadFailure() = _LoadFailure;
}
