// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_master_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderMasterDTO> _$orderMasterDTOSerializer =
    new _$OrderMasterDTOSerializer();

class _$OrderMasterDTOSerializer
    implements StructuredSerializer<OrderMasterDTO> {
  @override
  final Iterable<Type> types = const [OrderMasterDTO, _$OrderMasterDTO];
  @override
  final String wireName = 'OrderMasterDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderMasterDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressType != null) {
      result
        ..add('addressType')
        ..add(serializers.serialize(object.addressType,
            specifiedType: const FullType(String)));
    }
    if (object.allergyNote != null) {
      result
        ..add('allergyNote')
        ..add(serializers.serialize(object.allergyNote,
            specifiedType: const FullType(String)));
    }
    if (object.alternatePhone != null) {
      result
        ..add('alternatePhone')
        ..add(serializers.serialize(object.alternatePhone,
            specifiedType: const FullType(int)));
    }
    if (object.cancellationRef != null) {
      result
        ..add('cancellationRef')
        ..add(serializers.serialize(object.cancellationRef,
            specifiedType: const FullType(int)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(String)));
    }
    if (object.customerName != null) {
      result
        ..add('customerName')
        ..add(serializers.serialize(object.customerName,
            specifiedType: const FullType(String)));
    }
    if (object.customerOrder != null) {
      result
        ..add('customerOrder')
        ..add(serializers.serialize(object.customerOrder,
            specifiedType: const FullType(int)));
    }
    if (object.deliveryCharge != null) {
      result
        ..add('deliveryCharge')
        ..add(serializers.serialize(object.deliveryCharge,
            specifiedType: const FullType(double)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.expectedDelivery != null) {
      result
        ..add('expectedDelivery')
        ..add(serializers.serialize(object.expectedDelivery,
            specifiedType: const FullType(DateTime)));
    }
    if (object.houseNoOrBuildingName != null) {
      result
        ..add('houseNoOrBuildingName')
        ..add(serializers.serialize(object.houseNoOrBuildingName,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.landmark != null) {
      result
        ..add('landmark')
        ..add(serializers.serialize(object.landmark,
            specifiedType: const FullType(String)));
    }
    if (object.loyaltyPoint != null) {
      result
        ..add('loyaltyPoint')
        ..add(serializers.serialize(object.loyaltyPoint,
            specifiedType: const FullType(int)));
    }
    if (object.methodOfOrder != null) {
      result
        ..add('methodOfOrder')
        ..add(serializers.serialize(object.methodOfOrder,
            specifiedType: const FullType(String)));
    }
    if (object.nextTaskId != null) {
      result
        ..add('nextTaskId')
        ..add(serializers.serialize(object.nextTaskId,
            specifiedType: const FullType(String)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes,
            specifiedType: const FullType(String)));
    }
    if (object.orderAcceptedAt != null) {
      result
        ..add('orderAcceptedAt')
        ..add(serializers.serialize(object.orderAcceptedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.orderDiscountAmount != null) {
      result
        ..add('orderDiscountAmount')
        ..add(serializers.serialize(object.orderDiscountAmount,
            specifiedType: const FullType(double)));
    }
    if (object.orderFromCustomer != null) {
      result
        ..add('orderFromCustomer')
        ..add(serializers.serialize(object.orderFromCustomer,
            specifiedType: const FullType(int)));
    }
    if (object.orderNumber != null) {
      result
        ..add('orderNumber')
        ..add(serializers.serialize(object.orderNumber,
            specifiedType: const FullType(String)));
    }
    if (object.orderPlaceAt != null) {
      result
        ..add('orderPlaceAt')
        ..add(serializers.serialize(object.orderPlaceAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.orderStatus != null) {
      result
        ..add('orderStatus')
        ..add(serializers.serialize(object.orderStatus,
            specifiedType: const FullType(String)));
    }
    if (object.paymentRef != null) {
      result
        ..add('paymentRef')
        ..add(serializers.serialize(object.paymentRef,
            specifiedType: const FullType(String)));
    }
    if (object.paymentStatus != null) {
      result
        ..add('paymentStatus')
        ..add(serializers.serialize(object.paymentStatus,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(int)));
    }
    if (object.pincode != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(object.pincode,
            specifiedType: const FullType(String)));
    }
    if (object.preOrderDate != null) {
      result
        ..add('preOrderDate')
        ..add(serializers.serialize(object.preOrderDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.refundedAmount != null) {
      result
        ..add('refundedAmount')
        ..add(serializers.serialize(object.refundedAmount,
            specifiedType: const FullType(double)));
    }
    if (object.roadNameAreaOrStreet != null) {
      result
        ..add('roadNameAreaOrStreet')
        ..add(serializers.serialize(object.roadNameAreaOrStreet,
            specifiedType: const FullType(String)));
    }
    if (object.serviceCharge != null) {
      result
        ..add('serviceCharge')
        ..add(serializers.serialize(object.serviceCharge,
            specifiedType: const FullType(double)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.storeIdpcode != null) {
      result
        ..add('storeIdpcode')
        ..add(serializers.serialize(object.storeIdpcode,
            specifiedType: const FullType(String)));
    }
    if (object.storeName != null) {
      result
        ..add('storeName')
        ..add(serializers.serialize(object.storeName,
            specifiedType: const FullType(String)));
    }
    if (object.storePhone != null) {
      result
        ..add('storePhone')
        ..add(serializers.serialize(object.storePhone,
            specifiedType: const FullType(int)));
    }
    if (object.storelocationName != null) {
      result
        ..add('storelocationName')
        ..add(serializers.serialize(object.storelocationName,
            specifiedType: const FullType(String)));
    }
    if (object.subTotal != null) {
      result
        ..add('subTotal')
        ..add(serializers.serialize(object.subTotal,
            specifiedType: const FullType(double)));
    }
    if (object.totalDue != null) {
      result
        ..add('totalDue')
        ..add(serializers.serialize(object.totalDue,
            specifiedType: const FullType(double)));
    }
    if (object.zoneId != null) {
      result
        ..add('zoneId')
        ..add(serializers.serialize(object.zoneId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrderMasterDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderMasterDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressType':
          result.addressType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allergyNote':
          result.allergyNote = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alternatePhone':
          result.alternatePhone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cancellationRef':
          result.cancellationRef = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerName':
          result.customerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerOrder':
          result.customerOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deliveryCharge':
          result.deliveryCharge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expectedDelivery':
          result.expectedDelivery = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'houseNoOrBuildingName':
          result.houseNoOrBuildingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'landmark':
          result.landmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loyaltyPoint':
          result.loyaltyPoint = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'methodOfOrder':
          result.methodOfOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nextTaskId':
          result.nextTaskId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderAcceptedAt':
          result.orderAcceptedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'orderDiscountAmount':
          result.orderDiscountAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'orderFromCustomer':
          result.orderFromCustomer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderNumber':
          result.orderNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderPlaceAt':
          result.orderPlaceAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'orderStatus':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentRef':
          result.paymentRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentStatus':
          result.paymentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preOrderDate':
          result.preOrderDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'refundedAmount':
          result.refundedAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'roadNameAreaOrStreet':
          result.roadNameAreaOrStreet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceCharge':
          result.serviceCharge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storeIdpcode':
          result.storeIdpcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storeName':
          result.storeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storePhone':
          result.storePhone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'storelocationName':
          result.storelocationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subTotal':
          result.subTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalDue':
          result.totalDue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'zoneId':
          result.zoneId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderMasterDTO extends OrderMasterDTO {
  @override
  final String addressType;
  @override
  final String allergyNote;
  @override
  final int alternatePhone;
  @override
  final int cancellationRef;
  @override
  final String city;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final int customerOrder;
  @override
  final double deliveryCharge;
  @override
  final String email;
  @override
  final DateTime expectedDelivery;
  @override
  final String houseNoOrBuildingName;
  @override
  final int id;
  @override
  final String landmark;
  @override
  final int loyaltyPoint;
  @override
  final String methodOfOrder;
  @override
  final String nextTaskId;
  @override
  final String notes;
  @override
  final DateTime orderAcceptedAt;
  @override
  final double orderDiscountAmount;
  @override
  final int orderFromCustomer;
  @override
  final String orderNumber;
  @override
  final DateTime orderPlaceAt;
  @override
  final String orderStatus;
  @override
  final String paymentRef;
  @override
  final String paymentStatus;
  @override
  final int phone;
  @override
  final String pincode;
  @override
  final DateTime preOrderDate;
  @override
  final double refundedAmount;
  @override
  final String roadNameAreaOrStreet;
  @override
  final double serviceCharge;
  @override
  final String state;
  @override
  final String storeIdpcode;
  @override
  final String storeName;
  @override
  final int storePhone;
  @override
  final String storelocationName;
  @override
  final double subTotal;
  @override
  final double totalDue;
  @override
  final String zoneId;

  factory _$OrderMasterDTO([void Function(OrderMasterDTOBuilder) updates]) =>
      (new OrderMasterDTOBuilder()..update(updates)).build();

  _$OrderMasterDTO._(
      {this.addressType,
      this.allergyNote,
      this.alternatePhone,
      this.cancellationRef,
      this.city,
      this.customerId,
      this.customerName,
      this.customerOrder,
      this.deliveryCharge,
      this.email,
      this.expectedDelivery,
      this.houseNoOrBuildingName,
      this.id,
      this.landmark,
      this.loyaltyPoint,
      this.methodOfOrder,
      this.nextTaskId,
      this.notes,
      this.orderAcceptedAt,
      this.orderDiscountAmount,
      this.orderFromCustomer,
      this.orderNumber,
      this.orderPlaceAt,
      this.orderStatus,
      this.paymentRef,
      this.paymentStatus,
      this.phone,
      this.pincode,
      this.preOrderDate,
      this.refundedAmount,
      this.roadNameAreaOrStreet,
      this.serviceCharge,
      this.state,
      this.storeIdpcode,
      this.storeName,
      this.storePhone,
      this.storelocationName,
      this.subTotal,
      this.totalDue,
      this.zoneId})
      : super._();

  @override
  OrderMasterDTO rebuild(void Function(OrderMasterDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderMasterDTOBuilder toBuilder() =>
      new OrderMasterDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderMasterDTO &&
        addressType == other.addressType &&
        allergyNote == other.allergyNote &&
        alternatePhone == other.alternatePhone &&
        cancellationRef == other.cancellationRef &&
        city == other.city &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        customerOrder == other.customerOrder &&
        deliveryCharge == other.deliveryCharge &&
        email == other.email &&
        expectedDelivery == other.expectedDelivery &&
        houseNoOrBuildingName == other.houseNoOrBuildingName &&
        id == other.id &&
        landmark == other.landmark &&
        loyaltyPoint == other.loyaltyPoint &&
        methodOfOrder == other.methodOfOrder &&
        nextTaskId == other.nextTaskId &&
        notes == other.notes &&
        orderAcceptedAt == other.orderAcceptedAt &&
        orderDiscountAmount == other.orderDiscountAmount &&
        orderFromCustomer == other.orderFromCustomer &&
        orderNumber == other.orderNumber &&
        orderPlaceAt == other.orderPlaceAt &&
        orderStatus == other.orderStatus &&
        paymentRef == other.paymentRef &&
        paymentStatus == other.paymentStatus &&
        phone == other.phone &&
        pincode == other.pincode &&
        preOrderDate == other.preOrderDate &&
        refundedAmount == other.refundedAmount &&
        roadNameAreaOrStreet == other.roadNameAreaOrStreet &&
        serviceCharge == other.serviceCharge &&
        state == other.state &&
        storeIdpcode == other.storeIdpcode &&
        storeName == other.storeName &&
        storePhone == other.storePhone &&
        storelocationName == other.storelocationName &&
        subTotal == other.subTotal &&
        totalDue == other.totalDue &&
        zoneId == other.zoneId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, addressType.hashCode), allergyNote.hashCode), alternatePhone.hashCode), cancellationRef.hashCode), city.hashCode), customerId.hashCode), customerName.hashCode), customerOrder.hashCode), deliveryCharge.hashCode), email.hashCode), expectedDelivery.hashCode), houseNoOrBuildingName.hashCode), id.hashCode), landmark.hashCode), loyaltyPoint.hashCode), methodOfOrder.hashCode), nextTaskId.hashCode), notes.hashCode), orderAcceptedAt.hashCode), orderDiscountAmount.hashCode), orderFromCustomer.hashCode),
                                                                                orderNumber.hashCode),
                                                                            orderPlaceAt.hashCode),
                                                                        orderStatus.hashCode),
                                                                    paymentRef.hashCode),
                                                                paymentStatus.hashCode),
                                                            phone.hashCode),
                                                        pincode.hashCode),
                                                    preOrderDate.hashCode),
                                                refundedAmount.hashCode),
                                            roadNameAreaOrStreet.hashCode),
                                        serviceCharge.hashCode),
                                    state.hashCode),
                                storeIdpcode.hashCode),
                            storeName.hashCode),
                        storePhone.hashCode),
                    storelocationName.hashCode),
                subTotal.hashCode),
            totalDue.hashCode),
        zoneId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderMasterDTO')
          ..add('addressType', addressType)
          ..add('allergyNote', allergyNote)
          ..add('alternatePhone', alternatePhone)
          ..add('cancellationRef', cancellationRef)
          ..add('city', city)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('customerOrder', customerOrder)
          ..add('deliveryCharge', deliveryCharge)
          ..add('email', email)
          ..add('expectedDelivery', expectedDelivery)
          ..add('houseNoOrBuildingName', houseNoOrBuildingName)
          ..add('id', id)
          ..add('landmark', landmark)
          ..add('loyaltyPoint', loyaltyPoint)
          ..add('methodOfOrder', methodOfOrder)
          ..add('nextTaskId', nextTaskId)
          ..add('notes', notes)
          ..add('orderAcceptedAt', orderAcceptedAt)
          ..add('orderDiscountAmount', orderDiscountAmount)
          ..add('orderFromCustomer', orderFromCustomer)
          ..add('orderNumber', orderNumber)
          ..add('orderPlaceAt', orderPlaceAt)
          ..add('orderStatus', orderStatus)
          ..add('paymentRef', paymentRef)
          ..add('paymentStatus', paymentStatus)
          ..add('phone', phone)
          ..add('pincode', pincode)
          ..add('preOrderDate', preOrderDate)
          ..add('refundedAmount', refundedAmount)
          ..add('roadNameAreaOrStreet', roadNameAreaOrStreet)
          ..add('serviceCharge', serviceCharge)
          ..add('state', state)
          ..add('storeIdpcode', storeIdpcode)
          ..add('storeName', storeName)
          ..add('storePhone', storePhone)
          ..add('storelocationName', storelocationName)
          ..add('subTotal', subTotal)
          ..add('totalDue', totalDue)
          ..add('zoneId', zoneId))
        .toString();
  }
}

