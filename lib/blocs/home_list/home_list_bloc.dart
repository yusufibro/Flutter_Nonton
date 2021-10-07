import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_nonton/models/movie_list_model.dart';
import 'package:flutter_nonton/services/movie_list_service.dart';

part 'home_list_event.dart';
part 'home_list_state.dart';

class HomeListBloc extends Bloc<HomeListEvent, HomeListState> {
  HomeListBloc() : super(HomeListInitial()) {
    on<HomeListEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is HomeListGetMovies) {
        try {
          emit(HomeListLoading());
          final data = await MovieListService().getRecommendationMovies();
          emit(HomeListSuccess(data));
        } catch (e) {
          emit(HomeListFailed());
        }
      }
    });
  }
}
