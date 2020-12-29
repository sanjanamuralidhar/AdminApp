        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refund_dto.g.dart';

abstract class RefundDTO implements Built<RefundDTO, RefundDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amount')
    double get amount;
    
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
    RefundDTO._();

    factory RefundDTO([updates(RefundDTOBuilder b)]) = _$RefundDTO;
    static Serializer<RefundDTO> get serializer => _$refundDTOSerializer;

}

