        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_model.g.dart';

abstract class OrderModel implements Built<OrderModel, OrderModelBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'claimedDate')
    DateTime get claimedDate;
    
        @nullable
    @BuiltValueField(wireName: r'orderDiscountAmount')
    double get orderDiscountAmount;
    
        @nullable
    @BuiltValueField(wireName: r'orderDiscountTotal')
    double get orderDiscountTotal;
    
        @nullable
    @BuiltValueField(wireName: r'orderNumber')
    int get orderNumber;
    
        @nullable
    @BuiltValueField(wireName: r'orderTotal')
    double get orderTotal;
    
        @nullable
    @BuiltValueField(wireName: r'promoCode')
    String get promoCode;

    // Boilerplate code needed to wire-up generated code
    OrderModel._();

    factory OrderModel([updates(OrderModelBuilder b)]) = _$OrderModel;
    static Serializer<OrderModel> get serializer => _$orderModelSerializer;

}

