part of 'home_list_bloc.dart';

abstract class HomeListEvent extends Equatable {
  const HomeListEvent();

  @override
  List<Object> get props => [];
}

class HomeListGetMovies extends HomeListEvent {}
