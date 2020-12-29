        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'type.g.dart';

abstract class Type implements Built<Type, TypeBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    Type._();

    factory Type([updates(TypeBuilder b)]) = _$Type;
    static Serializer<Type> get serializer => _$typeSerializer;

}

