        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_address.g.dart';

abstract class StoreAddress implements Built<StoreAddress, StoreAddressBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addressType')
    String get addressType;
    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'houseNoOrBuildingName')
    String get houseNoOrBuildingName;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'landmark')
    String get landmark;
    
        @nullable
    @BuiltValueField(wireName: r'pincode')
    String get pincode;
    
        @nullable
    @BuiltValueField(wireName: r'roadNameAreaOrStreet')
    String get roadNameAreaOrStreet;
    
        @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    // Boilerplate code needed to wire-up generated code
    StoreAddress._();

    factory StoreAddress([updates(StoreAddressBuilder b)]) = _$StoreAddress;
    static Serializer<StoreAddress> get serializer => _$storeAddressSerializer;

}

