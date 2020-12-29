// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }
    if (object.deliveryInfo != null) {
      result
        ..add('deliveryInfo')
        ..add(serializers.serialize(object.deliveryInfo,
            specifiedType: const FullType(DeliveryInfo)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.grandTotal != null) {
      result
        ..add('grandTotal')
        ..add(serializers.serialize(object.grandTotal,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes,
            specifiedType: const FullType(String)));
    }
    if (object.orderId != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(String)));
    }
    if (object.orderLines != null) {
      result
        ..add('orderLines')
        ..add(serializers.serialize(object.orderLines,
            specifiedType:
                const FullType(BuiltList, const [const FullType(OrderLine)])));
    }
    if (object.paymentMode != null) {
      result
        ..add('paymentMode')
        ..add(serializers.serialize(object.paymentMode,
            specifiedType: const FullType(String)));
    }
    if (object.paymentRef != null) {
      result
        ..add('paymentRef')
        ..add(serializers.serialize(object.paymentRef,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(Status)));
    }
    if (object.storeId != null) {
      result
        ..add('storeId')
        ..add(serializers.serialize(object.storeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'deliveryInfo':
          result.deliveryInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(DeliveryInfo)) as DeliveryInfo);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grandTotal':
          result.grandTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderLines':
          result.orderLines.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderLine)]))
              as BuiltList<Object>);
          break;
        case 'paymentMode':
          result.paymentMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentRef':
          result.paymentRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status.replace(serializers.deserialize(value,
              specifiedType: const FullType(Status)) as Status);
          break;
        case 'storeId':
          result.storeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final String customerId;
  @override
  final DateTime date;
  @override
  final DeliveryInfo deliveryInfo;
  @override
  final String email;
  @override
  final double grandTotal;
  @override
  final int id;
  @override
  final String notes;
  @override
  final String orderId;
  @override
  final BuiltList<OrderLine> orderLines;
  @override
  final String paymentMode;
  @override
  final String paymentRef;
  @override
  final Status status;
  @override
  final String storeId;

  factory _$Order([void Function(OrderBuilder) updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.customerId,
      this.date,
      this.deliveryInfo,
      this.email,
      this.grandTotal,
      this.id,
      this.notes,
      this.orderId,
      this.orderLines,
      this.paymentMode,
      this.paymentRef,
      this.status,
      this.storeId})
      : super._();

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        customerId == other.customerId &&
        date == other.date &&
        deliveryInfo == other.deliveryInfo &&
        email == other.email &&
        grandTotal == other.grandTotal &&
        id == other.id &&
        notes == other.notes &&
        orderId == other.orderId &&
        orderLines == other.orderLines &&
        paymentMode == other.paymentMode &&
        paymentRef == other.paymentRef &&
        status == other.status &&
        storeId == other.storeId;
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
                                                $jc($jc(0, customerId.hashCode),
                                                    date.hashCode),
                                                deliveryInfo.hashCode),
                                            email.hashCode),
                                        grandTotal.hashCode),
                                    id.hashCode),
                                notes.hashCode),
                            orderId.hashCode),
                        orderLines.hashCode),
                    paymentMode.hashCode),
                paymentRef.hashCode),
            status.hashCode),
        storeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('customerId', customerId)
          ..add('date', date)
          ..add('deliveryInfo', deliveryInfo)
          ..add('email', email)
          ..add('grandTotal', grandTotal)
          ..add('id', id)
          ..add('notes', notes)
          ..add('orderId', orderId)
          ..add('orderLines', orderLines)
          ..add('paymentMode', paymentMode)
          ..add('paymentRef', paymentRef)
          ..add('status', status)
          ..add('storeId', storeId))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  String _customerId;
  String get customerId => _$this._customerId;
  set customerId(String customerId) => _$this._customerId = customerId;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DeliveryInfoBuilder _deliveryInfo;
  DeliveryInfoBuilder get deliveryInfo =>
      _$this._deliveryInfo ??= new DeliveryInfoBuilder();
  set deliveryInfo(DeliveryInfoBuilder deliveryInfo) =>
      _$this._deliveryInfo = deliveryInfo;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  double _grandTotal;
  double get grandTotal => _$this._grandTotal;
  set grandTotal(double grandTotal) => _$this._grandTotal = grandTotal;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  ListBuilder<OrderLine> _orderLines;
  ListBuilder<OrderLine> get orderLines =>
      _$this._orderLines ??= new ListBuilder<OrderLine>();
  set orderLines(ListBuilder<OrderLine> orderLines) =>
      _$this._orderLines = orderLines;

  String _paymentMode;
  String get paymentMode => _$this._paymentMode;
  set paymentMode(String paymentMode) => _$this._paymentMode = paymentMode;

  String _paymentRef;
  String get paymentRef => _$this._paymentRef;
  set paymentRef(String paymentRef) => _$this._paymentRef = paymentRef;

  StatusBuilder _status;
  StatusBuilder get status => _$this._status ??= new StatusBuilder();
  set status(StatusBuilder status) => _$this._status = status;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _customerId = _$v.customerId;
      _date = _$v.date;
      _deliveryInfo = _$v.deliveryInfo?.toBuilder();
      _email = _$v.email;
      _grandTotal = _$v.grandTotal;
      _id = _$v.id;
      _notes = _$v.notes;
      _orderId = _$v.orderId;
      _orderLines = _$v.orderLines?.toBuilder();
      _paymentMode = _$v.paymentMode;
      _paymentRef = _$v.paymentRef;
      _status = _$v.status?.toBuilder();
      _storeId = _$v.storeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              customerId: customerId,
              date: date,
              deliveryInfo: _deliveryInfo?.build(),
              email: email,
              grandTotal: grandTotal,
              id: id,
              notes: notes,
              orderId: orderId,
              orderLines: _orderLines?.build(),
              paymentMode: paymentMode,
              paymentRef: paymentRef,
              status: _status?.build(),
              storeId: storeId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'deliveryInfo';
        _deliveryInfo?.build();

        _$failedField = 'orderLines';
        _orderLines?.build();

        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
