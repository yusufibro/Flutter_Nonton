part of 'home_list_bloc.dart';

abstract class HomeListState extends Equatable {
  const HomeListState();

  @override
  List<Object> get props => [];
}

class HomeListInitial extends HomeListState {}

class HomeListLoading extends HomeListState {}

class HomeListFailed extends HomeListState {}

class HomeListSuccess extends HomeListState {
  final List<MovieListModel> listMovie;
  HomeListSuccess(this.listMovie);

  @override
  // TODO: implement props
  List<Object> get props => [listMovie];
}
