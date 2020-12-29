        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_dto.g.dart';

abstract class NotificationDTO implements Built<NotificationDTO, NotificationDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'imageContentType')
    String get imageContentType;
    
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;
    
        @nullable
    @BuiltValueField(wireName: r'receiverId')
    String get receiverId;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    String get status;
    
        @nullable
    @BuiltValueField(wireName: r'targetId')
    String get targetId;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;
    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    NotificationDTO._();

    factory NotificationDTO([updates(NotificationDTOBuilder b)]) = _$NotificationDTO;
    static Serializer<NotificationDTO> get serializer => _$notificationDTOSerializer;

}

