part of 'intial_bloc.dart';

abstract class IntialState extends Equatable {
  const IntialState();

  @override
  List<Object> get props => [];
}

class IntialLoadingState extends IntialState {}

class IntialLoadedState extends IntialState {}

class StoresLoadedState extends IntialState {
  final List<StoreAddress> stores;
  StoresLoadedState({this.stores});
}
