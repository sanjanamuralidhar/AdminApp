        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'term_dto.g.dart';

abstract class TermDTO implements Built<TermDTO, TermDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'termId')
    int get termId;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    // Boilerplate code needed to wire-up generated code
    TermDTO._();

    factory TermDTO([updates(TermDTOBuilder b)]) = _$TermDTO;
    static Serializer<TermDTO> get serializer => _$termDTOSerializer;

}

