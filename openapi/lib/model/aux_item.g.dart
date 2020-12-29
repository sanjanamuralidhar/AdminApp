// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aux_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuxItem> _$auxItemSerializer = new _$AuxItemSerializer();

class _$AuxItemSerializer implements StructuredSerializer<AuxItem> {
  @override
  final Iterable<Type> types = const [AuxItem, _$AuxItem];
  @override
  final String wireName = 'AuxItem';

  @override
  Iterable<Object> serialize(Serializers serializers, AuxItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.auxItem != null) {
      result
        ..add('auxItem')
        ..add(serializers.serialize(object.auxItem,
            specifiedType: const FullType(String)));
    }
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
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  AuxItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuxItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auxItem':
          result.auxItem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderLine':
          result.orderLine.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrderLine)) as OrderLine);
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$AuxItem extends AuxItem {
  @override
  final String auxItem;
  @override
  final int id;
  @override
  final OrderLine orderLine;
  @override
  final int productId;
  @override
  final int quantity;
  @override
  final double total;

  factory _$AuxItem([void Function(AuxItemBuilder) updates]) =>
      (new AuxItemBuilder()..update(updates)).build();

  _$AuxItem._(
      {this.auxItem,
      this.id,
      this.orderLine,
      this.productId,
      this.quantity,
      this.total})
      : super._();

  @override
  AuxItem rebuild(void Function(AuxItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuxItemBuilder toBuilder() => new AuxItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuxItem &&
        auxItem == other.auxItem &&
        id == other.id &&
        orderLine == other.orderLine &&
        productId == other.productId &&
        quantity == other.quantity &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, auxItem.hashCode), id.hashCode),
                    orderLine.hashCode),
                productId.hashCode),
            quantity.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuxItem')
          ..add('auxItem', auxItem)
          ..add('id', id)
          ..add('orderLine', orderLine)
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('total', total))
        .toString();
  }
}

class AuxItemBuilder implements Builder<AuxItem, AuxItemBuilder> {
  _$AuxItem _$v;

  String _auxItem;
  String get auxItem => _$this._auxItem;
  set auxItem(String auxItem) => _$this._auxItem = auxItem;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  OrderLineBuilder _orderLine;
  OrderLineBuilder get orderLine =>
      _$this._orderLine ??= new OrderLineBuilder();
  set orderLine(OrderLineBuilder orderLine) => _$this._orderLine = orderLine;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  AuxItemBuilder();

  AuxItemBuilder get _$this {
    if (_$v != null) {
      _auxItem = _$v.auxItem;
      _id = _$v.id;
      _orderLine = _$v.orderLine?.toBuilder();
      _productId = _$v.productId;
      _quantity = _$v.quantity;
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuxItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuxItem;
  }

  @override
  void update(void Function(AuxItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuxItem build() {
    _$AuxItem _$result;
    try {
      _$result = _$v ??
          new _$AuxItem._(
              auxItem: auxItem,
              id: id,
              orderLine: _orderLine?.build(),
              productId: productId,
              quantity: quantity,
              total: total);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderLine';
        _orderLine?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuxItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
