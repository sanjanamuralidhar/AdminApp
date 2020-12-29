// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_line.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfferLine> _$offerLineSerializer = new _$OfferLineSerializer();

class _$OfferLineSerializer implements StructuredSerializer<OfferLine> {
  @override
  final Iterable<Type> types = const [OfferLine, _$OfferLine];
  @override
  final String wireName = 'OfferLine';

  @override
  Iterable<Object> serialize(Serializers serializers, OfferLine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.discountAmount != null) {
      result
        ..add('discountAmount')
        ..add(serializers.serialize(object.discountAmount,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.offerRef != null) {
      result
        ..add('offerRef')
        ..add(serializers.serialize(object.offerRef,
            specifiedType: const FullType(String)));
    }
    if (object.orderMaster != null) {
      result
        ..add('orderMaster')
        ..add(serializers.serialize(object.orderMaster,
            specifiedType: const FullType(OrderMaster)));
    }
    return result;
  }

  @override
  OfferLine deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfferLineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'discountAmount':
          result.discountAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'offerRef':
          result.offerRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderMaster':
          result.orderMaster.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrderMaster)) as OrderMaster);
          break;
      }
    }

    return result.build();
  }
}

class _$OfferLine extends OfferLine {
  @override
  final double discountAmount;
  @override
  final int id;
  @override
  final String offerRef;
  @override
  final OrderMaster orderMaster;

  factory _$OfferLine([void Function(OfferLineBuilder) updates]) =>
      (new OfferLineBuilder()..update(updates)).build();

  _$OfferLine._({this.discountAmount, this.id, this.offerRef, this.orderMaster})
      : super._();

  @override
  OfferLine rebuild(void Function(OfferLineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfferLineBuilder toBuilder() => new OfferLineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfferLine &&
        discountAmount == other.discountAmount &&
        id == other.id &&
        offerRef == other.offerRef &&
        orderMaster == other.orderMaster;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, discountAmount.hashCode), id.hashCode),
            offerRef.hashCode),
        orderMaster.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OfferLine')
          ..add('discountAmount', discountAmount)
          ..add('id', id)
          ..add('offerRef', offerRef)
          ..add('orderMaster', orderMaster))
        .toString();
  }
}

class OfferLineBuilder implements Builder<OfferLine, OfferLineBuilder> {
  _$OfferLine _$v;

  double _discountAmount;
  double get discountAmount => _$this._discountAmount;
  set discountAmount(double discountAmount) =>
      _$this._discountAmount = discountAmount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _offerRef;
  String get offerRef => _$this._offerRef;
  set offerRef(String offerRef) => _$this._offerRef = offerRef;

  OrderMasterBuilder _orderMaster;
  OrderMasterBuilder get orderMaster =>
      _$this._orderMaster ??= new OrderMasterBuilder();
  set orderMaster(OrderMasterBuilder orderMaster) =>
      _$this._orderMaster = orderMaster;

  OfferLineBuilder();

  OfferLineBuilder get _$this {
    if (_$v != null) {
      _discountAmount = _$v.discountAmount;
      _id = _$v.id;
      _offerRef = _$v.offerRef;
      _orderMaster = _$v.orderMaster?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfferLine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OfferLine;
  }

  @override
  void update(void Function(OfferLineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OfferLine build() {
    _$OfferLine _$result;
    try {
      _$result = _$v ??
          new _$OfferLine._(
              discountAmount: discountAmount,
              id: id,
              offerRef: offerRef,
              orderMaster: _orderMaster?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderMaster';
        _orderMaster?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OfferLine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
