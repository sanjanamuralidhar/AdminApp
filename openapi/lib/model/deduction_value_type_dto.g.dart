// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deduction_value_type_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeductionValueTypeDTO> _$deductionValueTypeDTOSerializer =
    new _$DeductionValueTypeDTOSerializer();

class _$DeductionValueTypeDTOSerializer
    implements StructuredSerializer<DeductionValueTypeDTO> {
  @override
  final Iterable<Type> types = const [
    DeductionValueTypeDTO,
    _$DeductionValueTypeDTO
  ];
  @override
  final String wireName = 'DeductionValueTypeDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DeductionValueTypeDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.deductionValueType != null) {
      result
        ..add('deductionValueType')
        ..add(serializers.serialize(object.deductionValueType,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  DeductionValueTypeDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeductionValueTypeDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deductionValueType':
          result.deductionValueType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DeductionValueTypeDTO extends DeductionValueTypeDTO {
  @override
  final String deductionValueType;
  @override
  final int id;

  factory _$DeductionValueTypeDTO(
          [void Function(DeductionValueTypeDTOBuilder) updates]) =>
      (new DeductionValueTypeDTOBuilder()..update(updates)).build();

  _$DeductionValueTypeDTO._({this.deductionValueType, this.id}) : super._();

  @override
  DeductionValueTypeDTO rebuild(
          void Function(DeductionValueTypeDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeductionValueTypeDTOBuilder toBuilder() =>
      new DeductionValueTypeDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeductionValueTypeDTO &&
        deductionValueType == other.deductionValueType &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deductionValueType.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeductionValueTypeDTO')
          ..add('deductionValueType', deductionValueType)
          ..add('id', id))
        .toString();
  }
}

class DeductionValueTypeDTOBuilder
    implements Builder<DeductionValueTypeDTO, DeductionValueTypeDTOBuilder> {
  _$DeductionValueTypeDTO _$v;

  String _deductionValueType;
  String get deductionValueType => _$this._deductionValueType;
  set deductionValueType(String deductionValueType) =>
      _$this._deductionValueType = deductionValueType;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DeductionValueTypeDTOBuilder();

  DeductionValueTypeDTOBuilder get _$this {
    if (_$v != null) {
      _deductionValueType = _$v.deductionValueType;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeductionValueTypeDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeductionValueTypeDTO;
  }

  @override
  void update(void Function(DeductionValueTypeDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeductionValueTypeDTO build() {
    final _$result = _$v ??
        new _$DeductionValueTypeDTO._(
            deductionValueType: deductionValueType, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
