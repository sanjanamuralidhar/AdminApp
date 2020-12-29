        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_master_dto.g.dart';

abstract class OrderMasterDTO implements Built<OrderMasterDTO, OrderMasterDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addressType')
    String get addressType;
    
        @nullable
    @BuiltValueField(wireName: r'allergyNote')
    String get allergyNote;
    
        @nullable
    @BuiltValueField(wireName: r'alternatePhone')
    int get alternatePhone;
    
        @nullable
    @BuiltValueField(wireName: r'cancellationRef')
    int get cancellationRef;
    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    String get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'customerName')
    String get customerName;
    
        @nullable
    @BuiltValueField(wireName: r'customerOrder')
    int get customerOrder;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryCharge')
    double get deliveryCharge;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'expectedDelivery')
    DateTime get expectedDelivery;
    
        @nullable
    @BuiltValueField(wireName: r'houseNoOrBuildingName')
    String get houseNoOrBuildingName;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'landmark')
    String get landmark;
    
        @nullable
    @BuiltValueField(wireName: r'loyaltyPoint')
    int get loyaltyPoint;
    
        @nullable
    @BuiltValueField(wireName: r'methodOfOrder')
    String get methodOfOrder;
    
        @nullable
    @BuiltValueField(wireName: r'nextTaskId')
    String get nextTaskId;
    
        @nullable
    @BuiltValueField(wireName: r'notes')
    String get notes;
    
        @nullable
    @BuiltValueField(wireName: r'orderAcceptedAt')
    DateTime get orderAcceptedAt;
    
        @nullable
    @BuiltValueField(wireName: r'orderDiscountAmount')
    double get orderDiscountAmount;
    
        @nullable
    @BuiltValueField(wireName: r'orderFromCustomer')
    int get orderFromCustomer;
    
        @nullable
    @BuiltValueField(wireName: r'orderNumber')
    String get orderNumber;
    
        @nullable
    @BuiltValueField(wireName: r'orderPlaceAt')
    DateTime get orderPlaceAt;
    
        @nullable
    @BuiltValueField(wireName: r'orderStatus')
    String get orderStatus;
    
        @nullable
    @BuiltValueField(wireName: r'paymentRef')
    String get paymentRef;
    
        @nullable
    @BuiltValueField(wireName: r'paymentStatus')
    String get paymentStatus;
    
        @nullable
    @BuiltValueField(wireName: r'phone')
    int get phone;
    
        @nullable
    @BuiltValueField(wireName: r'pincode')
    String get pincode;
    
        @nullable
    @BuiltValueField(wireName: r'preOrderDate')
    DateTime get preOrderDate;
    
        @nullable
    @BuiltValueField(wireName: r'refundedAmount')
    double get refundedAmount;
    
        @nullable
    @BuiltValueField(wireName: r'roadNameAreaOrStreet')
    String get roadNameAreaOrStreet;
    
        @nullable
    @BuiltValueField(wireName: r'serviceCharge')
    double get serviceCharge;
    
        @nullable
    @BuiltValueField(wireName: r'state')
    String get state;
    
        @nullable
    @BuiltValueField(wireName: r'storeIdpcode')
    String get storeIdpcode;
    
        @nullable
    @BuiltValueField(wireName: r'storeName')
    String get storeName;
    
        @nullable
    @BuiltValueField(wireName: r'storePhone')
    int get storePhone;
    
        @nullable
    @BuiltValueField(wireName: r'storelocationName')
    String get storelocationName;
    
        @nullable
    @BuiltValueField(wireName: r'subTotal')
    double get subTotal;
    
        @nullable
    @BuiltValueField(wireName: r'totalDue')
    double get totalDue;
    
        @nullable
    @BuiltValueField(wireName: r'zoneId')
    String get zoneId;

    // Boilerplate code needed to wire-up generated code
    OrderMasterDTO._();

    factory OrderMasterDTO([updates(OrderMasterDTOBuilder b)]) = _$OrderMasterDTO;
    static Serializer<OrderMasterDTO> get serializer => _$orderMasterDTOSerializer;

}

