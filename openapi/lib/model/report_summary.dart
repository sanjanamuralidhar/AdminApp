            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/order_master.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_summary.g.dart';

abstract class ReportSummary implements Built<ReportSummary, ReportSummaryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'collectionCard')
    BuiltList<OrderMaster> get collectionCard;
    
        @nullable
    @BuiltValueField(wireName: r'collectionCash')
    BuiltList<OrderMaster> get collectionCash;
    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryCard')
    BuiltList<OrderMaster> get deliveryCard;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryCash')
    BuiltList<OrderMaster> get deliveryCash;
    
        @nullable
    @BuiltValueField(wireName: r'storeId')
    String get storeId;
    
        @nullable
    @BuiltValueField(wireName: r'typeAllCount')
    int get typeAllCount;
    
        @nullable
    @BuiltValueField(wireName: r'typeAllTotal')
    double get typeAllTotal;
    
        @nullable
    @BuiltValueField(wireName: r'typeCardCount')
    int get typeCardCount;
    
        @nullable
    @BuiltValueField(wireName: r'typeCardTotal')
    double get typeCardTotal;
    
        @nullable
    @BuiltValueField(wireName: r'typeCashCount')
    int get typeCashCount;
    
        @nullable
    @BuiltValueField(wireName: r'typeCashTotal')
    double get typeCashTotal;
    
        @nullable
    @BuiltValueField(wireName: r'typeCollectionCount')
    int get typeCollectionCount;
    
        @nullable
    @BuiltValueField(wireName: r'typeCollectionTotal')
    double get typeCollectionTotal;
    
        @nullable
    @BuiltValueField(wireName: r'typeDeliveryCount')
    int get typeDeliveryCount;
    
        @nullable
    @BuiltValueField(wireName: r'typeDeliveryTotal')
    double get typeDeliveryTotal;

    // Boilerplate code needed to wire-up generated code
    ReportSummary._();

    factory ReportSummary([updates(ReportSummaryBuilder b)]) = _$ReportSummary;
    static Serializer<ReportSummary> get serializer => _$reportSummarySerializer;

}

