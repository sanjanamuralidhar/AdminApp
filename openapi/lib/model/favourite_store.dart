            import 'package:openapi/model/customer.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favourite_store.g.dart';

abstract class FavouriteStore implements Built<FavouriteStore, FavouriteStoreBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    int get storeId;

    // Boilerplate code needed to wire-up generated code
    FavouriteStore._();

    factory FavouriteStore([updates(FavouriteStoreBuilder b)]) = _$FavouriteStore;
    static Serializer<FavouriteStore> get serializer => _$favouriteStoreSerializer;

}

