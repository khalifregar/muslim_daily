part of 'jadwal_sholat_cubit.dart';

@freezed
class JadwalSholatState with _$JadwalSholatState {
  const factory JadwalSholatState.initial() = _Initial;
  const factory JadwalSholatState.loadInProgress() = _LoadInProgress;
  const factory JadwalSholatState.loadSuccess(JadwalSholat jadwalSholat) = _LoadSuccess;
  const factory JadwalSholatState.loadFailure(Failure failure) = _LoadFailure;
}
