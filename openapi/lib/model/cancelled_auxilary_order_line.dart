            import 'package:openapi/model/cancellation_request.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancelled_auxilary_order_line.g.dart';

abstract class CancelledAuxilaryOrderLine implements Built<CancelledAuxilaryOrderLine, CancelledAuxilaryOrderLineBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'ammount')
    double get ammount;
    
        @nullable
    @BuiltValueField(wireName: r'cancellationRequest')
    CancellationRequest get cancellationRequest;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'itemName')
    String get itemName;
    
        @nullable
    @BuiltValueField(wireName: r'orderLineId')
    int get orderLineId;
    
        @nullable
    @BuiltValueField(wireName: r'pricePerUnit')
    double get pricePerUnit;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;

    // Boilerplate code needed to wire-up generated code
    CancelledAuxilaryOrderLine._();

    factory CancelledAuxilaryOrderLine([updates(CancelledAuxilaryOrderLineBuilder b)]) = _$CancelledAuxilaryOrderLine;
    static Serializer<CancelledAuxilaryOrderLine> get serializer => _$cancelledAuxilaryOrderLineSerializer;

}

