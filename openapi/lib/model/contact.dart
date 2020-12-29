        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact.g.dart';

abstract class Contact implements Built<Contact, ContactBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'mobileNumber')
    int get mobileNumber;
    
        @nullable
    @BuiltValueField(wireName: r'phoneCode')
    int get phoneCode;
    
        @nullable
    @BuiltValueField(wireName: r'telephone')
    int get telephone;

    // Boilerplate code needed to wire-up generated code
    Contact._();

    factory Contact([updates(ContactBuilder b)]) = _$Contact;
    static Serializer<Contact> get serializer => _$contactSerializer;

}

