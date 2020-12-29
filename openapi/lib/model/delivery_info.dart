            import 'package:openapi/model/store.dart';
            import 'package:openapi/model/type.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_info.g.dart';

abstract class DeliveryInfo implements Built<DeliveryInfo, DeliveryInfoBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'endTime')
    DateTime get endTime;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'startingTime')
    DateTime get startingTime;
    
        @nullable
    @BuiltValueField(wireName: r'store')
    Store get store;
    
        @nullable
    @BuiltValueField(wireName: r'type')
    Type get type;

    // Boilerplate code needed to wire-up generated code
    DeliveryInfo._();

    factory DeliveryInfo([updates(DeliveryInfoBuilder b)]) = _$DeliveryInfo;
    static Serializer<DeliveryInfo> get serializer => _$deliveryInfoSerializer;

}

