        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'about_dto.g.dart';

abstract class AboutDTO implements Built<AboutDTO, AboutDTOBuilder> {

    
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
    AboutDTO._();

    factory AboutDTO([updates(AboutDTOBuilder b)]) = _$AboutDTO;
    static Serializer<AboutDTO> get serializer => _$aboutDTOSerializer;

}

