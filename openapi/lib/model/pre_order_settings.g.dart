// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_order_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PreOrderSettings> _$preOrderSettingsSerializer =
    new _$PreOrderSettingsSerializer();

class _$PreOrderSettingsSerializer
    implements StructuredSerializer<PreOrderSettings> {
  @override
  final Iterable<Type> types = const [PreOrderSettings, _$PreOrderSettings];
  @override
  final String wireName = 'PreOrderSettings';

  @override
  Iterable<Object> serialize(Serializers serializers, PreOrderSettings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.fromTime != null) {
      result
        ..add('fromTime')
        ..add(serializers.serialize(object.fromTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.isPreOrderAvailable != null) {
      result
        ..add('isPreOrderAvailable')
        ..add(serializers.serialize(object.isPreOrderAvailable,
            specifiedType: const FullType(bool)));
    }
    if (object.toTime != null) {
      result
        ..add('toTime')
        ..add(serializers.serialize(object.toTime,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  PreOrderSettings deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PreOrderSettingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fromTime':
          result.fromTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isPreOrderAvailable':
          result.isPreOrderAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'toTime':
          result.toTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$PreOrderSettings extends PreOrderSettings {
  @override
  final DateTime fromTime;
  @override
  final int id;
  @override
  final bool isPreOrderAvailable;
  @override
  final DateTime toTime;

  factory _$PreOrderSettings(
          [void Function(PreOrderSettingsBuilder) updates]) =>
      (new PreOrderSettingsBuilder()..update(updates)).build();

  _$PreOrderSettings._(
      {this.fromTime, this.id, this.isPreOrderAvailable, this.toTime})
      : super._();

  @override
  PreOrderSettings rebuild(void Function(PreOrderSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreOrderSettingsBuilder toBuilder() =>
      new PreOrderSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreOrderSettings &&
        fromTime == other.fromTime &&
        id == other.id &&
        isPreOrderAvailable == other.isPreOrderAvailable &&
        toTime == other.toTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fromTime.hashCode), id.hashCode),
            isPreOrderAvailable.hashCode),
        toTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PreOrderSettings')
          ..add('fromTime', fromTime)
          ..add('id', id)
          ..add('isPreOrderAvailable', isPreOrderAvailable)
          ..add('toTime', toTime))
        .toString();
  }
}

class PreOrderSettingsBuilder
    implements Builder<PreOrderSettings, PreOrderSettingsBuilder> {
  _$PreOrderSettings _$v;

  DateTime _fromTime;
  DateTime get fromTime => _$this._fromTime;
  set fromTime(DateTime fromTime) => _$this._fromTime = fromTime;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _isPreOrderAvailable;
  bool get isPreOrderAvailable => _$this._isPreOrderAvailable;
  set isPreOrderAvailable(bool isPreOrderAvailable) =>
      _$this._isPreOrderAvailable = isPreOrderAvailable;

  DateTime _toTime;
  DateTime get toTime => _$this._toTime;
  set toTime(DateTime toTime) => _$this._toTime = toTime;

  PreOrderSettingsBuilder();

  PreOrderSettingsBuilder get _$this {
    if (_$v != null) {
      _fromTime = _$v.fromTime;
      _id = _$v.id;
      _isPreOrderAvailable = _$v.isPreOrderAvailable;
      _toTime = _$v.toTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreOrderSettings other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PreOrderSettings;
  }

  @override
  void update(void Function(PreOrderSettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PreOrderSettings build() {
    final _$result = _$v ??
        new _$PreOrderSettings._(
            fromTime: fromTime,
            id: id,
            isPreOrderAvailable: isPreOrderAvailable,
            toTime: toTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
