import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart';

part 'surah_event.dart';
part 'surah_state.dart';
part 'surah_bloc.freezed.dart';

@injectable
class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final ISurahRepository iSurahRepository;

  SurahBloc(this.iSurahRepository) : super(const SurahState.initial()) {
    // ✅ Memuat data dari API
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

    // ✅ Menyimpan data asli agar bisa digunakan untuk filter
    on<_SetAllSurah>((event, emit) {
      emit(SurahState.loadSuccess(
        surahList: event.list,
        filteredList: event.list,
        searchQuery: '',
      ));
    });

    // ✅ Fitur pencarian yang benar
    on<_SearchSurah>((event, emit) {
      final currentState = state;
      if (currentState is _LoadSuccess) {
        final query = event.query.toLowerCase();

        // ✅ Gunakan `surahList` sebagai sumber data pencarian
        final filteredList = currentState.surahList?.where((surah) {
return (surah.namaLatin?.toLowerCase() ?? '').contains(query) ||
       (surah.arti?.toLowerCase() ?? '').contains(query);

        }).toList();

        emit(SurahState.loadSuccess(
          surahList: currentState.surahList,
          filteredList: filteredList ?? [],
          searchQuery: event.query,
        ));
      }
    });
  }
}

