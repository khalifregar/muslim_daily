import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'surah_state.dart';
part 'surah_cubit.freezed.dart';

@injectable
class SurahCubit extends Cubit<SurahState> {
  final ISurahRepository iSurahRepository;

  // ✅ Internal cache untuk menyimpan data Surah
  List<Surah>? _cachedSurah;

  SurahCubit(this.iSurahRepository) : super(const SurahState.initial());

  Future<void> getSurah() async {
    if (isClosed) return;

    // 🔁 Kalau sudah ada cache, langsung emit data tanpa loading
    if (_cachedSurah != null) {
      emit(SurahState.loadSuccess(_cachedSurah!));
      return;
    }

    emit(const SurahState.loadInProgress());

    try {
      final data = await iSurahRepository.getSurah();

      data.fold(
        (l) => emit(SurahState.loadFailure(l)),
        (r) {
          _cachedSurah = r; // ✅ Simpan cache
          emit(SurahState.loadSuccess(r));
        },
      );
    } catch (e) {
      if (!isClosed) {
        emit(SurahState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400),
        ));
      }
    }
  }

  // ✅ Getter untuk ambil cache di luar (opsional)
  List<Surah>? get cachedSurah => _cachedSurah;

  // 🔄 Untuk refresh manual dari luar
  Future<void> refreshSurah() async {
    _cachedSurah = null;
    await getSurah();
  }
}
