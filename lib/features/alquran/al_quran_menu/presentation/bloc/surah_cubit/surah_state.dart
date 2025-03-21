part of 'surah_cubit.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = _Initial;
  const factory SurahState.loadInProgress() = _LoadInProgress;
  const factory SurahState.loadSuccess(List<Surah> surahList) = _LoadSuccess;
  const factory SurahState.loadFailure(Failure failure) = _LoadFailure;
}
