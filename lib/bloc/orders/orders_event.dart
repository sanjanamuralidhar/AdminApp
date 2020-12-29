part of "orders_bloc.dart";

@immutable
abstract class OrdersEvent extends Equatable {
  const OrdersEvent();

  @override
  List<Object> get props => [];
}
//sanjana
class GetOrdersCompletedEvent extends OrdersEvent{}

class GetOrdersCancelledEvent extends OrdersEvent{}

class CreateOrdersEvent extends OrdersEvent {
  final RefundDTO refundDTO;
  final CancellationRequestDTO cancellationRequestDTO;
  CreateOrdersEvent(this.refundDTO, {this.cancellationRequestDTO});
}
//Abhijith
class CreateOrdersCancellationEvent extends OrdersEvent {
  final CancellationRequestDTO cancellationRequestDTO;
  CreateOrdersCancellationEvent({this.cancellationRequestDTO});
}