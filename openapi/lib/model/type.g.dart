// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Type> _$typeSerializer = new _$TypeSerializer();

class _$TypeSerializer implements StructuredSerializer<Type> {
  @override
  // final Iterable<Type> types = const [Type, _$Type];
  final types = const [Type, _$Type];
  
  @override
  final String wireName = 'Type';

  @override
  Iterable<Object> serialize(Serializers serializers, Type object,
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
    return result;
  }

  @override
  Type deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TypeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Type extends Type {
  @override
  final int id;
  @override
  final String name;

  factory _$Type([void Function(TypeBuilder) updates]) =>
      (new TypeBuilder()..update(updates)).build();

  _$Type._({this.id, this.name}) : super._();

  @override
  Type rebuild(void Function(TypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeBuilder toBuilder() => new TypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Type && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Type')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class TypeBuilder implements Builder<Type, TypeBuilder> {
  _$Type _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TypeBuilder();

  TypeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Type other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Type;
  }

  @override
  void update(void Function(TypeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Type build() {
    final _$result = _$v ?? new _$Type._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
