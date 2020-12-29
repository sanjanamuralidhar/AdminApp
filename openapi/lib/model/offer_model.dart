        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'offer_model.g.dart';

abstract class OfferModel implements Built<OfferModel, OfferModelBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'deductionValue')
    int get deductionValue;
    
        @nullable
    @BuiltValueField(wireName: r'deduction_value_type_id')
    int get deductionValueTypeId;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'endDate')
    DateTime get endDate;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'prerequisiteOrderNumber')
    int get prerequisiteOrderNumber;
    
        @nullable
    @BuiltValueField(wireName: r'promoCode')
    String get promoCode;
    
        @nullable
    @BuiltValueField(wireName: r'startDate')
    DateTime get startDate;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    int get storeId;

    // Boilerplate code needed to wire-up generated code
    OfferModel._();

    factory OfferModel([updates(OfferModelBuilder b)]) = _$OfferModel;
    static Serializer<OfferModel> get serializer => _$offerModelSerializer;

}

