            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_instance.g.dart';

abstract class ServiceInstance implements Built<ServiceInstance, ServiceInstanceBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'host')
    String get host;
    
        @nullable
    @BuiltValueField(wireName: r'instanceId')
    String get instanceId;
    
        @nullable
    @BuiltValueField(wireName: r'metadata')
    BuiltMap<String, String> get metadata;
    
        @nullable
    @BuiltValueField(wireName: r'port')
    int get port;
    
        @nullable
    @BuiltValueField(wireName: r'scheme')
    String get scheme;
    
        @nullable
    @BuiltValueField(wireName: r'secure')
    bool get secure;
    
        @nullable
    @BuiltValueField(wireName: r'serviceId')
    String get serviceId;
    
        @nullable
    @BuiltValueField(wireName: r'uri')
    String get uri;

    // Boilerplate code needed to wire-up generated code
    ServiceInstance._();

    factory ServiceInstance([updates(ServiceInstanceBuilder b)]) = _$ServiceInstance;
    static Serializer<ServiceInstance> get serializer => _$serviceInstanceSerializer;

}

