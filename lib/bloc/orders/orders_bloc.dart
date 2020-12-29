import 'package:AdminApp/core/config/config.dart';
import 'package:AdminApp/pages/cancelledorder/cancellation_Route.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/cancellation_request.dart';
import 'package:openapi/model/cancellation_request_dto.dart';
import 'package:openapi/model/refund_details_dto.dart';
import 'package:openapi/model/refund_dto.dart';
part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(OrdersLoadingState());

  final Openapi openApi = Openapi();
RefundDTO createdRefund;
CancellationRequest cancellation; 
List<CancellationRequest> orderStatus;
  @override
  Stream<OrdersState> mapEventToState(OrdersEvent event,) 
  async* {
    //***Sanjana**
    DateTime dateTime = DateTime.now();
    String dateLocal = DateFormat('yyyy-MM-dd').format(dateTime);
    print(dateLocal);

     if (event is GetOrdersCompletedEvent){
       yield OrdersLoadingState();
        try {
          print(Config.TOKEN);
        await openApi
            .getQueryResourceApi()
            .findCancellationRequestByStatusUsingGET(dateLocal,'Completed',headers: Config.TOKEN,page:0)
            .then((value) { this.orderStatus = value.data.content.toList();
            print(value.data);
            });
        print('completedsucessfindCancellationRequestByStatusUsingGET');
        yield OrdersLoadedState();
      } on Exception catch (e) {
        print('completedfailedfindCancellationRequestByStatusUsingGET' + e.toString());
      }
     }
     if (event is GetOrdersCancelledEvent){
        yield OrdersLoadingState();
        try {
          print(Config.TOKEN);
        await openApi
            .getQueryResourceApi()
            .findCancellationRequestByStatusUsingGET(dateLocal,'Requested',headers: Config.TOKEN,page:0)
            .then((value) => this.orderStatus = value.data.content.toList());
        print('cancellsucessfindCancellationRequestByStatusUsingGET');
        yield OrdersLoadedState();
      } on Exception catch (e) {
        print('cancelfailedfindCancellationRequestByStatusUsingGET' + e.toString());
      }
    }
    if (event is CreateOrdersEvent) {
      try {
        // print('TICKET  ' + event.ticket.customer.toString());
        var refundData = await openApi
            .getCommandResourceApi()
            .createRefundUsingPOST(event.cancellationRequestDTO.orderId,
                event.cancellationRequestDTO.paymentId, event.refundDTO);
        createdRefund = refundData.data as RefundDTO;

        yield OrdersRefundCompletedState(refund: refundData.data);
      } on Exception catch (e) {
        yield OrdersErrorState();
        print(e.toString());
      }
    }
    //***Abhijit**
    if (event is CreateOrdersCancellationEvent) {
      try {
        // print('TICKET  ' + event.ticket.customer.toString());
        var requestData = await openApi
            .getCommandResourceApi()
            .createCancellationRequestUsingPOST(event.cancellationRequestDTO,
                headers: Config.TOKEN);
        createdRefund = requestData.data as RefundDTO;

        yield OrdersRequestCompletedState(request: requestData.data);
      } on Exception catch (e) {
        yield OrdersErrorState();
        print(e.toString());
      }
    }
  }
 
}
