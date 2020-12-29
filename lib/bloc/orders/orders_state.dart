part of 'orders_bloc.dart';

@immutable
abstract class OrdersState extends Equatable {
  
  const OrdersState();

  @override
  List<Object> get props => [];
}

class OrdersLoadingState extends OrdersState{}

class OrdersLoadedState extends OrdersState{}

class OrdersErrorState extends OrdersState {}

class OrdersCancelledLoadedState extends OrdersState {
  final List<CancellationRequest> cancels;
  OrdersCancelledLoadedState({this.cancels});
}
class OrdersCompletedLoadedState extends OrdersState {
  final List<CancellationRequest> completed;
   OrdersCompletedLoadedState({this.completed});
}
// sanjana
class OrdersRefundCompletedState extends OrdersState {
  RefundDetailsDTO refund;
  OrdersRefundCompletedState({this.refund});
}
//Abhijith
class OrdersRequestCompletedState extends OrdersState {
  CancellationRequestDTO request;
  OrdersRequestCompletedState({this.request});
}
