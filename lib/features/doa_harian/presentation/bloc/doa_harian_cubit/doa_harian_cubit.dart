import 'package:muslim_daily/core/common/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_daily/features/doa_harian/domain/entities/doa_harian.dart';
import 'package:muslim_daily/features/doa_harian/domain/interfaces/i_doa_harian_repository.dart';

part 'doa_harian_state.dart';
part 'doa_harian_cubit.freezed.dart';

@injectable
class DoaHarianCubit extends Cubit<DoaHarianState> {
  final IDoaHarianRepository iDoaHarianRepository;

  List<DoaHarian>? _cachedDoa;

  DoaHarianCubit(this.iDoaHarianRepository) : super(const DoaHarianState.initial());

  Future<void> getDoaHarian() async {
    if (isClosed) return;

    if (_cachedDoa != null) {
      emit(DoaHarianState.loadSuccess(_cachedDoa!));
      return;
    }

    emit(const DoaHarianState.loadInProgress());

    try {
      final data = await iDoaHarianRepository.getDoaHarian();

      data.fold(
        (l) => emit(DoaHarianState.loadFailure(l)),
        (r) {
          _cachedDoa = r;
          emit(DoaHarianState.loadSuccess(r));
        },
      );
    } catch (e) {
      if (!isClosed) {
        emit(DoaHarianState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400),
        ));
      }
    }
  }

  List<DoaHarian>? get cachedDoa => _cachedDoa;

  Future<void> refreshDoaHarian() async {
    _cachedDoa = null;
    await getDoaHarian();
  }
}
