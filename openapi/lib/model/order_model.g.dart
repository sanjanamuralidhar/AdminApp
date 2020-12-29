// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderModel> _$orderModelSerializer = new _$OrderModelSerializer();

class _$OrderModelSerializer implements StructuredSerializer<OrderModel> {
  @override
  final Iterable<Type> types = const [OrderModel, _$OrderModel];
  @override
  final String wireName = 'OrderModel';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.claimedDate != null) {
      result
        ..add('claimedDate')
        ..add(serializers.serialize(object.claimedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.orderDiscountAmount != null) {
      result
        ..add('orderDiscountAmount')
        ..add(serializers.serialize(object.orderDiscountAmount,
            specifiedType: const FullType(double)));
    }
    if (object.orderDiscountTotal != null) {
      result
        ..add('orderDiscountTotal')
        ..add(serializers.serialize(object.orderDiscountTotal,
            specifiedType: const FullType(double)));
    }
    if (object.orderNumber != null) {
      result
        ..add('orderNumber')
        ..add(serializers.serialize(object.orderNumber,
            specifiedType: const FullType(int)));
    }
    if (object.orderTotal != null) {
      result
        ..add('orderTotal')
        ..add(serializers.serialize(object.orderTotal,
            specifiedType: const FullType(double)));
    }
    if (object.promoCode != null) {
      result
        ..add('promoCode')
        ..add(serializers.serialize(object.promoCode,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrderModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'claimedDate':
          result.claimedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'orderDiscountAmount':
          result.orderDiscountAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'orderDiscountTotal':
          result.orderDiscountTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'orderNumber':
          result.orderNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderTotal':
          result.orderTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'promoCode':
          result.promoCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderModel extends OrderModel {
  @override
  final DateTime claimedDate;
  @override
  final double orderDiscountAmount;
  @override
  final double orderDiscountTotal;
  @override
  final int orderNumber;
  @override
  final double orderTotal;
  @override
  final String promoCode;

  factory _$OrderModel([void Function(OrderModelBuilder) updates]) =>
      (new OrderModelBuilder()..update(updates)).build();

  _$OrderModel._(
      {this.claimedDate,
      this.orderDiscountAmount,
      this.orderDiscountTotal,
      this.orderNumber,
      this.orderTotal,
      this.promoCode})
      : super._();

  @override
  OrderModel rebuild(void Function(OrderModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderModelBuilder toBuilder() => new OrderModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderModel &&
        claimedDate == other.claimedDate &&
        orderDiscountAmount == other.orderDiscountAmount &&
        orderDiscountTotal == other.orderDiscountTotal &&
        orderNumber == other.orderNumber &&
        orderTotal == other.orderTotal &&
        promoCode == other.promoCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, claimedDate.hashCode),
                        orderDiscountAmount.hashCode),
                    orderDiscountTotal.hashCode),
                orderNumber.hashCode),
            orderTotal.hashCode),
        promoCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderModel')
          ..add('claimedDate', claimedDate)
          ..add('orderDiscountAmount', orderDiscountAmount)
          ..add('orderDiscountTotal', orderDiscountTotal)
          ..add('orderNumber', orderNumber)
          ..add('orderTotal', orderTotal)
          ..add('promoCode', promoCode))
        .toString();
  }
}

class OrderModelBuilder implements Builder<OrderModel, OrderModelBuilder> {
  _$OrderModel _$v;

  DateTime _claimedDate;
  DateTime get claimedDate => _$this._claimedDate;
  set claimedDate(DateTime claimedDate) => _$this._claimedDate = claimedDate;

  double _orderDiscountAmount;
  double get orderDiscountAmount => _$this._orderDiscountAmount;
  set orderDiscountAmount(double orderDiscountAmount) =>
      _$this._orderDiscountAmount = orderDiscountAmount;

  double _orderDiscountTotal;
  double get orderDiscountTotal => _$this._orderDiscountTotal;
  set orderDiscountTotal(double orderDiscountTotal) =>
      _$this._orderDiscountTotal = orderDiscountTotal;

  int _orderNumber;
  int get orderNumber => _$this._orderNumber;
  set orderNumber(int orderNumber) => _$this._orderNumber = orderNumber;

  double _orderTotal;
  double get orderTotal => _$this._orderTotal;
  set orderTotal(double orderTotal) => _$this._orderTotal = orderTotal;

  String _promoCode;
  String get promoCode => _$this._promoCode;
  set promoCode(String promoCode) => _$this._promoCode = promoCode;

  OrderModelBuilder();

  OrderModelBuilder get _$this {
    if (_$v != null) {
      _claimedDate = _$v.claimedDate;
      _orderDiscountAmount = _$v.orderDiscountAmount;
      _orderDiscountTotal = _$v.orderDiscountTotal;
      _orderNumber = _$v.orderNumber;
      _orderTotal = _$v.orderTotal;
      _promoCode = _$v.promoCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderModel;
  }

  @override
  void update(void Function(OrderModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderModel build() {
    final _$result = _$v ??
        new _$OrderModel._(
            claimedDate: claimedDate,
            orderDiscountAmount: orderDiscountAmount,
            orderDiscountTotal: orderDiscountTotal,
            orderNumber: orderNumber,
            orderTotal: orderTotal,
            promoCode: promoCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
