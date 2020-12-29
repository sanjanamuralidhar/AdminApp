        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status.g.dart';

abstract class Status implements Built<Status, StatusBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    Status._();

    factory Status([updates(StatusBuilder b)]) = _$Status;
    static Serializer<Status> get serializer => _$statusSerializer;

}

