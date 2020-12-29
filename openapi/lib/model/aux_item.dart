            import 'package:openapi/model/order_line.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aux_item.g.dart';

abstract class AuxItem implements Built<AuxItem, AuxItemBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'auxItem')
    String get auxItem;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'orderLine')
    OrderLine get orderLine;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;
    
        @nullable
    @BuiltValueField(wireName: r'total')
    double get total;

    // Boilerplate code needed to wire-up generated code
    AuxItem._();

    factory AuxItem([updates(AuxItemBuilder b)]) = _$AuxItem;
    static Serializer<AuxItem> get serializer => _$auxItemSerializer;

}

