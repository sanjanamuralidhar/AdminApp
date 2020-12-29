part of 'offerinit_bloc.dart';

abstract class OfferInitState extends Equatable {
  const OfferInitState();

  List<Object> get props => [];
}

class OfferInitLoadingState extends OfferInitState {}

class OfferInitLoadedState extends OfferInitState {}

class OfferCrudErrorState extends OfferInitState {}

class OffersLoadedState extends OfferInitState {
  final List<OfferDTO> offers;
  OffersLoadedState({this.offers});
}

@immutable
// ignore: must_be_immutable
class OfferCrudCompletedState extends OfferInitState {
  OfferModel offer;
  OfferCrudCompletedState({this.offer});
}
