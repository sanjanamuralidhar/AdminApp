            import 'package:openapi/model/store.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'banner.g.dart';

abstract class Banner implements Built<Banner, BannerBuilder> {

    
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
    @BuiltValueField(wireName: r'imageLink')
    String get imageLink;
    
        @nullable
    @BuiltValueField(wireName: r'startDate')
    DateTime get startDate;
    
        @nullable
    @BuiltValueField(wireName: r'store')
    Store get store;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    String get storeId;

    // Boilerplate code needed to wire-up generated code
    Banner._();

    factory Banner([updates(BannerBuilder b)]) = _$Banner;
    static Serializer<Banner> get serializer => _$bannerSerializer;

}

