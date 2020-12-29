import 'dart:async';
import 'package:AdminApp/core/config/config.dart';
import 'package:openapi/model/store.dart';
import 'package:bloc/bloc.dart';
import 'package:openapi/api.dart';

part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc() : super(StoreInitial());
  // ignore: unused_field
  final Openapi _openapi = Openapi();
  List<Store> stores;
  @override
  Stream<StoreState> mapEventToState(
    StoreEvent event,
  ) async* {
    // ignore: unused_local_variable
    Map<String, String> token =
        Config.TOKEN != null ? Config.TOKEN : {'Authorization': null};
    if (event is GetStoreStatusEvent) {
      try {
        // await _openapi
        //     .getTicketResourceApi()
        //     .getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET(
        //         Config.SERVICEEXECUTIVE.id, event.status,
        //         headers: token)
        //     .then((value) => tickets = value.data);
        // print(tickets);
        yield StoresState(stores: stores);
      } on Exception catch (e) {
        print('getAllStoresUsingGET' + e.toString());
      }
    }
  }
}
