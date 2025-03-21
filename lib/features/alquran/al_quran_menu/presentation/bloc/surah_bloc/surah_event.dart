part of 'surah_bloc.dart';

@freezed
class SurahEvent with _$SurahEvent {
  const factory SurahEvent.getSurah() = _GetSurah;
  const factory SurahEvent.searchSurah(String query) = _SearchSurah;
  const factory SurahEvent.setAllSurah(List<Surah> list) = _SetAllSurah; // ✅ Event baru
}
