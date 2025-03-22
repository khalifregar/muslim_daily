import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah_read.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_alquran_repository.dart';

part 'alquran_read_state.dart';
part 'alquran_read_cubit.freezed.dart';

@injectable
class AlquranReadCubit extends Cubit<AlquranReadState> {
  final IAlquranRepository iAlquranRepository;

  final Map<int, SurahRead> _cachedSurahRead = {};

    int? _currentNomor;
  int? get currentNomor => _currentNomor;


  AlquranReadCubit(this.iAlquranRepository)
      : super(const AlquranReadState.initial());

Future<void> getSurahRead(int nomor) async {
  if (isClosed) return;

  _currentNomor = nomor;

  if (_cachedSurahRead.containsKey(nomor)) {
    emit(AlquranReadState.loadSuccess(_cachedSurahRead[nomor]!));
    return;
  }

  emit(const AlquranReadState.loadInProgress());

  try {
    final result = await iAlquranRepository.getSurahRead(nomor);
    result.fold(
      (l) => emit(AlquranReadState.loadFailure(l)),
      (r) {
        _cachedSurahRead[nomor] = r;
        emit(AlquranReadState.loadSuccess(r));
      },
    );
  } catch (e) {
    emit(AlquranReadState.loadFailure(
      ServerFailure(message: e.toString(), errorCode: 400),
    ));
  }
}





  SurahRead? getCached(int nomor) => _cachedSurahRead[nomor];


Future<void> refreshSurahRead(int nomor) async {
  _cachedSurahRead.remove(nomor);
  await getSurahRead(nomor);
}

}