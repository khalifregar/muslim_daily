import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/interfaces/i_surah_repository.dart';

part 'surah_event.dart';
part 'surah_state.dart';
part 'surah_bloc.freezed.dart';

@injectable
class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final ISurahRepository iSurahRepository;

  SurahBloc(this.iSurahRepository) : super(const SurahState.initial()) {
    on<_GetSurah>((event, emit) async {
      try {
        emit(const SurahState.loadInProgress());
        final data = await iSurahRepository.getSurah();
        data.fold(
          (l) => emit(SurahState.loadFailure(l)),
          (r) => emit(SurahState.loadSuccess(
            surahList: r,
            filteredList: r,
            searchQuery: '',
          )),
        );
      } catch (e) {
        emit(SurahState.loadFailure(
            ServerFailure(message: e.toString(), errorCode: 400)));
      }
    });

    on<_SearchSurah>((event, emit) {
      final currentState = state;
      if (currentState is _LoadSuccess) {
        final query = event.query.toLowerCase();
        final filteredList = currentState.surahList?.where((surah) {
          return surah.nama?.toLowerCase().contains(query) == true ||
              surah.namaLatin?.toLowerCase().contains(query) == true ||
              surah.arti?.toLowerCase().contains(query) == true;
        }).toList();
        emit(SurahState.loadSuccess(
          surahList: currentState.surahList,
          filteredList: filteredList,
          searchQuery: event.query,
        ));
      }
    });
  }
}
