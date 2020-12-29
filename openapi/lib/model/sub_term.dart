            import 'package:openapi/model/term.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sub_term.g.dart';

abstract class SubTerm implements Built<SubTerm, SubTermBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'term')
    Term get term;
    
        @nullable
    @BuiltValueField(wireName: r'termDescription')
    String get termDescription;

    // Boilerplate code needed to wire-up generated code
    SubTerm._();

    factory SubTerm([updates(SubTermBuilder b)]) = _$SubTerm;
    static Serializer<SubTerm> get serializer => _$subTermSerializer;

}

