            import 'package:openapi/model/order_line.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auxilary_order_line.g.dart';

abstract class AuxilaryOrderLine implements Built<AuxilaryOrderLine, AuxilaryOrderLineBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'orderLine')
    OrderLine get orderLine;

    // Boilerplate code needed to wire-up generated code
    AuxilaryOrderLine._();

    factory AuxilaryOrderLine([updates(AuxilaryOrderLineBuilder b)]) = _$AuxilaryOrderLine;
    static Serializer<AuxilaryOrderLine> get serializer => _$auxilaryOrderLineSerializer;

}

