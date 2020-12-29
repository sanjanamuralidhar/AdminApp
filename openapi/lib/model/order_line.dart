            import 'package:openapi/model/aux_item.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/combo_item.dart';
            import 'package:openapi/model/order_master.dart';
            import 'package:openapi/model/auxilary_order_line.dart';
            import 'package:openapi/model/order.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_line.g.dart';

abstract class OrderLine implements Built<OrderLine, OrderLineBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'auxItems')
    BuiltList<AuxItem> get auxItems;
    
        @nullable
    @BuiltValueField(wireName: r'comboItems')
    BuiltList<ComboItem> get comboItems;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'item')
    String get item;
    
        @nullable
    @BuiltValueField(wireName: r'order')
    Order get order;
    
        @nullable
    @BuiltValueField(wireName: r'orderMaster')
    OrderMaster get orderMaster;
    
        @nullable
    @BuiltValueField(wireName: r'pricePerUnit')
    double get pricePerUnit;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'quantity')
    int get quantity;
    
        @nullable
    @BuiltValueField(wireName: r'requiedAuxilaries')
    BuiltList<AuxilaryOrderLine> get requiedAuxilaries;
    
        @nullable
    @BuiltValueField(wireName: r'total')
    double get total;

    // Boilerplate code needed to wire-up generated code
    OrderLine._();

    factory OrderLine([updates(OrderLineBuilder b)]) = _$OrderLine;
    static Serializer<OrderLine> get serializer => _$orderLineSerializer;

}

