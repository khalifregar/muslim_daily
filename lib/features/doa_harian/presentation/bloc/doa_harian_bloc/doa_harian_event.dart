part of 'doa_harian_bloc.dart';

@freezed
class DoaHarianEvent with _$DoaHarianEvent {
  const factory DoaHarianEvent.getDoaHarian() = _GetDoaHarian;
  const factory DoaHarianEvent.searchDoaHarian(String query) = _SearchDoaHarian;
  const factory DoaHarianEvent.setAllDoaHarian(List<DoaHarian> list) = _SetAllDoaHarian;
}
