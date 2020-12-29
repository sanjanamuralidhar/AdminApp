            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/cancelled_order_line.dart';
            import 'package:openapi/model/refund_details.dart';
            import 'package:openapi/model/cancelled_auxilary_order_line.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancellation_request.g.dart';

abstract class CancellationRequest implements Built<CancellationRequest, CancellationRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amount')
    double get amount;
    
        @nullable
    @BuiltValueField(wireName: r'cancelledAuxilaryOrderLines')
    BuiltList<CancelledAuxilaryOrderLine> get cancelledAuxilaryOrderLines;
    
        @nullable
    @BuiltValueField(wireName: r'cancelledOrderLines')
    BuiltList<CancelledOrderLine> get cancelledOrderLines;
    
        @nullable
    @BuiltValueField(wireName: r'customerEmail')
    String get customerEmail;
    
        @nullable
    @BuiltValueField(wireName: r'customerPhone')
    int get customerPhone;
    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'paymentId')
    String get paymentId;
    
        @nullable
    @BuiltValueField(wireName: r'phoneCode')
    int get phoneCode;
    
        @nullable
    @BuiltValueField(wireName: r'reference')
    String get reference;
    
        @nullable
    @BuiltValueField(wireName: r'refundDetails')
    RefundDetails get refundDetails;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    String get status;
    
        @nullable
    @BuiltValueField(wireName: r'storeEmail')
    String get storeEmail;
    
        @nullable
    @BuiltValueField(wireName: r'storePhone')
    int get storePhone;

    // Boilerplate code needed to wire-up generated code
    CancellationRequest._();

    factory CancellationRequest([updates(CancellationRequestBuilder b)]) = _$CancellationRequest;
    static Serializer<CancellationRequest> get serializer => _$cancellationRequestSerializer;

}

