part of 'doa_harian_cubit.dart';

@freezed
class DoaHarianState with _$DoaHarianState {
  const factory DoaHarianState.initial() = _Initial;
  const factory DoaHarianState.loadInProgress() = _LoadInProgress;
  const factory DoaHarianState.loadSuccess(List<DoaHarian> doaList) = _LoadSuccess;
  const factory DoaHarianState.loadFailure(Failure failure) = _LoadFailure;
}
