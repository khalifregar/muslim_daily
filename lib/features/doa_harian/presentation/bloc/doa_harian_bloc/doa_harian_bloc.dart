import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:muslim_daily/features/doa_harian/domain/entities/doa_harian.dart';
import 'package:muslim_daily/features/doa_harian/domain/interfaces/i_doa_harian_repository.dart';

part 'doa_harian_event.dart';
part 'doa_harian_state.dart';
part 'doa_harian_bloc.freezed.dart';

const _cacheKey = 'cached_doa_harian';

@injectable
class DoaHarianBloc extends Bloc<DoaHarianEvent, DoaHarianState> {
  final IDoaHarianRepository iDoaHarianRepository;

  DoaHarianBloc(this.iDoaHarianRepository)
      : super(const DoaHarianState.initial()) {
    on<_GetDoaHarian>((event, emit) async {
      try {
        final prefs = await SharedPreferences.getInstance();
        final cachedJson = prefs.getString(_cacheKey);

        // ✅ Step 1: Load from cache if available
        if (cachedJson != null) {
          final List<dynamic> decoded = jsonDecode(cachedJson);
          final List<DoaHarian> cachedList = decoded
              .map((e) => DoaHarian.fromJson(e as Map<String, dynamic>))
              .toList();

          emit(DoaHarianState.loadSuccess(
            doaHarianList: cachedList,
            filteredList: cachedList,
            searchQuery: '',
          ));
          return; // 🔒 Hentikan di sini, tidak fetch ulang
        }

        // 🌀 Step 2: Only show loading if no cache
        emit(const DoaHarianState.loadInProgress());

        // 🌐 Step 3: Fetch from API (once only)
        final result = await iDoaHarianRepository.getDoaHarian();

        await result.fold(
          (l) async {
            emit(DoaHarianState.loadFailure(l));
          },
          (freshData) async {
            final encoded =
                jsonEncode(freshData.map((e) => e.toJson()).toList());
            await prefs.setString(_cacheKey, encoded);

            emit(DoaHarianState.loadSuccess(
              doaHarianList: freshData,
              filteredList: freshData,
              searchQuery: '',
            ));
          },
        );
      } catch (e) {
        emit(DoaHarianState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400),
        ));
      }
    });

    on<_SetAllDoaHarian>((event, emit) {
      emit(DoaHarianState.loadSuccess(
        doaHarianList: event.list,
        filteredList: event.list,
        searchQuery: '',
      ));
    });

    on<_SearchDoaHarian>((event, emit) {
      final currentState = state;
      if (currentState is _LoadSuccess) {
        final query = event.query.toLowerCase();

        final filteredList = currentState.doaHarianList?.where((doaHarian) {
          return (doaHarian.judul?.toLowerCase() ?? '').contains(query) ||
              (doaHarian.source?.toLowerCase() ?? '').contains(query);
        }).toList();

        emit(DoaHarianState.loadSuccess(
          doaHarianList: currentState.doaHarianList,
          filteredList: filteredList ?? [],
          searchQuery: event.query,
        ));
      }
    });
  }
}
