            import 'package:openapi/model/store.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_type.g.dart';

abstract class StoreType implements Built<StoreType, StoreTypeBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'store')
    Store get store;

    // Boilerplate code needed to wire-up generated code
    StoreType._();

    factory StoreType([updates(StoreTypeBuilder b)]) = _$StoreType;
    static Serializer<StoreType> get serializer => _$storeTypeSerializer;

}

