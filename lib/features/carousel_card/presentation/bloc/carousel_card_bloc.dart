import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'carousel_card_event.dart';
part 'carousel_card_state.dart';

class CarouselCardBloc extends Bloc<CarouselCardEvent, CarouselCardState> {
  CarouselCardBloc() : super(CarouselCardInitial()) {
    on<CarouselCardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
