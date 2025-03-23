import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/features/doa_harian/domain/entities/doa_harian.dart';
import 'package:muslim_daily/features/doa_harian/domain/interfaces/i_doa_harian_repository.dart';

part 'doa_harian_event.dart';
part 'doa_harian_state.dart';
part 'doa_harian_bloc.freezed.dart';

@injectable
class DoaHarianBloc extends Bloc<DoaHarianEvent, DoaHarianState> {
  final IDoaHarianRepository iDoaHarianRepository;

  DoaHarianBloc(this.iDoaHarianRepository)
      : super(const DoaHarianState.initial()) {
    on<_GetDoaHarian>((event, emit) async {
      try {
        emit(const DoaHarianState.loadInProgress());
        final result = await iDoaHarianRepository.getDoaHarian();
        result.fold(
          (l) => emit(DoaHarianState.loadFailure(l)),
          (r) => emit(DoaHarianState.loadSuccess(
            doaHarianList: r,
            filteredList: r,
            searchQuery: '',
          )),
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
