part of 'terms_bloc.dart';

abstract class TermsEvent extends Equatable {
  const TermsEvent();

  @override
  List<Object> get props => [];
}

class GetTermsdataEvent extends TermsEvent {}

class GetTermsByStatusEvent extends TermsEvent {
  final String status;
  GetTermsByStatusEvent({this.status});
}
