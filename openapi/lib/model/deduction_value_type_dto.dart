        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deduction_value_type_dto.g.dart';

abstract class DeductionValueTypeDTO implements Built<DeductionValueTypeDTO, DeductionValueTypeDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'deductionValueType')
    String get deductionValueType;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    DeductionValueTypeDTO._();

    factory DeductionValueTypeDTO([updates(DeductionValueTypeDTOBuilder b)]) = _$DeductionValueTypeDTO;
    static Serializer<DeductionValueTypeDTO> get serializer => _$deductionValueTypeDTOSerializer;

}

