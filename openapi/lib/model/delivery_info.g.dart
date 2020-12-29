// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliveryInfo> _$deliveryInfoSerializer =
    new _$DeliveryInfoSerializer();

class _$DeliveryInfoSerializer implements StructuredSerializer<DeliveryInfo> {
  @override
  // final Iterable<Type> types = const [DeliveryInfo, _$DeliveryInfo];
  final types = const [DeliveryInfo, _$DeliveryInfo];

  @override
  final String wireName = 'DeliveryInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, DeliveryInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.endTime != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(object.endTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.startingTime != null) {
      result
        ..add('startingTime')
        ..add(serializers.serialize(object.startingTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.store != null) {
      result
        ..add('store')
        ..add(serializers.serialize(object.store,
            specifiedType: const FullType(Store)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(Type)));
    }
    return result;
  }

  @override
  DeliveryInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'startingTime':
          result.startingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'store':
          result.store.replace(serializers.deserialize(value,
              specifiedType: const FullType(Store)) as Store);
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
              specifiedType: const FullType(Type)) as Type);
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryInfo extends DeliveryInfo {
  @override
  final DateTime endTime;
  @override
  final int id;
  @override
  final DateTime startingTime;
  @override
  final Store store;
  @override
  final Type type;

  factory _$DeliveryInfo([void Function(DeliveryInfoBuilder) updates]) =>
      (new DeliveryInfoBuilder()..update(updates)).build();

  _$DeliveryInfo._(
      {this.endTime, this.id, this.startingTime, this.store, this.type})
      : super._();

  @override
  DeliveryInfo rebuild(void Function(DeliveryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryInfoBuilder toBuilder() => new DeliveryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryInfo &&
        endTime == other.endTime &&
        id == other.id &&
        startingTime == other.startingTime &&
        store == other.store &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, endTime.hashCode), id.hashCode),
                startingTime.hashCode),
            store.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryInfo')
          ..add('endTime', endTime)
          ..add('id', id)
          ..add('startingTime', startingTime)
          ..add('store', store)
          ..add('type', type))
        .toString();
  }
}

class DeliveryInfoBuilder
    implements Builder<DeliveryInfo, DeliveryInfoBuilder> {
  _$DeliveryInfo _$v;

  DateTime _endTime;
  DateTime get endTime => _$this._endTime;
  set endTime(DateTime endTime) => _$this._endTime = endTime;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _startingTime;
  DateTime get startingTime => _$this._startingTime;
  set startingTime(DateTime startingTime) =>
      _$this._startingTime = startingTime;

  StoreBuilder _store;
  StoreBuilder get store => _$this._store ??= new StoreBuilder();
  set store(StoreBuilder store) => _$this._store = store;

  TypeBuilder _type;
  TypeBuilder get type => _$this._type ??= new TypeBuilder();
  set type(TypeBuilder type) => _$this._type = type;

  DeliveryInfoBuilder();

  DeliveryInfoBuilder get _$this {
    if (_$v != null) {
      _endTime = _$v.endTime;
      _id = _$v.id;
      _startingTime = _$v.startingTime;
      _store = _$v.store?.toBuilder();
      _type = _$v.type?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryInfo;
  }

  @override
  void update(void Function(DeliveryInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryInfo build() {
    _$DeliveryInfo _$result;
    try {
      _$result = _$v ??
          new _$DeliveryInfo._(
              endTime: endTime,
              id: id,
              startingTime: startingTime,
              store: _store?.build(),
              type: _type?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'store';
        _store?.build();
        _$failedField = 'type';
        _type?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeliveryInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
