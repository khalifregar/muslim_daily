import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'article_islami_event.dart';
part 'article_islami_state.dart';

class ArticleIslamiBloc extends Bloc<ArticleIslamiEvent, ArticleIslamiState> {
  ArticleIslamiBloc() : super(ArticleIslamiInitial()) {
    on<ArticleIslamiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
