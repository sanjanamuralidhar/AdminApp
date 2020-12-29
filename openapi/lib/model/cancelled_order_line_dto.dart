        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancelled_order_line_dto.g.dart';

abstract class CancelledOrderLineDTO implements Built<CancelledOrderLineDTO, CancelledOrderLineDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'ammount')
    double get ammount;
    
        @nullable
    @BuiltValueField(wireName: r'cancellationRequestId')
    int get cancellationRequestId;
    
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
    CancelledOrderLineDTO._();

    factory CancelledOrderLineDTO([updates(CancelledOrderLineDTOBuilder b)]) = _$CancelledOrderLineDTO;
    static Serializer<CancelledOrderLineDTO> get serializer => _$cancelledOrderLineDTOSerializer;

}

