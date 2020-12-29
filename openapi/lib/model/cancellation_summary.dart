        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancellation_summary.g.dart';

abstract class CancellationSummary implements Built<CancellationSummary, CancellationSummaryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'allCardCount')
    int get allCardCount;
    
        @nullable
    @BuiltValueField(wireName: r'allCardTotal')
    double get allCardTotal;
    
        @nullable
    @BuiltValueField(wireName: r'allRefundAmount')
    double get allRefundAmount;
    
        @nullable
    @BuiltValueField(wireName: r'collectionCardCount')
    int get collectionCardCount;
    
        @nullable
    @BuiltValueField(wireName: r'collectionCardTotal')
    double get collectionCardTotal;
    
        @nullable
    @BuiltValueField(wireName: r'collectionRefundAmount')
    double get collectionRefundAmount;
    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryCardCount')
    int get deliveryCardCount;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryCardTotal')
    double get deliveryCardTotal;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryRefundAmount')
    double get deliveryRefundAmount;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    String get storeId;

    // Boilerplate code needed to wire-up generated code
    CancellationSummary._();

    factory CancellationSummary([updates(CancellationSummaryBuilder b)]) = _$CancellationSummary;
    static Serializer<CancellationSummary> get serializer => _$cancellationSummarySerializer;

}

