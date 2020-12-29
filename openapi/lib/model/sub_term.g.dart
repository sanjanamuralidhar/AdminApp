// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_term.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubTerm> _$subTermSerializer = new _$SubTermSerializer();

class _$SubTermSerializer implements StructuredSerializer<SubTerm> {
  @override
  final Iterable<Type> types = const [SubTerm, _$SubTerm];
  @override
  final String wireName = 'SubTerm';

  @override
  Iterable<Object> serialize(Serializers serializers, SubTerm object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.term != null) {
      result
        ..add('term')
        ..add(serializers.serialize(object.term,
            specifiedType: const FullType(Term)));
    }
    if (object.termDescription != null) {
      result
        ..add('termDescription')
        ..add(serializers.serialize(object.termDescription,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SubTerm deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubTermBuilder();

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
        case 'term':
          result.term.replace(serializers.deserialize(value,
              specifiedType: const FullType(Term)) as Term);
          break;
        case 'termDescription':
          result.termDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubTerm extends SubTerm {
  @override
  final int id;
  @override
  final Term term;
  @override
  final String termDescription;

  factory _$SubTerm([void Function(SubTermBuilder) updates]) =>
      (new SubTermBuilder()..update(updates)).build();

  _$SubTerm._({this.id, this.term, this.termDescription}) : super._();

  @override
  SubTerm rebuild(void Function(SubTermBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubTermBuilder toBuilder() => new SubTermBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubTerm &&
        id == other.id &&
        term == other.term &&
        termDescription == other.termDescription;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), term.hashCode), termDescription.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubTerm')
          ..add('id', id)
          ..add('term', term)
          ..add('termDescription', termDescription))
        .toString();
  }
}

class SubTermBuilder implements Builder<SubTerm, SubTermBuilder> {
  _$SubTerm _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  TermBuilder _term;
  TermBuilder get term => _$this._term ??= new TermBuilder();
  set term(TermBuilder term) => _$this._term = term;

  String _termDescription;
  String get termDescription => _$this._termDescription;
  set termDescription(String termDescription) =>
      _$this._termDescription = termDescription;

  SubTermBuilder();

  SubTermBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _term = _$v.term?.toBuilder();
      _termDescription = _$v.termDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubTerm other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubTerm;
  }

  @override
  void update(void Function(SubTermBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubTerm build() {
    _$SubTerm _$result;
    try {
      _$result = _$v ??
          new _$SubTerm._(
              id: id, term: _term?.build(), termDescription: termDescription);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'term';
        _term?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubTerm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
