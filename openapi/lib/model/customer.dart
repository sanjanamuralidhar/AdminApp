            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/favourite_product.dart';
            import 'package:openapi/model/contact.dart';
            import 'package:openapi/model/favourite_store.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer.g.dart';

abstract class Customer implements Built<Customer, CustomerBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'contact')
    Contact get contact;
    
        @nullable
    @BuiltValueField(wireName: r'customerUniqueId')
    String get customerUniqueId;
    
        @nullable
    @BuiltValueField(wireName: r'favouriteproducts')
    BuiltList<FavouriteProduct> get favouriteproducts;
    
        @nullable
    @BuiltValueField(wireName: r'favouritestores')
    BuiltList<FavouriteStore> get favouritestores;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'idpCode')
    String get idpCode;
    
        @nullable
    @BuiltValueField(wireName: r'idpSub')
    String get idpSub;
    
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
    @BuiltValueField(wireName: r'loyaltyPoint')
    int get loyaltyPoint;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    Customer._();

    factory Customer([updates(CustomerBuilder b)]) = _$Customer;
    static Serializer<Customer> get serializer => _$customerSerializer;

}

