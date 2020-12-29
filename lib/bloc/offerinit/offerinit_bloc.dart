import 'dart:async';


import 'package:AdminApp/core/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/offer_dto.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/model/offer_model.dart';
part 'offerinit_event.dart';
part 'offerinit_state.dart';

class OfferInitBloc extends Bloc<OfferInitEvent, OfferInitState> {
  OfferInitBloc() : super(OfferInitLoadingState());
  final Openapi openApi = Openapi();
  List<String> offerStatus;
  List<String> serviceTypes;
  OfferModel createdOffer;

  @override
  Stream<OfferInitState> mapEventToState(
    OfferInitEvent event,
  ) async* {
    print(Config.TOKEN);
    if (event is GetOfferInitdataEvent) {
      yield OfferInitLoadingState();
      try {
        await openApi
            .getQueryResourceApi()
            .getAllOffersUsingGET(headers: Config.TOKEN, page: 0)
            .then((value) => this.offerStatus = value.data.cast<String>());
        print('getAllOffersUsingGET');
        yield OfferInitLoadedState();
      } on Exception catch (e) {
        print('getAllOffersUsingGET' + e.toString());
      }
    }
    if (event is CreateOfferEvent) {
      try {
        // print('TICKET  ' + event.ticket.customer.toString());
        var offerData = await openApi
            .getCommandResourceApi()
            .createOfferUsingPOST(event.offer1, headers: Config.TOKEN);
        createdOffer = offerData.data;
        print('CreateOfferEvent');
        yield OfferCrudCompletedState(offer: offerData.data);
      } on Exception catch (e) {
        yield OfferCrudErrorState();
        print(e.toString());
      }
    }
    //update
    //delete
  }
}
