part of 'cancellation_bloc.dart';

abstract class CancellationInitEvent extends Equatable {
  const CancellationInitEvent();

  List<Object> get props => [];
}

class CancellationLoadingEvent extends CancellationInitEvent {}

class CancellationLoadedEvent extends CancellationInitEvent {}

// class GetCancellationByStatusEvent extends CancellationInitEvent {
//   final String status;
//   GetCancellationByStatusEvent({this.status});
// }

class CancellationErrorEvent extends CancellationInitEvent {}
