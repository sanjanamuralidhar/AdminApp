        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_rating_review.g.dart';

abstract class UserRatingReview implements Built<UserRatingReview, UserRatingReviewBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'rating')
    double get rating;
    
        @nullable
    @BuiltValueField(wireName: r'review')
    String get review;
    
        @nullable
    @BuiltValueField(wireName: r'userName')
    String get userName;

    // Boilerplate code needed to wire-up generated code
    UserRatingReview._();

    factory UserRatingReview([updates(UserRatingReviewBuilder b)]) = _$UserRatingReview;
    static Serializer<UserRatingReview> get serializer => _$userRatingReviewSerializer;

}

