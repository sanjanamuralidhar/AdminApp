// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auxilary_order_line.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuxilaryOrderLine> _$auxilaryOrderLineSerializer =
    new _$AuxilaryOrderLineSerializer();

class _$AuxilaryOrderLineSerializer
    implements StructuredSerializer<AuxilaryOrderLine> {
  @override
  final Iterable<Type> types = const [AuxilaryOrderLine, _$AuxilaryOrderLine];
  @override
  final String wireName = 'AuxilaryOrderLine';

  @override
  Iterable<Object> serialize(Serializers serializers, AuxilaryOrderLine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.orderLine != null) {
      result
        ..add('orderLine')
        ..add(serializers.serialize(object.orderLine,
            specifiedType: const FullType(OrderLine)));
    }
    return result;
  }

  @override
  AuxilaryOrderLine deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuxilaryOrderLineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderLine':
          result.orderLine.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrderLine)) as OrderLine);
          break;
      }
    }

    return result.build();
  }
}

class _$AuxilaryOrderLine extends AuxilaryOrderLine {
  @override
  final int id;
  @override
  final OrderLine orderLine;

  factory _$AuxilaryOrderLine(
          [void Function(AuxilaryOrderLineBuilder) updates]) =>
      (new AuxilaryOrderLineBuilder()..update(updates)).build();

  _$AuxilaryOrderLine._({this.id, this.orderLine}) : super._();

  @override
  AuxilaryOrderLine rebuild(void Function(AuxilaryOrderLineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuxilaryOrderLineBuilder toBuilder() =>
      new AuxilaryOrderLineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuxilaryOrderLine &&
        id == other.id &&
        orderLine == other.orderLine;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), orderLine.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuxilaryOrderLine')
          ..add('id', id)
          ..add('orderLine', orderLine))
        .toString();
  }
}

class AuxilaryOrderLineBuilder
    implements Builder<AuxilaryOrderLine, AuxilaryOrderLineBuilder> {
  _$AuxilaryOrderLine _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  OrderLineBuilder _orderLine;
  OrderLineBuilder get orderLine =>
      _$this._orderLine ??= new OrderLineBuilder();
  set orderLine(OrderLineBuilder orderLine) => _$this._orderLine = orderLine;

  AuxilaryOrderLineBuilder();

  AuxilaryOrderLineBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _orderLine = _$v.orderLine?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuxilaryOrderLine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuxilaryOrderLine;
  }

  @override
  void update(void Function(AuxilaryOrderLineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuxilaryOrderLine build() {
    _$AuxilaryOrderLine _$result;
    try {
      _$result = _$v ??
          new _$AuxilaryOrderLine._(id: id, orderLine: _orderLine?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderLine';
        _orderLine?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuxilaryOrderLine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
