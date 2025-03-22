part of 'alquran_read_cubit.dart';

@freezed
class AlquranReadState with _$AlquranReadState {
  const factory AlquranReadState.initial() = _Initial;
  const factory AlquranReadState.loadInProgress() = _LoadInProgress;
  const factory AlquranReadState.loadSuccess(SurahRead surahRead) = _LoadSuccess;
  const factory AlquranReadState.loadFailure(Failure failure) = _LoadFailure;
}
