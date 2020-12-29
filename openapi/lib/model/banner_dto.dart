        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'banner_dto.g.dart';

abstract class BannerDTO implements Built<BannerDTO, BannerDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'cost')
    double get cost;
    
        @nullable
    @BuiltValueField(wireName: r'expiryDate')
    DateTime get expiryDate;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'imageLink')
    String get imageLink;
    
        @nullable
    @BuiltValueField(wireName: r'startDate')
    DateTime get startDate;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    String get storeId;

    // Boilerplate code needed to wire-up generated code
    BannerDTO._();

    factory BannerDTO([updates(BannerDTOBuilder b)]) = _$BannerDTO;
    static Serializer<BannerDTO> get serializer => _$bannerDTOSerializer;

}

