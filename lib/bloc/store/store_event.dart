part of 'store_bloc.dart';

abstract class StoreEvent {
  const StoreEvent();
}

class GetStoreStatusEvent extends StoreEvent {
  final String status;
  GetStoreStatusEvent({this.status});
}