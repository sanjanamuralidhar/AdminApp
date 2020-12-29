        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'offer_dto.g.dart';

abstract class OfferDTO implements Built<OfferDTO, OfferDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'createdDate')
    DateTime get createdDate;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'orderRuleId')
    int get orderRuleId;
    
        @nullable
    @BuiltValueField(wireName: r'paymentRuleId')
    int get paymentRuleId;
    
        @nullable
    @BuiltValueField(wireName: r'priceRuleId')
    int get priceRuleId;
    
        @nullable
    @BuiltValueField(wireName: r'promoCode')
    String get promoCode;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;
    
        @nullable
    @BuiltValueField(wireName: r'updatedDate')
    DateTime get updatedDate;
    
        @nullable
    @BuiltValueField(wireName: r'usageCount')
    int get usageCount;

    // Boilerplate code needed to wire-up generated code
    OfferDTO._();

    factory OfferDTO([updates(OfferDTOBuilder b)]) = _$OfferDTO;
    static Serializer<OfferDTO> get serializer => _$offerDTOSerializer;

}

