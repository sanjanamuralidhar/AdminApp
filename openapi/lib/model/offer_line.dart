            import 'package:openapi/model/order_master.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'offer_line.g.dart';

abstract class OfferLine implements Built<OfferLine, OfferLineBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'discountAmount')
    double get discountAmount;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'offerRef')
    String get offerRef;
    
        @nullable
    @BuiltValueField(wireName: r'orderMaster')
    OrderMaster get orderMaster;

    // Boilerplate code needed to wire-up generated code
    OfferLine._();

    factory OfferLine([updates(OfferLineBuilder b)]) = _$OfferLine;
    static Serializer<OfferLine> get serializer => _$offerLineSerializer;

}

