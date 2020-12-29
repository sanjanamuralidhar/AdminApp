            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/sub_term.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'term.g.dart';

abstract class Term implements Built<Term, TermBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'subTerms')
    BuiltList<SubTerm> get subTerms;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    // Boilerplate code needed to wire-up generated code
    Term._();

    factory Term([updates(TermBuilder b)]) = _$Term;
    static Serializer<Term> get serializer => _$termSerializer;

}

