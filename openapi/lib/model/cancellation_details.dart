            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/cancellation_request.dart';
            import 'package:openapi/model/cancelled_order_line.dart';
            import 'package:openapi/model/cancelled_auxilary_order_line.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancellation_details.g.dart';

abstract class CancellationDetails implements Built<CancellationDetails, CancellationDetailsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'cancellationRequest')
    CancellationRequest get cancellationRequest;
    
        @nullable
    @BuiltValueField(wireName: r'cancelledAuxilaryOrderLines')
    BuiltList<CancelledAuxilaryOrderLine> get cancelledAuxilaryOrderLines;
    
        @nullable
    @BuiltValueField(wireName: r'cancelledOrderLines')
    BuiltList<CancelledOrderLine> get cancelledOrderLines;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    CancellationDetails._();

    factory CancellationDetails([updates(CancellationDetailsBuilder b)]) = _$CancellationDetails;
    static Serializer<CancellationDetails> get serializer => _$cancellationDetailsSerializer;

}

