            import 'package:openapi/model/service_instance.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'route_vm.g.dart';

abstract class RouteVM implements Built<RouteVM, RouteVMBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'path')
    String get path;
    
        @nullable
    @BuiltValueField(wireName: r'serviceId')
    String get serviceId;
    
        @nullable
    @BuiltValueField(wireName: r'serviceInstances')
    BuiltList<ServiceInstance> get serviceInstances;

    // Boilerplate code needed to wire-up generated code
    RouteVM._();

    factory RouteVM([updates(RouteVMBuilder b)]) = _$RouteVM;
    static Serializer<RouteVM> get serializer => _$routeVMSerializer;

}

