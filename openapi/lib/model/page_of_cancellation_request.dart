            import 'package:openapi/model/sort.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/cancellation_request.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_of_cancellation_request.g.dart';

abstract class PageOfCancellationRequest implements Built<PageOfCancellationRequest, PageOfCancellationRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'content')
    BuiltList<CancellationRequest> get content;
    
        @nullable
    @BuiltValueField(wireName: r'empty')
    bool get empty;
    
        @nullable
    @BuiltValueField(wireName: r'first')
    bool get first;
    
        @nullable
    @BuiltValueField(wireName: r'last')
    bool get last;
    
        @nullable
    @BuiltValueField(wireName: r'number')
    int get number;
    
        @nullable
    @BuiltValueField(wireName: r'numberOfElements')
    int get numberOfElements;
    
        @nullable
    @BuiltValueField(wireName: r'size')
    int get size;
    
        @nullable
    @BuiltValueField(wireName: r'sort')
    Sort get sort;
    
        @nullable
    @BuiltValueField(wireName: r'totalElements')
    int get totalElements;
    
        @nullable
    @BuiltValueField(wireName: r'totalPages')
    int get totalPages;

    // Boilerplate code needed to wire-up generated code
    PageOfCancellationRequest._();

    factory PageOfCancellationRequest([updates(PageOfCancellationRequestBuilder b)]) = _$PageOfCancellationRequest;
    static Serializer<PageOfCancellationRequest> get serializer => _$pageOfCancellationRequestSerializer;

}

