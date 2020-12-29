part of 'terms_bloc.dart';

abstract class TermsState extends Equatable {
  const TermsState();
  @override
  List<Object> get props => [];
}

class TermsInitLoadingState extends TermsState {}

class TermsInitLoadedState extends TermsState {}

class TermsLoadedState extends TermsState {
  final List<TermDTO> terms;
  TermsLoadedState({this.terms});
}
