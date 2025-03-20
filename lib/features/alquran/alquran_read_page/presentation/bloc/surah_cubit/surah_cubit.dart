import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_surah_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'surah_state.dart';
part 'surah_cubit.freezed.dart';

@injectable
class SurahCubit extends Cubit<SurahState> {
  final ISurahRepository iSurahRepository;

  SurahCubit(this.iSurahRepository) : super(const SurahState.initial());

  Future<void> getSurah() async {
    try {
      emit(const SurahState.loadInProgress());
      final data = await iSurahRepository.getSurah();
      data.fold(
        (l) => emit(SurahState.loadFailure(l)),
        (r) => emit(SurahState.loadSuccess(r)),
      );
    } catch (e) {
      emit(SurahState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
