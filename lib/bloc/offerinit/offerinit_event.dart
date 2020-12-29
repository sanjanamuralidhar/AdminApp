part of 'offerinit_bloc.dart';

abstract class OfferInitEvent extends Equatable {
  const OfferInitEvent();

  @override
  List<Object> get props => [];
}

class GetOfferInitdataEvent extends OfferInitEvent {}

class BackEvent extends OfferInitEvent {}


class GetOffersByStatusEvent extends OfferInitEvent {
  final String status;
  GetOffersByStatusEvent({this.status});
}

class CreateOfferEvent extends OfferInitEvent {
  final OfferModel offer1;

  CreateOfferEvent({this.offer1});
   OfferModel get product => null;
   @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'CreateOfferEvent{offer: $offer1}';

 
  }
}
class UpdateOfferEvent extends OfferInitEvent {
  final OfferDTO offer2;

  UpdateOfferEvent({this.offer2});
}
class DeleteOfferEvent extends OfferInitEvent {
  final OfferDTO offer3;

  DeleteOfferEvent({this.offer3});
}