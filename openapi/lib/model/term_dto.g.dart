// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TermDTO> _$termDTOSerializer = new _$TermDTOSerializer();

class _$TermDTOSerializer implements StructuredSerializer<TermDTO> {
  @override
  final Iterable<Type> types = const [TermDTO, _$TermDTO];
  @override
  final String wireName = 'TermDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, TermDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.termId != null) {
      result
        ..add('termId')
        ..add(serializers.serialize(object.termId,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TermDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TermDTOBuilder();

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
        case 'termId':
          result.termId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TermDTO extends TermDTO {
  @override
  final int id;
  @override
  final int termId;
  @override
  final String title;

  factory _$TermDTO([void Function(TermDTOBuilder) updates]) =>
      (new TermDTOBuilder()..update(updates)).build();

  _$TermDTO._({this.id, this.termId, this.title}) : super._();

  @override
  TermDTO rebuild(void Function(TermDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermDTOBuilder toBuilder() => new TermDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TermDTO &&
        id == other.id &&
        termId == other.termId &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), termId.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TermDTO')
          ..add('id', id)
          ..add('termId', termId)
          ..add('title', title))
        .toString();
  }
}

class TermDTOBuilder implements Builder<TermDTO, TermDTOBuilder> {
  _$TermDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _termId;
  int get termId => _$this._termId;
  set termId(int termId) => _$this._termId = termId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  TermDTOBuilder();

  TermDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _termId = _$v.termId;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TermDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TermDTO;
  }

  @override
  void update(void Function(TermDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TermDTO build() {
    final _$result =
        _$v ?? new _$TermDTO._(id: id, termId: termId, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
