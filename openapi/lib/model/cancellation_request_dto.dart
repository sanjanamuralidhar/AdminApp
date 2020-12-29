        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancellation_request_dto.g.dart';

abstract class CancellationRequestDTO implements Built<CancellationRequestDTO, CancellationRequestDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amount')
    double get amount;
    
        @nullable
    @BuiltValueField(wireName: r'customerEmail')
    String get customerEmail;
    
        @nullable
    @BuiltValueField(wireName: r'customerPhone')
    int get customerPhone;
    
        @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'orderId')
    String get orderId;
    
        @nullable
    @BuiltValueField(wireName: r'paymentId')
    String get paymentId;
    
        @nullable
    @BuiltValueField(wireName: r'phoneCode')
    int get phoneCode;
    
        @nullable
    @BuiltValueField(wireName: r'reference')
    String get reference;
    
        @nullable
    @BuiltValueField(wireName: r'refundDetailsId')
    int get refundDetailsId;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    String get status;
    
        @nullable
    @BuiltValueField(wireName: r'storeEmail')
    String get storeEmail;
    
        @nullable
    @BuiltValueField(wireName: r'storePhone')
    int get storePhone;

    // Boilerplate code needed to wire-up generated code
    CancellationRequestDTO._();

    factory CancellationRequestDTO([updates(CancellationRequestDTOBuilder b)]) = _$CancellationRequestDTO;
    static Serializer<CancellationRequestDTO> get serializer => _$cancellationRequestDTOSerializer;

}

