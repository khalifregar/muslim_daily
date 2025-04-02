import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'card_content_event.dart';
part 'card_content_state.dart';

class CardContentBloc extends Bloc<CardContentEvent, CardContentState> {
  CardContentBloc() : super(CardContentInitial()) {
    on<CardContentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
