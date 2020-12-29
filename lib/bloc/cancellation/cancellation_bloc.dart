import 'package:AdminApp/core/config/config.dart';
import 'package:openapi/api.dart';
import 'package:bloc/bloc.dart';
import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:openapi/model/cancellation_request_dto.dart';
part 'cancellation_event.dart';
part 'cancellation_state.dart';

class CancellationInitBloc
    extends Bloc<CancellationInitEvent, CancellationInitState> {
  Openapi openapi;
  CancellationInitBloc({this.openapi}) : super(CancellationLoadingState());

  CancellationInitState get initialState => CancellationLoadingState();

  final Openapi _openapi = Openapi();
  List<CancellationRequestDTO> cancelRqst;

  @override
  Stream<CancellationInitState> mapEventToState(
    CancellationInitEvent event,
  ) async* {
    if (event is CancellationLoadedEvent) {
      yield CancellationLoadingState();
      try {
        await _openapi
            .getQueryResourceApi()
            .findAllCancellationRequestsUsingGET(headers: Config.TOKEN, page: 0)
            .then((value) {
          this.cancelRqst = value.data;
          print('<<<<  cancellation  >>>>>');
          print(value.data.toString());
          print(value.statusCode);
        });
        print('cancelRequest Notification DONE');
        print(Config.TOKEN);

        //yield CancellationLoadedState();
      } on Exception catch (e) {
        print('error in CAncellation requests' + e.toString());
      }
    }
  }
}
