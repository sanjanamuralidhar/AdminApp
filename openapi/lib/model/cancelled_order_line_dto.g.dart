// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelled_order_line_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelledOrderLineDTO> _$cancelledOrderLineDTOSerializer =
    new _$CancelledOrderLineDTOSerializer();

class _$CancelledOrderLineDTOSerializer
    implements StructuredSerializer<CancelledOrderLineDTO> {
  @override
  final Iterable<Type> types = const [
    CancelledOrderLineDTO,
    _$CancelledOrderLineDTO
  ];
  @override
  final String wireName = 'CancelledOrderLineDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancelledOrderLineDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ammount != null) {
      result
        ..add('ammount')
        ..add(serializers.serialize(object.ammount,
            specifiedType: const FullType(double)));
    }
    if (object.cancellationRequestId != null) {
      result
        ..add('cancellationRequestId')
        ..add(serializers.serialize(object.cancellationRequestId,
            specifiedType: const FullType(int)));
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
  CancelledOrderLineDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelledOrderLineDTOBuilder();

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
        case 'cancellationRequestId':
          result.cancellationRequestId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$CancelledOrderLineDTO extends CancelledOrderLineDTO {
  @override
  final double ammount;
  @override
  final int cancellationRequestId;
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

  factory _$CancelledOrderLineDTO(
          [void Function(CancelledOrderLineDTOBuilder) updates]) =>
      (new CancelledOrderLineDTOBuilder()..update(updates)).build();

  _$CancelledOrderLineDTO._(
      {this.ammount,
      this.cancellationRequestId,
      this.id,
      this.itemName,
      this.orderLineId,
      this.pricePerUnit,
      this.productId,
      this.quantity})
      : super._();

  @override
  CancelledOrderLineDTO rebuild(
          void Function(CancelledOrderLineDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelledOrderLineDTOBuilder toBuilder() =>
      new CancelledOrderLineDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelledOrderLineDTO &&
        ammount == other.ammount &&
        cancellationRequestId == other.cancellationRequestId &&
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
                                cancellationRequestId.hashCode),
                            id.hashCode),
                        itemName.hashCode),
                    orderLineId.hashCode),
                pricePerUnit.hashCode),
            productId.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancelledOrderLineDTO')
          ..add('ammount', ammount)
          ..add('cancellationRequestId', cancellationRequestId)
          ..add('id', id)
          ..add('itemName', itemName)
          ..add('orderLineId', orderLineId)
          ..add('pricePerUnit', pricePerUnit)
          ..add('productId', productId)
          ..add('quantity', quantity))
        .toString();
  }
}

class CancelledOrderLineDTOBuilder
    implements Builder<CancelledOrderLineDTO, CancelledOrderLineDTOBuilder> {
  _$CancelledOrderLineDTO _$v;

  double _ammount;
  double get ammount => _$this._ammount;
  set ammount(double ammount) => _$this._ammount = ammount;

  int _cancellationRequestId;
  int get cancellationRequestId => _$this._cancellationRequestId;
  set cancellationRequestId(int cancellationRequestId) =>
      _$this._cancellationRequestId = cancellationRequestId;

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

  CancelledOrderLineDTOBuilder();

  CancelledOrderLineDTOBuilder get _$this {
    if (_$v != null) {
      _ammount = _$v.ammount;
      _cancellationRequestId = _$v.cancellationRequestId;
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
  void replace(CancelledOrderLineDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancelledOrderLineDTO;
  }

  @override
  void update(void Function(CancelledOrderLineDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancelledOrderLineDTO build() {
    final _$result = _$v ??
        new _$CancelledOrderLineDTO._(
            ammount: ammount,
            cancellationRequestId: cancellationRequestId,
            id: id,
            itemName: itemName,
            orderLineId: orderLineId,
            pricePerUnit: pricePerUnit,
            productId: productId,
            quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
