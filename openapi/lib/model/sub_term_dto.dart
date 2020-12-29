        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sub_term_dto.g.dart';

abstract class SubTermDTO implements Built<SubTermDTO, SubTermDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'subTermId')
    int get subTermId;
    
        @nullable
    @BuiltValueField(wireName: r'termDescription')
    String get termDescription;
    
        @nullable
    @BuiltValueField(wireName: r'termId')
    int get termId;

    // Boilerplate code needed to wire-up generated code
    SubTermDTO._();

    factory SubTermDTO([updates(SubTermDTOBuilder b)]) = _$SubTermDTO;
    static Serializer<SubTermDTO> get serializer => _$subTermDTOSerializer;

}

