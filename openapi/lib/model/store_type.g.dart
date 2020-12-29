// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreType> _$storeTypeSerializer = new _$StoreTypeSerializer();

class _$StoreTypeSerializer implements StructuredSerializer<StoreType> {
  @override
  final Iterable<Type> types = const [StoreType, _$StoreType];
  @override
  final String wireName = 'StoreType';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.store != null) {
      result
        ..add('store')
        ..add(serializers.serialize(object.store,
            specifiedType: const FullType(Store)));
    }
    return result;
  }

  @override
  StoreType deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreTypeBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store':
          result.store.replace(serializers.deserialize(value,
              specifiedType: const FullType(Store)) as Store);
          break;
      }
    }

    return result.build();
  }
}

class _$StoreType extends StoreType {
  @override
  final int id;
  @override
  final String name;
  @override
  final Store store;

  factory _$StoreType([void Function(StoreTypeBuilder) updates]) =>
      (new StoreTypeBuilder()..update(updates)).build();

  _$StoreType._({this.id, this.name, this.store}) : super._();

  @override
  StoreType rebuild(void Function(StoreTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreTypeBuilder toBuilder() => new StoreTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreType &&
        id == other.id &&
        name == other.name &&
        store == other.store;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), store.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreType')
          ..add('id', id)
          ..add('name', name)
          ..add('store', store))
        .toString();
  }
}

class StoreTypeBuilder implements Builder<StoreType, StoreTypeBuilder> {
  _$StoreType _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  StoreBuilder _store;
  StoreBuilder get store => _$this._store ??= new StoreBuilder();
  set store(StoreBuilder store) => _$this._store = store;

  StoreTypeBuilder();

  StoreTypeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _store = _$v.store?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreType other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StoreType;
  }

  @override
  void update(void Function(StoreTypeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreType build() {
    _$StoreType _$result;
    try {
      _$result =
          _$v ?? new _$StoreType._(id: id, name: name, store: _store?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'store';
        _store?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StoreType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
