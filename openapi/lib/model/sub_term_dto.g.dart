// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_term_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubTermDTO> _$subTermDTOSerializer = new _$SubTermDTOSerializer();

class _$SubTermDTOSerializer implements StructuredSerializer<SubTermDTO> {
  @override
  final Iterable<Type> types = const [SubTermDTO, _$SubTermDTO];
  @override
  final String wireName = 'SubTermDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, SubTermDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.subTermId != null) {
      result
        ..add('subTermId')
        ..add(serializers.serialize(object.subTermId,
            specifiedType: const FullType(int)));
    }
    if (object.termDescription != null) {
      result
        ..add('termDescription')
        ..add(serializers.serialize(object.termDescription,
            specifiedType: const FullType(String)));
    }
    if (object.termId != null) {
      result
        ..add('termId')
        ..add(serializers.serialize(object.termId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SubTermDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubTermDTOBuilder();

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
        case 'subTermId':
          result.subTermId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'termDescription':
          result.termDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'termId':
          result.termId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SubTermDTO extends SubTermDTO {
  @override
  final int id;
  @override
  final int subTermId;
  @override
  final String termDescription;
  @override
  final int termId;

  factory _$SubTermDTO([void Function(SubTermDTOBuilder) updates]) =>
      (new SubTermDTOBuilder()..update(updates)).build();

  _$SubTermDTO._({this.id, this.subTermId, this.termDescription, this.termId})
      : super._();

  @override
  SubTermDTO rebuild(void Function(SubTermDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubTermDTOBuilder toBuilder() => new SubTermDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubTermDTO &&
        id == other.id &&
        subTermId == other.subTermId &&
        termDescription == other.termDescription &&
        termId == other.termId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), subTermId.hashCode),
            termDescription.hashCode),
        termId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubTermDTO')
          ..add('id', id)
          ..add('subTermId', subTermId)
          ..add('termDescription', termDescription)
          ..add('termId', termId))
        .toString();
  }
}

class SubTermDTOBuilder implements Builder<SubTermDTO, SubTermDTOBuilder> {
  _$SubTermDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _subTermId;
  int get subTermId => _$this._subTermId;
  set subTermId(int subTermId) => _$this._subTermId = subTermId;

  String _termDescription;
  String get termDescription => _$this._termDescription;
  set termDescription(String termDescription) =>
      _$this._termDescription = termDescription;

  int _termId;
  int get termId => _$this._termId;
  set termId(int termId) => _$this._termId = termId;

  SubTermDTOBuilder();

  SubTermDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _subTermId = _$v.subTermId;
      _termDescription = _$v.termDescription;
      _termId = _$v.termId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubTermDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubTermDTO;
  }

  @override
  void update(void Function(SubTermDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubTermDTO build() {
    final _$result = _$v ??
        new _$SubTermDTO._(
            id: id,
            subTermId: subTermId,
            termDescription: termDescription,
            termId: termId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
