        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_order_settings.g.dart';

abstract class PreOrderSettings implements Built<PreOrderSettings, PreOrderSettingsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'fromTime')
    DateTime get fromTime;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'isPreOrderAvailable')
    bool get isPreOrderAvailable;
    
        @nullable
    @BuiltValueField(wireName: r'toTime')
    DateTime get toTime;

    // Boilerplate code needed to wire-up generated code
    PreOrderSettings._();

    factory PreOrderSettings([updates(PreOrderSettingsBuilder b)]) = _$PreOrderSettings;
    static Serializer<PreOrderSettings> get serializer => _$preOrderSettingsSerializer;

}

