import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_nonton/models/movie_model.dart';
import 'package:flutter_nonton/services/movie_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is HomeGetMovies) {
        try {
          emit(HomeLoading());
          final nowPlayingMovies = await MovieService().getPlayingNowMovies();
          final topRatedMovies = await MovieService().getTopRatedMovies();
          emit(HomeSuccess(nowPlayingMovies, topRatedMovies));
        } catch (e) {
          emit(HomeFailed());
        }
      }
    });
  }
}
