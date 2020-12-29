        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_info_vm.g.dart';

abstract class AuthInfoVM implements Built<AuthInfoVM, AuthInfoVMBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'clientId')
    String get clientId;
    
        @nullable
    @BuiltValueField(wireName: r'issuer')
    String get issuer;

    // Boilerplate code needed to wire-up generated code
    AuthInfoVM._();

    factory AuthInfoVM([updates(AuthInfoVMBuilder b)]) = _$AuthInfoVM;
    static Serializer<AuthInfoVM> get serializer => _$authInfoVMSerializer;

}

