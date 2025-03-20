part of 'surah_bloc.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = _Initial;
  const factory SurahState.loadInProgress() = _LoadInProgress;
  const factory SurahState.loadSuccess({
    required List<Surah>? surahList,
    required List<Surah>? filteredList,
    required String searchQuery,
  }) = _LoadSuccess;
  const factory SurahState.loadFailure(Failure? failure) = _LoadFailure;
}
