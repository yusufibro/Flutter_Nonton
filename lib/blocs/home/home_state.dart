part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

// state apa saja yang ada pada block kita
// initial
// loading data
// data terisi
// fail data

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailed extends HomeState {}

class HomeSuccess extends HomeState {
  final List<MovieModel> nowPlayingMovies;
  final List<MovieModel> topRatedMovies;

  HomeSuccess(this.nowPlayingMovies, this.topRatedMovies);

  @override
  List<Object> get props => [nowPlayingMovies, topRatedMovies];
}
