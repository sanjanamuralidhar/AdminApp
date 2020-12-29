// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderLine> _$orderLineSerializer = new _$OrderLineSerializer();

class _$OrderLineSerializer implements StructuredSerializer<OrderLine> {
  @override
  final Iterable<Type> types = const [OrderLine, _$OrderLine];
  @override
  final String wireName = 'OrderLine';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderLine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.auxItems != null) {
      result
        ..add('auxItems')
        ..add(serializers.serialize(object.auxItems,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AuxItem)])));
    }
    if (object.comboItems != null) {
      result
        ..add('comboItems')
        ..add(serializers.serialize(object.comboItems,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ComboItem)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.item != null) {
      result
        ..add('item')
        ..add(serializers.serialize(object.item,
            specifiedType: const FullType(String)));
    }
    if (object.order != null) {
      result
        ..add('order')
        ..add(serializers.serialize(object.order,
            specifiedType: const FullType(Order)));
    }
    if (object.orderMaster != null) {
      result
        ..add('orderMaster')
        ..add(serializers.serialize(object.orderMaster,
            specifiedType: const FullType(OrderMaster)));
    }
    if (object.pricePerUnit != null) {
      result
        ..add('pricePerUnit')
        ..add(serializers.serialize(object.pricePerUnit,
            specifiedType: const FullType(double)));
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
    if (object.requiedAuxilaries != null) {
      result
        ..add('requiedAuxilaries')
        ..add(serializers.serialize(object.requiedAuxilaries,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AuxilaryOrderLine)])));
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
  OrderLine deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderLineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auxItems':
          result.auxItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AuxItem)]))
              as BuiltList<Object>);
          break;
        case 'comboItems':
          result.comboItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ComboItem)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order.replace(serializers.deserialize(value,
              specifiedType: const FullType(Order)) as Order);
          break;
        case 'orderMaster':
          result.orderMaster.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrderMaster)) as OrderMaster);
          break;
        case 'pricePerUnit':
          result.pricePerUnit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'requiedAuxilaries':
          result.requiedAuxilaries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AuxilaryOrderLine)]))
              as BuiltList<Object>);
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

class _$OrderLine extends OrderLine {
  @override
  final BuiltList<AuxItem> auxItems;
  @override
  final BuiltList<ComboItem> comboItems;
  @override
  final int id;
  @override
  final String item;
  @override
  final Order order;
  @override
  final OrderMaster orderMaster;
  @override
  final double pricePerUnit;
  @override
  final int productId;
  @override
  final int quantity;
  @override
  final BuiltList<AuxilaryOrderLine> requiedAuxilaries;
  @override
  final double total;

  factory _$OrderLine([void Function(OrderLineBuilder) updates]) =>
      (new OrderLineBuilder()..update(updates)).build();

  _$OrderLine._(
      {this.auxItems,
      this.comboItems,
      this.id,
      this.item,
      this.order,
      this.orderMaster,
      this.pricePerUnit,
      this.productId,
      this.quantity,
      this.requiedAuxilaries,
      this.total})
      : super._();

  @override
  OrderLine rebuild(void Function(OrderLineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderLineBuilder toBuilder() => new OrderLineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderLine &&
        auxItems == other.auxItems &&
        comboItems == other.comboItems &&
        id == other.id &&
        item == other.item &&
        order == other.order &&
        orderMaster == other.orderMaster &&
        pricePerUnit == other.pricePerUnit &&
        productId == other.productId &&
        quantity == other.quantity &&
        requiedAuxilaries == other.requiedAuxilaries &&
        total == other.total;
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
                                        $jc($jc(0, auxItems.hashCode),
                                            comboItems.hashCode),
                                        id.hashCode),
                                    item.hashCode),
                                order.hashCode),
                            orderMaster.hashCode),
                        pricePerUnit.hashCode),
                    productId.hashCode),
                quantity.hashCode),
            requiedAuxilaries.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderLine')
          ..add('auxItems', auxItems)
          ..add('comboItems', comboItems)
          ..add('id', id)
          ..add('item', item)
          ..add('order', order)
          ..add('orderMaster', orderMaster)
          ..add('pricePerUnit', pricePerUnit)
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('requiedAuxilaries', requiedAuxilaries)
          ..add('total', total))
        .toString();
  }
}

class OrderLineBuilder implements Builder<OrderLine, OrderLineBuilder> {
  _$OrderLine _$v;

  ListBuilder<AuxItem> _auxItems;
  ListBuilder<AuxItem> get auxItems =>
      _$this._auxItems ??= new ListBuilder<AuxItem>();
  set auxItems(ListBuilder<AuxItem> auxItems) => _$this._auxItems = auxItems;

  ListBuilder<ComboItem> _comboItems;
  ListBuilder<ComboItem> get comboItems =>
      _$this._comboItems ??= new ListBuilder<ComboItem>();
  set comboItems(ListBuilder<ComboItem> comboItems) =>
      _$this._comboItems = comboItems;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _item;
  String get item => _$this._item;
  set item(String item) => _$this._item = item;

  OrderBuilder _order;
  OrderBuilder get order => _$this._order ??= new OrderBuilder();
  set order(OrderBuilder order) => _$this._order = order;

  OrderMasterBuilder _orderMaster;
  OrderMasterBuilder get orderMaster =>
      _$this._orderMaster ??= new OrderMasterBuilder();
  set orderMaster(OrderMasterBuilder orderMaster) =>
      _$this._orderMaster = orderMaster;

  double _pricePerUnit;
  double get pricePerUnit => _$this._pricePerUnit;
  set pricePerUnit(double pricePerUnit) => _$this._pricePerUnit = pricePerUnit;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  ListBuilder<AuxilaryOrderLine> _requiedAuxilaries;
  ListBuilder<AuxilaryOrderLine> get requiedAuxilaries =>
      _$this._requiedAuxilaries ??= new ListBuilder<AuxilaryOrderLine>();
  set requiedAuxilaries(ListBuilder<AuxilaryOrderLine> requiedAuxilaries) =>
      _$this._requiedAuxilaries = requiedAuxilaries;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  OrderLineBuilder();

  OrderLineBuilder get _$this {
    if (_$v != null) {
      _auxItems = _$v.auxItems?.toBuilder();
      _comboItems = _$v.comboItems?.toBuilder();
      _id = _$v.id;
      _item = _$v.item;
      _order = _$v.order?.toBuilder();
      _orderMaster = _$v.orderMaster?.toBuilder();
      _pricePerUnit = _$v.pricePerUnit;
      _productId = _$v.productId;
      _quantity = _$v.quantity;
      _requiedAuxilaries = _$v.requiedAuxilaries?.toBuilder();
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderLine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderLine;
  }

  @override
  void update(void Function(OrderLineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderLine build() {
    _$OrderLine _$result;
    try {
      _$result = _$v ??
          new _$OrderLine._(
              auxItems: _auxItems?.build(),
              comboItems: _comboItems?.build(),
              id: id,
              item: item,
              order: _order?.build(),
              orderMaster: _orderMaster?.build(),
              pricePerUnit: pricePerUnit,
              productId: productId,
              quantity: quantity,
              requiedAuxilaries: _requiedAuxilaries?.build(),
              total: total);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auxItems';
        _auxItems?.build();
        _$failedField = 'comboItems';
        _comboItems?.build();

        _$failedField = 'order';
        _order?.build();
        _$failedField = 'orderMaster';
        _orderMaster?.build();

        _$failedField = 'requiedAuxilaries';
        _requiedAuxilaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderLine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
