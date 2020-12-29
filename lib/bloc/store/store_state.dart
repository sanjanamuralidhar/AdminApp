part of 'store_bloc.dart';

abstract class StoreState {
  const StoreState();

  @override
  // ignore: override_on_non_overriding_member
  List<Object> get props => [];
}

class StoreInitial extends StoreState {}

class StoresState extends StoreState {
  final List<Store> stores;
  StoresState({this.stores});
}
