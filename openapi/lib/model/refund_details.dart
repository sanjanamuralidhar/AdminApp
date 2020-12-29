        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refund_details.g.dart';

abstract class RefundDetails implements Built<RefundDetails, RefundDetailsBuilder> {

    
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
    RefundDetails._();

    factory RefundDetails([updates(RefundDetailsBuilder b)]) = _$RefundDetails;
    static Serializer<RefundDetails> get serializer => _$refundDetailsSerializer;

}

