// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_of_order_master.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageOfOrderMaster> _$pageOfOrderMasterSerializer =
    new _$PageOfOrderMasterSerializer();

class _$PageOfOrderMasterSerializer
    implements StructuredSerializer<PageOfOrderMaster> {
  @override
  final Iterable<Type> types = const [PageOfOrderMaster, _$PageOfOrderMaster];
  @override
  final String wireName = 'PageOfOrderMaster';

  @override
  Iterable<Object> serialize(Serializers serializers, PageOfOrderMaster object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderMaster)])));
    }
    if (object.empty != null) {
      result
        ..add('empty')
        ..add(serializers.serialize(object.empty,
            specifiedType: const FullType(bool)));
    }
    if (object.first != null) {
      result
        ..add('first')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(bool)));
    }
    if (object.last != null) {
      result
        ..add('last')
        ..add(serializers.serialize(object.last,
            specifiedType: const FullType(bool)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.numberOfElements != null) {
      result
        ..add('numberOfElements')
        ..add(serializers.serialize(object.numberOfElements,
            specifiedType: const FullType(int)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(Sort)));
    }
    if (object.totalElements != null) {
      result
        ..add('totalElements')
        ..add(serializers.serialize(object.totalElements,
            specifiedType: const FullType(int)));
    }
    if (object.totalPages != null) {
      result
        ..add('totalPages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PageOfOrderMaster deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageOfOrderMasterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderMaster)]))
              as BuiltList<Object>);
          break;
        case 'empty':
          result.empty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'numberOfElements':
          result.numberOfElements = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sort)) as Sort);
          break;
        case 'totalElements':
          result.totalElements = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalPages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PageOfOrderMaster extends PageOfOrderMaster {
  @override
  final BuiltList<OrderMaster> content;
  @override
  final bool empty;
  @override
  final bool first;
  @override
  final bool last;
  @override
  final int number;
  @override
  final int numberOfElements;
  @override
  final int size;
  @override
  final Sort sort;
  @override
  final int totalElements;
  @override
  final int totalPages;

  factory _$PageOfOrderMaster(
          [void Function(PageOfOrderMasterBuilder) updates]) =>
      (new PageOfOrderMasterBuilder()..update(updates)).build();

  _$PageOfOrderMaster._(
      {this.content,
      this.empty,
      this.first,
      this.last,
      this.number,
      this.numberOfElements,
      this.size,
      this.sort,
      this.totalElements,
      this.totalPages})
      : super._();

  @override
  PageOfOrderMaster rebuild(void Function(PageOfOrderMasterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageOfOrderMasterBuilder toBuilder() =>
      new PageOfOrderMasterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageOfOrderMaster &&
        content == other.content &&
        empty == other.empty &&
        first == other.first &&
        last == other.last &&
        number == other.number &&
        numberOfElements == other.numberOfElements &&
        size == other.size &&
        sort == other.sort &&
        totalElements == other.totalElements &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, content.hashCode),
                                        empty.hashCode),
                                    first.hashCode),
                                last.hashCode),
                            number.hashCode),
                        numberOfElements.hashCode),
                    size.hashCode),
                sort.hashCode),
            totalElements.hashCode),
        totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageOfOrderMaster')
          ..add('content', content)
          ..add('empty', empty)
          ..add('first', first)
          ..add('last', last)
          ..add('number', number)
          ..add('numberOfElements', numberOfElements)
          ..add('size', size)
          ..add('sort', sort)
          ..add('totalElements', totalElements)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class PageOfOrderMasterBuilder
    implements Builder<PageOfOrderMaster, PageOfOrderMasterBuilder> {
  _$PageOfOrderMaster _$v;

  ListBuilder<OrderMaster> _content;
  ListBuilder<OrderMaster> get content =>
      _$this._content ??= new ListBuilder<OrderMaster>();
  set content(ListBuilder<OrderMaster> content) => _$this._content = content;

  bool _empty;
  bool get empty => _$this._empty;
  set empty(bool empty) => _$this._empty = empty;

  bool _first;
  bool get first => _$this._first;
  set first(bool first) => _$this._first = first;

  bool _last;
  bool get last => _$this._last;
  set last(bool last) => _$this._last = last;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  int _numberOfElements;
  int get numberOfElements => _$this._numberOfElements;
  set numberOfElements(int numberOfElements) =>
      _$this._numberOfElements = numberOfElements;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  SortBuilder _sort;
  SortBuilder get sort => _$this._sort ??= new SortBuilder();
  set sort(SortBuilder sort) => _$this._sort = sort;

  int _totalElements;
  int get totalElements => _$this._totalElements;
  set totalElements(int totalElements) => _$this._totalElements = totalElements;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  PageOfOrderMasterBuilder();

  PageOfOrderMasterBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content?.toBuilder();
      _empty = _$v.empty;
      _first = _$v.first;
      _last = _$v.last;
      _number = _$v.number;
      _numberOfElements = _$v.numberOfElements;
      _size = _$v.size;
      _sort = _$v.sort?.toBuilder();
      _totalElements = _$v.totalElements;
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageOfOrderMaster other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageOfOrderMaster;
  }

  @override
  void update(void Function(PageOfOrderMasterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageOfOrderMaster build() {
    _$PageOfOrderMaster _$result;
    try {
      _$result = _$v ??
          new _$PageOfOrderMaster._(
              content: _content?.build(),
              empty: empty,
              first: first,
              last: last,
              number: number,
              numberOfElements: numberOfElements,
              size: size,
              sort: _sort?.build(),
              totalElements: totalElements,
              totalPages: totalPages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();

        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PageOfOrderMaster', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
