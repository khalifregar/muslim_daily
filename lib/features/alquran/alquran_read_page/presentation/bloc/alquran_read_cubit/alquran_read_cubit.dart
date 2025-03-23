import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah_read.dart';
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

    final prefs = await SharedPreferences.getInstance();
    final cacheKey = 'surah_read_$nomor';
    final cachedJson = prefs.getString(cacheKey);

    // ✅ Jika sudah pernah di-cache, langsung gunakan
    if (cachedJson != null) {
      final decoded = jsonDecode(cachedJson) as Map<String, dynamic>;
      final fromCache = SurahRead.fromJson(decoded);
      _cachedSurahRead[nomor] = fromCache;

      emit(AlquranReadState.loadSuccess(fromCache));
      return; // 🔒 Stop di sini, gak usah fetch ulang
    }

    // ❌ Tidak ada cache? Baru tampilkan loading
    emit(const AlquranReadState.loadInProgress());

    // ✅ Fetch dari API (hanya sekali)
    try {
      final result = await iAlquranRepository.getSurahRead(nomor);
      await result.fold(
        (l) async {
          emit(AlquranReadState.loadFailure(l));
        },
        (r) async {
          final encoded = jsonEncode(r.toJson());
          await prefs.setString(cacheKey, encoded);

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

  /// Optional: bisa dihapus kalau gak ada fitur refresh manual
  Future<void> refreshSurahRead(int nomor) async {
    _cachedSurahRead.remove(nomor);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('surah_read_$nomor');
    await getSurahRead(nomor);
  }
}
