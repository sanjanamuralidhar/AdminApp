            import 'package:openapi/model/delivery_info.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/order_line.dart';
            import 'package:openapi/model/status.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    String get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryInfo')
    DeliveryInfo get deliveryInfo;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'grandTotal')
    double get grandTotal;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'notes')
    String get notes;
    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'orderLines')
    BuiltList<OrderLine> get orderLines;
    
        @nullable
    @BuiltValueField(wireName: r'paymentMode')
    String get paymentMode;
    
        @nullable
    @BuiltValueField(wireName: r'paymentRef')
    String get paymentRef;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    Status get status;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    String get storeId;

    // Boilerplate code needed to wire-up generated code
    Order._();

    factory Order([updates(OrderBuilder b)]) = _$Order;
    static Serializer<Order> get serializer => _$orderSerializer;

}

