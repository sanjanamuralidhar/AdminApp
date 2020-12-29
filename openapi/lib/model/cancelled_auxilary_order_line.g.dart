// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelled_auxilary_order_line.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelledAuxilaryOrderLine> _$cancelledAuxilaryOrderLineSerializer =
    new _$CancelledAuxilaryOrderLineSerializer();

class _$CancelledAuxilaryOrderLineSerializer
    implements StructuredSerializer<CancelledAuxilaryOrderLine> {
  @override
  final Iterable<Type> types = const [
    CancelledAuxilaryOrderLine,
    _$CancelledAuxilaryOrderLine
  ];
  @override
  final String wireName = 'CancelledAuxilaryOrderLine';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancelledAuxilaryOrderLine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ammount != null) {
      result
        ..add('ammount')
        ..add(serializers.serialize(object.ammount,
            specifiedType: const FullType(double)));
    }
    if (object.cancellationRequest != null) {
      result
        ..add('cancellationRequest')
        ..add(serializers.serialize(object.cancellationRequest,
            specifiedType: const FullType(CancellationRequest)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.itemName != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(object.itemName,
            specifiedType: const FullType(String)));
    }
    if (object.orderLineId != null) {
      result
        ..add('orderLineId')
        ..add(serializers.serialize(object.orderLineId,
            specifiedType: const FullType(int)));
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
    return result;
  }

  @override
  CancelledAuxilaryOrderLine deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelledAuxilaryOrderLineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ammount':
          result.ammount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cancellationRequest':
          result.cancellationRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CancellationRequest))
              as CancellationRequest);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderLineId':
          result.orderLineId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
      }
    }

    return result.build();
  }
}

class _$CancelledAuxilaryOrderLine extends CancelledAuxilaryOrderLine {
  @override
  final double ammount;
  @override
  final CancellationRequest cancellationRequest;
  @override
  final int id;
  @override
  final String itemName;
  @override
  final int orderLineId;
  @override
  final double pricePerUnit;
  @override
  final int productId;
  @override
  final int quantity;

  factory _$CancelledAuxilaryOrderLine(
          [void Function(CancelledAuxilaryOrderLineBuilder) updates]) =>
      (new CancelledAuxilaryOrderLineBuilder()..update(updates)).build();

  _$CancelledAuxilaryOrderLine._(
      {this.ammount,
      this.cancellationRequest,
      this.id,
      this.itemName,
      this.orderLineId,
      this.pricePerUnit,
      this.productId,
      this.quantity})
      : super._();

  @override
  CancelledAuxilaryOrderLine rebuild(
          void Function(CancelledAuxilaryOrderLineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelledAuxilaryOrderLineBuilder toBuilder() =>
      new CancelledAuxilaryOrderLineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelledAuxilaryOrderLine &&
        ammount == other.ammount &&
        cancellationRequest == other.cancellationRequest &&
        id == other.id &&
        itemName == other.itemName &&
        orderLineId == other.orderLineId &&
        pricePerUnit == other.pricePerUnit &&
        productId == other.productId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, ammount.hashCode),
                                cancellationRequest.hashCode),
                            id.hashCode),
                        itemName.hashCode),
                    orderLineId.hashCode),
                pricePerUnit.hashCode),
            productId.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancelledAuxilaryOrderLine')
          ..add('ammount', ammount)
          ..add('cancellationRequest', cancellationRequest)
          ..add('id', id)
          ..add('itemName', itemName)
          ..add('orderLineId', orderLineId)
          ..add('pricePerUnit', pricePerUnit)
          ..add('productId', productId)
          ..add('quantity', quantity))
        .toString();
  }
}

class CancelledAuxilaryOrderLineBuilder
    implements
        Builder<CancelledAuxilaryOrderLine, CancelledAuxilaryOrderLineBuilder> {
  _$CancelledAuxilaryOrderLine _$v;

  double _ammount;
  double get ammount => _$this._ammount;
  set ammount(double ammount) => _$this._ammount = ammount;

  CancellationRequestBuilder _cancellationRequest;
  CancellationRequestBuilder get cancellationRequest =>
      _$this._cancellationRequest ??= new CancellationRequestBuilder();
  set cancellationRequest(CancellationRequestBuilder cancellationRequest) =>
      _$this._cancellationRequest = cancellationRequest;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _itemName;
  String get itemName => _$this._itemName;
  set itemName(String itemName) => _$this._itemName = itemName;

  int _orderLineId;
  int get orderLineId => _$this._orderLineId;
  set orderLineId(int orderLineId) => _$this._orderLineId = orderLineId;

  double _pricePerUnit;
  double get pricePerUnit => _$this._pricePerUnit;
  set pricePerUnit(double pricePerUnit) => _$this._pricePerUnit = pricePerUnit;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  CancelledAuxilaryOrderLineBuilder();

  CancelledAuxilaryOrderLineBuilder get _$this {
    if (_$v != null) {
      _ammount = _$v.ammount;
      _cancellationRequest = _$v.cancellationRequest?.toBuilder();
      _id = _$v.id;
      _itemName = _$v.itemName;
      _orderLineId = _$v.orderLineId;
      _pricePerUnit = _$v.pricePerUnit;
      _productId = _$v.productId;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelledAuxilaryOrderLine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancelledAuxilaryOrderLine;
  }

  @override
  void update(void Function(CancelledAuxilaryOrderLineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancelledAuxilaryOrderLine build() {
    _$CancelledAuxilaryOrderLine _$result;
    try {
      _$result = _$v ??
          new _$CancelledAuxilaryOrderLine._(
              ammount: ammount,
              cancellationRequest: _cancellationRequest?.build(),
              id: id,
              itemName: itemName,
              orderLineId: orderLineId,
              pricePerUnit: pricePerUnit,
              productId: productId,
              quantity: quantity);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cancellationRequest';
        _cancellationRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CancelledAuxilaryOrderLine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
