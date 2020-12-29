        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uri.g.dart';

abstract class URI implements Built<URI, URIBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'absolute')
    bool get absolute;
    
        @nullable
    @BuiltValueField(wireName: r'authority')
    String get authority;
    
        @nullable
    @BuiltValueField(wireName: r'fragment')
    String get fragment;
    
        @nullable
    @BuiltValueField(wireName: r'host')
    String get host;
    
        @nullable
    @BuiltValueField(wireName: r'opaque')
    bool get opaque;
    
        @nullable
    @BuiltValueField(wireName: r'path')
    String get path;
    
        @nullable
    @BuiltValueField(wireName: r'port')
    int get port;
    
        @nullable
    @BuiltValueField(wireName: r'query')
    String get query;
    
        @nullable
    @BuiltValueField(wireName: r'rawAuthority')
    String get rawAuthority;
    
        @nullable
    @BuiltValueField(wireName: r'rawFragment')
    String get rawFragment;
    
        @nullable
    @BuiltValueField(wireName: r'rawPath')
    String get rawPath;
    
        @nullable
    @BuiltValueField(wireName: r'rawQuery')
    String get rawQuery;
    
        @nullable
    @BuiltValueField(wireName: r'rawSchemeSpecificPart')
    String get rawSchemeSpecificPart;
    
        @nullable
    @BuiltValueField(wireName: r'rawUserInfo')
    String get rawUserInfo;
    
        @nullable
    @BuiltValueField(wireName: r'scheme')
    String get scheme;
    
        @nullable
    @BuiltValueField(wireName: r'schemeSpecificPart')
    String get schemeSpecificPart;
    
        @nullable
    @BuiltValueField(wireName: r'userInfo')
    String get userInfo;

    // Boilerplate code needed to wire-up generated code
    URI._();

    factory URI([updates(URIBuilder b)]) = _$URI;
    static Serializer<URI> get serializer => _$uRISerializer;

}

