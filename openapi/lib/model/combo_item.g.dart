// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combo_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComboItem> _$comboItemSerializer = new _$ComboItemSerializer();

class _$ComboItemSerializer implements StructuredSerializer<ComboItem> {
  @override
  final Iterable<Type> types = const [ComboItem, _$ComboItem];
  @override
  final String wireName = 'ComboItem';

  @override
  Iterable<Object> serialize(Serializers serializers, ComboItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.comboItem != null) {
      result
        ..add('comboItem')
        ..add(serializers.serialize(object.comboItem,
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
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ComboItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComboItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comboItem':
          result.comboItem = serializers.deserialize(value,
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
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ComboItem extends ComboItem {
  @override
  final String comboItem;
  @override
  final int id;
  @override
  final OrderLine orderLine;
  @override
  final int productId;
  @override
  final double quantity;

  factory _$ComboItem([void Function(ComboItemBuilder) updates]) =>
      (new ComboItemBuilder()..update(updates)).build();

  _$ComboItem._(
      {this.comboItem, this.id, this.orderLine, this.productId, this.quantity})
      : super._();

  @override
  ComboItem rebuild(void Function(ComboItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComboItemBuilder toBuilder() => new ComboItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComboItem &&
        comboItem == other.comboItem &&
        id == other.id &&
        orderLine == other.orderLine &&
        productId == other.productId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, comboItem.hashCode), id.hashCode),
                orderLine.hashCode),
            productId.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ComboItem')
          ..add('comboItem', comboItem)
          ..add('id', id)
          ..add('orderLine', orderLine)
          ..add('productId', productId)
          ..add('quantity', quantity))
        .toString();
  }
}

class ComboItemBuilder implements Builder<ComboItem, ComboItemBuilder> {
  _$ComboItem _$v;

  String _comboItem;
  String get comboItem => _$this._comboItem;
  set comboItem(String comboItem) => _$this._comboItem = comboItem;

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

  double _quantity;
  double get quantity => _$this._quantity;
  set quantity(double quantity) => _$this._quantity = quantity;

  ComboItemBuilder();

  ComboItemBuilder get _$this {
    if (_$v != null) {
      _comboItem = _$v.comboItem;
      _id = _$v.id;
      _orderLine = _$v.orderLine?.toBuilder();
      _productId = _$v.productId;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComboItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ComboItem;
  }

  @override
  void update(void Function(ComboItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ComboItem build() {
    _$ComboItem _$result;
    try {
      _$result = _$v ??
          new _$ComboItem._(
              comboItem: comboItem,
              id: id,
              orderLine: _orderLine?.build(),
              productId: productId,
              quantity: quantity);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderLine';
        _orderLine?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ComboItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
