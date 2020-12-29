import 'dart:async';


// import 'package:AdminApp/core/config/config.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/store_address.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'intial_event.dart';
part 'intial_state.dart';

class IntialBloc extends Bloc<IntialEvent, IntialState> {
  IntialBloc() : super(IntialLoadingState());
  final Openapi openApi = Openapi();
  List<String> storeStatus;
  List<String> serviceTypes;
  @override
  Stream<IntialState> mapEventToState(
    IntialEvent event,
  ) async* {
    if (event is GetIntialdataEvent) {
      yield IntialLoadingState();
      try {
        // await openApi
            // .getTicketHistoryResourceApi()
            // .getStoreUsingGET(headers: Config.TOKEN, page: 0)
            // .getQueryResourceApi()
            // .getStoreUsingGET()
            // .then((value) => this.storeStatus = value.data);
        // await openApi
            // .getServedProductResourceApi()
            // .getAllEnumServiceTypesUsingGET(headers: Config.TOKEN)
            // .then((value) => serviceTypes = value.data);
        yield IntialLoadedState();
      } on Exception catch (e) {
        print('getAllEnumTicketStatusUsingGET' + e.toString());
      }
    }
  }
}
