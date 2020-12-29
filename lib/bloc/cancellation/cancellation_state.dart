part of 'cancellation_bloc.dart';

abstract class CancellationInitState extends Equatable {
  const CancellationInitState();
  List<Object> get props => [];
}

class CancellationLoadingState extends CancellationInitState {}

class CancellationErrorState extends CancellationInitState {}

class CancellationLoadedState extends CancellationInitState {
  final List<CancellationRequestDTO> cancel;
  CancellationLoadedState({this.cancel});
}
