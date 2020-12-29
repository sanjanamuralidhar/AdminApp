            import 'package:openapi/model/order_line.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'combo_item.g.dart';

abstract class ComboItem implements Built<ComboItem, ComboItemBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'comboItem')
    String get comboItem;
    
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
    double get quantity;

    // Boilerplate code needed to wire-up generated code
    ComboItem._();

    factory ComboItem([updates(ComboItemBuilder b)]) = _$ComboItem;
    static Serializer<ComboItem> get serializer => _$comboItemSerializer;

}

