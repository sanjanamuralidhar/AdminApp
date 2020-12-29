        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_dto.g.dart';

abstract class StoreDTO implements Built<StoreDTO, StoreDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'closingTime')
    DateTime get closingTime;
    
        @nullable
    @BuiltValueField(wireName: r'contactNo')
    int get contactNo;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'imageContentType')
    String get imageContentType;
    
        @nullable
    @BuiltValueField(wireName: r'imageLink')
    String get imageLink;
    
        @nullable
    @BuiltValueField(wireName: r'info')
    String get info;
    
        @nullable
    @BuiltValueField(wireName: r'location')
    String get location;
    
        @nullable
    @BuiltValueField(wireName: r'locationName')
    String get locationName;
    
        @nullable
    @BuiltValueField(wireName: r'maxDeliveryTime')
    DateTime get maxDeliveryTime;
    
        @nullable
    @BuiltValueField(wireName: r'minAmount')
    double get minAmount;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'openingTime')
    DateTime get openingTime;
    
        @nullable
    @BuiltValueField(wireName: r'preOrderSettingsId')
    int get preOrderSettingsId;
    
        @nullable
    @BuiltValueField(wireName: r'propreitorId')
    int get propreitorId;
    
        @nullable
    @BuiltValueField(wireName: r'regNo')
    String get regNo;
    
        @nullable
    @BuiltValueField(wireName: r'storeAddressId')
    int get storeAddressId;
    
        @nullable
    @BuiltValueField(wireName: r'storeSettingsId')
    int get storeSettingsId;
    
        @nullable
    @BuiltValueField(wireName: r'storeUniqueId')
    String get storeUniqueId;
    
        @nullable
    @BuiltValueField(wireName: r'totalRating')
    double get totalRating;

    // Boilerplate code needed to wire-up generated code
    StoreDTO._();

    factory StoreDTO([updates(StoreDTOBuilder b)]) = _$StoreDTO;
    static Serializer<StoreDTO> get serializer => _$storeDTOSerializer;

}

