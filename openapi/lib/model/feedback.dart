        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback.g.dart';

abstract class Feedback implements Built<Feedback, FeedbackBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customerEmail')
    String get customerEmail;
    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'query')
    String get query;
    
        @nullable
    @BuiltValueField(wireName: r'subject')
    String get subject;
    
        @nullable
    @BuiltValueField(wireName: r'ticketId')
    String get ticketId;

    // Boilerplate code needed to wire-up generated code
    Feedback._();

    factory Feedback([updates(FeedbackBuilder b)]) = _$Feedback;
    static Serializer<Feedback> get serializer => _$feedbackSerializer;

}

