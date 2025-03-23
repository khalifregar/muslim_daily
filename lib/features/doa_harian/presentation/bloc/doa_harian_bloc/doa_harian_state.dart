part of 'doa_harian_bloc.dart';

@freezed
class DoaHarianState with _$DoaHarianState {
  const factory DoaHarianState.initial() = _Initial;
  const factory DoaHarianState.loadInProgress() = _LoadInProgress;
  const factory DoaHarianState.loadSuccess({
    required List<DoaHarian>? doaHarianList,
    required List<DoaHarian>? filteredList,
    required String searchQuery,
  }) = _LoadSuccess;
  const factory DoaHarianState.loadFailure(Failure? failure) = _LoadFailure;
}
