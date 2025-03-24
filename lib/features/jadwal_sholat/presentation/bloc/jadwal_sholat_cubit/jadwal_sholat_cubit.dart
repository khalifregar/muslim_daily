import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/interfaces/i_jadwal_sholat.dart';

part 'jadwal_sholat_state.dart';
part 'jadwal_sholat_cubit.freezed.dart';

@injectable
class JadwalSholatCubit extends Cubit<JadwalSholatState> {
  final IJadwalSholatRepository iJadwalSholatRepository;

  JadwalSholatCubit(this.iJadwalSholatRepository)
      : super(const JadwalSholatState.initial());

  Future<void> getJadwalSholat({required double latitude, required double longitude}) async {
    if (isClosed) return;

    emit(const JadwalSholatState.loadInProgress());

    log('📡 Fetching jadwal sholat dari repo...', name: 'JadwalSholatCubit');

    final result = await iJadwalSholatRepository.getJadwalSholat(
      latitude: latitude,
      longitude: longitude,
    );

    log('📦 Result dari repo: $result', name: 'JadwalSholatCubit');

    result.fold(
      (l) {
        log('❌ Error: ${l.message}', name: 'JadwalSholatCubit');
        emit(JadwalSholatState.loadFailure(l));
      },
      (r) {
        log('✅ Success dapet jadwal: ${r.timing?.dhuhr}', name: 'JadwalSholatCubit');
        emit(JadwalSholatState.loadSuccess(r));
      },
    );
  }
}
