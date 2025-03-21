import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'jadwal_sholat_event.dart';
part 'jadwal_sholat_state.dart';

class JadwalSholatBloc extends Bloc<JadwalSholatEvent, JadwalSholatState> {
  JadwalSholatBloc() : super(JadwalSholatInitial()) {
    on<JadwalSholatEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