class OrderMasterDTOBuilder
    implements Builder<OrderMasterDTO, OrderMasterDTOBuilder> {
  _$OrderMasterDTO _$v;

  String _addressType;
  String get addressType => _$this._addressType;
  set addressType(String addressType) => _$this._addressType = addressType;

  String _allergyNote;
  String get allergyNote => _$this._allergyNote;
  set allergyNote(String allergyNote) => _$this._allergyNote = allergyNote;

  int _alternatePhone;
  int get alternatePhone => _$this._alternatePhone;
  set alternatePhone(int alternatePhone) =>
      _$this._alternatePhone = alternatePhone;

  int _cancellationRef;
  int get cancellationRef => _$this._cancellationRef;
  set cancellationRef(int cancellationRef) =>
      _$this._cancellationRef = cancellationRef;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _customerId;
  String get customerId => _$this._customerId;
  set customerId(String customerId) => _$this._customerId = customerId;

  String _customerName;
  String get customerName => _$this._customerName;
  set customerName(String customerName) => _$this._customerName = customerName;

  int _customerOrder;
  int get customerOrder => _$this._customerOrder;
  set customerOrder(int customerOrder) => _$this._customerOrder = customerOrder;

  double _deliveryCharge;
  double get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(double deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DateTime _expectedDelivery;
  DateTime get expectedDelivery => _$this._expectedDelivery;
  set expectedDelivery(DateTime expectedDelivery) =>
      _$this._expectedDelivery = expectedDelivery;

  String _houseNoOrBuildingName;
  String get houseNoOrBuildingName => _$this._houseNoOrBuildingName;
  set houseNoOrBuildingName(String houseNoOrBuildingName) =>
      _$this._houseNoOrBuildingName = houseNoOrBuildingName;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _landmark;
  String get landmark => _$this._landmark;
  set landmark(String landmark) => _$this._landmark = landmark;

  int _loyaltyPoint;
  int get loyaltyPoint => _$this._loyaltyPoint;
  set loyaltyPoint(int loyaltyPoint) => _$this._loyaltyPoint = loyaltyPoint;

  String _methodOfOrder;
  String get methodOfOrder => _$this._methodOfOrder;
  set methodOfOrder(String methodOfOrder) =>
      _$this._methodOfOrder = methodOfOrder;

  String _nextTaskId;
  String get nextTaskId => _$this._nextTaskId;
  set nextTaskId(String nextTaskId) => _$this._nextTaskId = nextTaskId;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  DateTime _orderAcceptedAt;
  DateTime get orderAcceptedAt => _$this._orderAcceptedAt;
  set orderAcceptedAt(DateTime orderAcceptedAt) =>
      _$this._orderAcceptedAt = orderAcceptedAt;

  double _orderDiscountAmount;
  double get orderDiscountAmount => _$this._orderDiscountAmount;
  set orderDiscountAmount(double orderDiscountAmount) =>
      _$this._orderDiscountAmount = orderDiscountAmount;

  int _orderFromCustomer;
  int get orderFromCustomer => _$this._orderFromCustomer;
  set orderFromCustomer(int orderFromCustomer) =>
      _$this._orderFromCustomer = orderFromCustomer;

  String _orderNumber;
  String get orderNumber => _$this._orderNumber;
  set orderNumber(String orderNumber) => _$this._orderNumber = orderNumber;

  DateTime _orderPlaceAt;
  DateTime get orderPlaceAt => _$this._orderPlaceAt;
  set orderPlaceAt(DateTime orderPlaceAt) =>
      _$this._orderPlaceAt = orderPlaceAt;

  String _orderStatus;
  String get orderStatus => _$this._orderStatus;
  set orderStatus(String orderStatus) => _$this._orderStatus = orderStatus;

  String _paymentRef;
  String get paymentRef => _$this._paymentRef;
  set paymentRef(String paymentRef) => _$this._paymentRef = paymentRef;

  String _paymentStatus;
  String get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  int _phone;
  int get phone => _$this._phone;
  set phone(int phone) => _$this._phone = phone;

  String _pincode;
  String get pincode => _$this._pincode;
  set pincode(String pincode) => _$this._pincode = pincode;

  DateTime _preOrderDate;
  DateTime get preOrderDate => _$this._preOrderDate;
  set preOrderDate(DateTime preOrderDate) =>
      _$this._preOrderDate = preOrderDate;

  double _refundedAmount;
  double get refundedAmount => _$this._refundedAmount;
  set refundedAmount(double refundedAmount) =>
      _$this._refundedAmount = refundedAmount;

  String _roadNameAreaOrStreet;
  String get roadNameAreaOrStreet => _$this._roadNameAreaOrStreet;
  set roadNameAreaOrStreet(String roadNameAreaOrStreet) =>
      _$this._roadNameAreaOrStreet = roadNameAreaOrStreet;

  double _serviceCharge;
  double get serviceCharge => _$this._serviceCharge;
  set serviceCharge(double serviceCharge) =>
      _$this._serviceCharge = serviceCharge;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _storeIdpcode;
  String get storeIdpcode => _$this._storeIdpcode;
  set storeIdpcode(String storeIdpcode) => _$this._storeIdpcode = storeIdpcode;

  String _storeName;
  String get storeName => _$this._storeName;
  set storeName(String storeName) => _$this._storeName = storeName;

  int _storePhone;
  int get storePhone => _$this._storePhone;
  set storePhone(int storePhone) => _$this._storePhone = storePhone;

  String _storelocationName;
  String get storelocationName => _$this._storelocationName;
  set storelocationName(String storelocationName) =>
      _$this._storelocationName = storelocationName;

  double _subTotal;
  double get subTotal => _$this._subTotal;
  set subTotal(double subTotal) => _$this._subTotal = subTotal;

  double _totalDue;
  double get totalDue => _$this._totalDue;
  set totalDue(double totalDue) => _$this._totalDue = totalDue;

  String _zoneId;
  String get zoneId => _$this._zoneId;
  set zoneId(String zoneId) => _$this._zoneId = zoneId;

  OrderMasterDTOBuilder();

  OrderMasterDTOBuilder get _$this {
    if (_$v != null) {
      _addressType = _$v.addressType;
      _allergyNote = _$v.allergyNote;
      _alternatePhone = _$v.alternatePhone;
      _cancellationRef = _$v.cancellationRef;
      _city = _$v.city;
      _customerId = _$v.customerId;
      _customerName = _$v.customerName;
      _customerOrder = _$v.customerOrder;
      _deliveryCharge = _$v.deliveryCharge;
      _email = _$v.email;
      _expectedDelivery = _$v.expectedDelivery;
      _houseNoOrBuildingName = _$v.houseNoOrBuildingName;
      _id = _$v.id;
      _landmark = _$v.landmark;
      _loyaltyPoint = _$v.loyaltyPoint;
      _methodOfOrder = _$v.methodOfOrder;
      _nextTaskId = _$v.nextTaskId;
      _notes = _$v.notes;
      _orderAcceptedAt = _$v.orderAcceptedAt;
      _orderDiscountAmount = _$v.orderDiscountAmount;
      _orderFromCustomer = _$v.orderFromCustomer;
      _orderNumber = _$v.orderNumber;
      _orderPlaceAt = _$v.orderPlaceAt;
      _orderStatus = _$v.orderStatus;
      _paymentRef = _$v.paymentRef;
      _paymentStatus = _$v.paymentStatus;
      _phone = _$v.phone;
      _pincode = _$v.pincode;
      _preOrderDate = _$v.preOrderDate;
      _refundedAmount = _$v.refundedAmount;
      _roadNameAreaOrStreet = _$v.roadNameAreaOrStreet;
      _serviceCharge = _$v.serviceCharge;
      _state = _$v.state;
      _storeIdpcode = _$v.storeIdpcode;
      _storeName = _$v.storeName;
      _storePhone = _$v.storePhone;
      _storelocationName = _$v.storelocationName;
      _subTotal = _$v.subTotal;
      _totalDue = _$v.totalDue;
      _zoneId = _$v.zoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderMasterDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderMasterDTO;
  }

  @override
  void update(void Function(OrderMasterDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderMasterDTO build() {
    final _$result = _$v ??
        new _$OrderMasterDTO._(
            addressType: addressType,
            allergyNote: allergyNote,
            alternatePhone: alternatePhone,
            cancellationRef: cancellationRef,
            city: city,
            customerId: customerId,
            customerName: customerName,
            customerOrder: customerOrder,
            deliveryCharge: deliveryCharge,
            email: email,
            expectedDelivery: expectedDelivery,
            houseNoOrBuildingName: houseNoOrBuildingName,
            id: id,
            landmark: landmark,
            loyaltyPoint: loyaltyPoint,
            methodOfOrder: methodOfOrder,
            nextTaskId: nextTaskId,
            notes: notes,
            orderAcceptedAt: orderAcceptedAt,
            orderDiscountAmount: orderDiscountAmount,
            orderFromCustomer: orderFromCustomer,
            orderNumber: orderNumber,
            orderPlaceAt: orderPlaceAt,
            orderStatus: orderStatus,
            paymentRef: paymentRef,
            paymentStatus: paymentStatus,
            phone: phone,
            pincode: pincode,
            preOrderDate: preOrderDate,
            refundedAmount: refundedAmount,
            roadNameAreaOrStreet: roadNameAreaOrStreet,
            serviceCharge: serviceCharge,
            state: state,
            storeIdpcode: storeIdpcode,
            storeName: storeName,
            storePhone: storePhone,
            storelocationName: storelocationName,
            subTotal: subTotal,
            totalDue: totalDue,
            zoneId: zoneId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
