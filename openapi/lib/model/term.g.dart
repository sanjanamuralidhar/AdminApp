// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Term> _$termSerializer = new _$TermSerializer();

class _$TermSerializer implements StructuredSerializer<Term> {
  @override
  final Iterable<Type> types = const [Term, _$Term];
  @override
  final String wireName = 'Term';

  @override
  Iterable<Object> serialize(Serializers serializers, Term object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.subTerms != null) {
      result
        ..add('subTerms')
        ..add(serializers.serialize(object.subTerms,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SubTerm)])));
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
  Term deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TermBuilder();

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
        case 'subTerms':
          result.subTerms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubTerm)]))
              as BuiltList<Object>);
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

class _$Term extends Term {
  @override
  final int id;
  @override
  final BuiltList<SubTerm> subTerms;
  @override
  final String title;

  factory _$Term([void Function(TermBuilder) updates]) =>
      (new TermBuilder()..update(updates)).build();

  _$Term._({this.id, this.subTerms, this.title}) : super._();

  @override
  Term rebuild(void Function(TermBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermBuilder toBuilder() => new TermBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Term &&
        id == other.id &&
        subTerms == other.subTerms &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), subTerms.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Term')
          ..add('id', id)
          ..add('subTerms', subTerms)
          ..add('title', title))
        .toString();
  }
}

class TermBuilder implements Builder<Term, TermBuilder> {
  _$Term _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<SubTerm> _subTerms;
  ListBuilder<SubTerm> get subTerms =>
      _$this._subTerms ??= new ListBuilder<SubTerm>();
  set subTerms(ListBuilder<SubTerm> subTerms) => _$this._subTerms = subTerms;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  TermBuilder();

  TermBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _subTerms = _$v.subTerms?.toBuilder();
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Term other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Term;
  }

  @override
  void update(void Function(TermBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Term build() {
    _$Term _$result;
    try {
      _$result = _$v ??
          new _$Term._(id: id, subTerms: _subTerms?.build(), title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'subTerms';
        _subTerms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Term', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
