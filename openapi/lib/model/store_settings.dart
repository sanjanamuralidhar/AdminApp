        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_settings.g.dart';

abstract class StoreSettings implements Built<StoreSettings, StoreSettingsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'deliveryCharge')
    double get deliveryCharge;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'isActive')
    bool get isActive;
    
        @nullable
    @BuiltValueField(wireName: r'isInventoryRequired')
    bool get isInventoryRequired;
    
        @nullable
    @BuiltValueField(wireName: r'orderAcceptType')
    String get orderAcceptType;
    
        @nullable
    @BuiltValueField(wireName: r'serviceCharge')
    double get serviceCharge;

    // Boilerplate code needed to wire-up generated code
    StoreSettings._();

    factory StoreSettings([updates(StoreSettingsBuilder b)]) = _$StoreSettings;
    static Serializer<StoreSettings> get serializer => _$storeSettingsSerializer;

}

