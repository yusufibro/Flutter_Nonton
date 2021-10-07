part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

// event ini suatu peristiwa yang terjadi

// analogi
//  restoran pesen makanan => koki masak => apakah lagi loading / initial / success / fail

class HomeGetMovies extends HomeEvent {}
