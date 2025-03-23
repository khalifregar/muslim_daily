import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/entities/surah.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/interfaces/i_surah_repository.dart';

part 'surah_state.dart';
part 'surah_cubit.freezed.dart';

const _cacheKey = 'cached_surah_list';

@injectable
class SurahCubit extends Cubit<SurahState> {
  final ISurahRepository iSurahRepository;

  List<Surah>? _cachedSurah;

  SurahCubit(this.iSurahRepository) : super(const SurahState.initial());

  Future<void> getSurah() async {
    if (isClosed) return;

    final prefs = await SharedPreferences.getInstance();
    final cachedJson = prefs.getString(_cacheKey);

    // ✅ Jika cache tersedia, langsung pakai
    if (cachedJson != null) {
      final decoded = jsonDecode(cachedJson) as List;
      final List<Surah> fromCache = decoded.map((e) => Surah.fromJson(e)).toList();
      _cachedSurah = fromCache;

      emit(SurahState.loadSuccess(fromCache));
      return; // 🔒 Stop, tidak fetch ulang
    }

    // ⏳ Kalau belum ada cache, tampilkan loading
    emit(const SurahState.loadInProgress());

    // 🌐 Fetch dari API (pertama kali saja)
    final result = await iSurahRepository.getSurah();

    result.fold(
      (l) => emit(SurahState.loadFailure(l)),
      (r) async {
        _cachedSurah = r;

        final encoded = jsonEncode(r.map((e) => e.toJson()).toList());
        await prefs.setString(_cacheKey, encoded);

        emit(SurahState.loadSuccess(r));
      },
    );
  }

  List<Surah>? get cachedSurah => _cachedSurah;

  Future<void> refreshSurah() async {
    _cachedSurah = null;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cacheKey);
    await getSurah();
  }
}
