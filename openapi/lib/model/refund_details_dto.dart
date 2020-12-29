        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refund_details_dto.g.dart';

abstract class RefundDetailsDTO implements Built<RefundDetailsDTO, RefundDetailsDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'refundId')
    String get refundId;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    // Boilerplate code needed to wire-up generated code
    RefundDetailsDTO._();

    factory RefundDetailsDTO([updates(RefundDetailsDTOBuilder b)]) = _$RefundDetailsDTO;
    static Serializer<RefundDetailsDTO> get serializer => _$refundDetailsDTOSerializer;

}

