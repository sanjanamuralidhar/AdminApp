// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreSettings> _$storeSettingsSerializer =
    new _$StoreSettingsSerializer();

class _$StoreSettingsSerializer implements StructuredSerializer<StoreSettings> {
  @override
  final Iterable<Type> types = const [StoreSettings, _$StoreSettings];
  @override
  final String wireName = 'StoreSettings';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreSettings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.deliveryCharge != null) {
      result
        ..add('deliveryCharge')
        ..add(serializers.serialize(object.deliveryCharge,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.isActive != null) {
      result
        ..add('isActive')
        ..add(serializers.serialize(object.isActive,
            specifiedType: const FullType(bool)));
    }
    if (object.isInventoryRequired != null) {
      result
        ..add('isInventoryRequired')
        ..add(serializers.serialize(object.isInventoryRequired,
            specifiedType: const FullType(bool)));
    }
    if (object.orderAcceptType != null) {
      result
        ..add('orderAcceptType')
        ..add(serializers.serialize(object.orderAcceptType,
            specifiedType: const FullType(String)));
    }
    if (object.serviceCharge != null) {
      result
        ..add('serviceCharge')
        ..add(serializers.serialize(object.serviceCharge,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  StoreSettings deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreSettingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deliveryCharge':
          result.deliveryCharge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isInventoryRequired':
          result.isInventoryRequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'orderAcceptType':
          result.orderAcceptType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceCharge':
          result.serviceCharge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$StoreSettings extends StoreSettings {
  @override
  final double deliveryCharge;
  @override
  final int id;
  @override
  final bool isActive;
  @override
  final bool isInventoryRequired;
  @override
  final String orderAcceptType;
  @override
  final double serviceCharge;

  factory _$StoreSettings([void Function(StoreSettingsBuilder) updates]) =>
      (new StoreSettingsBuilder()..update(updates)).build();

  _$StoreSettings._(
      {this.deliveryCharge,
      this.id,
      this.isActive,
      this.isInventoryRequired,
      this.orderAcceptType,
      this.serviceCharge})
      : super._();

  @override
  StoreSettings rebuild(void Function(StoreSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreSettingsBuilder toBuilder() => new StoreSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreSettings &&
        deliveryCharge == other.deliveryCharge &&
        id == other.id &&
        isActive == other.isActive &&
        isInventoryRequired == other.isInventoryRequired &&
        orderAcceptType == other.orderAcceptType &&
        serviceCharge == other.serviceCharge;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, deliveryCharge.hashCode), id.hashCode),
                    isActive.hashCode),
                isInventoryRequired.hashCode),
            orderAcceptType.hashCode),
        serviceCharge.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreSettings')
          ..add('deliveryCharge', deliveryCharge)
          ..add('id', id)
          ..add('isActive', isActive)
          ..add('isInventoryRequired', isInventoryRequired)
          ..add('orderAcceptType', orderAcceptType)
          ..add('serviceCharge', serviceCharge))
        .toString();
  }
}

class StoreSettingsBuilder
    implements Builder<StoreSettings, StoreSettingsBuilder> {
  _$StoreSettings _$v;

  double _deliveryCharge;
  double get deliveryCharge => _$this._deliveryCharge;
  set deliveryCharge(double deliveryCharge) =>
      _$this._deliveryCharge = deliveryCharge;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  bool _isInventoryRequired;
  bool get isInventoryRequired => _$this._isInventoryRequired;
  set isInventoryRequired(bool isInventoryRequired) =>
      _$this._isInventoryRequired = isInventoryRequired;

  String _orderAcceptType;
  String get orderAcceptType => _$this._orderAcceptType;
  set orderAcceptType(String orderAcceptType) =>
      _$this._orderAcceptType = orderAcceptType;

  double _serviceCharge;
  double get serviceCharge => _$this._serviceCharge;
  set serviceCharge(double serviceCharge) =>
      _$this._serviceCharge = serviceCharge;

  StoreSettingsBuilder();

  StoreSettingsBuilder get _$this {
    if (_$v != null) {
      _deliveryCharge = _$v.deliveryCharge;
      _id = _$v.id;
      _isActive = _$v.isActive;
      _isInventoryRequired = _$v.isInventoryRequired;
      _orderAcceptType = _$v.orderAcceptType;
      _serviceCharge = _$v.serviceCharge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreSettings other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StoreSettings;
  }

  @override
  void update(void Function(StoreSettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreSettings build() {
    final _$result = _$v ??
        new _$StoreSettings._(
            deliveryCharge: deliveryCharge,
            id: id,
            isActive: isActive,
            isInventoryRequired: isInventoryRequired,
            orderAcceptType: orderAcceptType,
            serviceCharge: serviceCharge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
