            import 'package:openapi/model/store_address.dart';
            import 'package:openapi/model/delivery_info.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/store_type.dart';
            import 'package:openapi/model/pre_order_settings.dart';
            import 'package:openapi/model/user_rating_review.dart';
            import 'package:openapi/model/banner.dart';
            import 'package:openapi/model/store_settings.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store.g.dart';

abstract class Store implements Built<Store, StoreBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'banners')
    BuiltList<Banner> get banners;
    
        @nullable
    @BuiltValueField(wireName: r'closingTime')
    DateTime get closingTime;
    
        @nullable
    @BuiltValueField(wireName: r'contactNo')
    int get contactNo;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryInfos')
    BuiltList<DeliveryInfo> get deliveryInfos;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
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
    @BuiltValueField(wireName: r'preOrderSettings')
    PreOrderSettings get preOrderSettings;
    
        @nullable
    @BuiltValueField(wireName: r'regNo')
    String get regNo;
    
        @nullable
    @BuiltValueField(wireName: r'storeAddress')
    StoreAddress get storeAddress;
    
        @nullable
    @BuiltValueField(wireName: r'storeSettings')
    StoreSettings get storeSettings;
    
        @nullable
    @BuiltValueField(wireName: r'storeTypes')
    BuiltList<StoreType> get storeTypes;
    
        @nullable
    @BuiltValueField(wireName: r'storeUniqueId')
    String get storeUniqueId;
    
        @nullable
    @BuiltValueField(wireName: r'totalRating')
    double get totalRating;
    
        @nullable
    @BuiltValueField(wireName: r'userRatingReviews')
    BuiltList<UserRatingReview> get userRatingReviews;

    // Boilerplate code needed to wire-up generated code
    Store._();

    factory Store([updates(StoreBuilder b)]) = _$Store;
    static Serializer<Store> get serializer => _$storeSerializer;

}

