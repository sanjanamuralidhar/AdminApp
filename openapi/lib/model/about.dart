        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'about.g.dart';

abstract class About implements Built<About, AboutBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addOn1')
    String get addOn1;
    
        @nullable
    @BuiltValueField(wireName: r'addOn2')
    String get addOn2;
    
        @nullable
    @BuiltValueField(wireName: r'addOn3')
    String get addOn3;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'supportMail')
    String get supportMail;
    
        @nullable
    @BuiltValueField(wireName: r'supportPhone')
    int get supportPhone;

    // Boilerplate code needed to wire-up generated code
    About._();

    factory About([updates(AboutBuilder b)]) = _$About;
    static Serializer<About> get serializer => _$aboutSerializer;

}

