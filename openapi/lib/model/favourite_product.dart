            import 'package:openapi/model/customer.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favourite_product.g.dart';

abstract class FavouriteProduct implements Built<FavouriteProduct, FavouriteProductBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;

    // Boilerplate code needed to wire-up generated code
    FavouriteProduct._();

    factory FavouriteProduct([updates(FavouriteProductBuilder b)]) = _$FavouriteProduct;
    static Serializer<FavouriteProduct> get serializer => _$favouriteProductSerializer;

}

