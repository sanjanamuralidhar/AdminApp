// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Banner> _$bannerSerializer = new _$BannerSerializer();

class _$BannerSerializer implements StructuredSerializer<Banner> {
  @override
  final Iterable<Type> types = const [Banner, _$Banner];
  @override
  final String wireName = 'Banner';

  @override
  Iterable<Object> serialize(Serializers serializers, Banner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cost != null) {
      result
        ..add('cost')
        ..add(serializers.serialize(object.cost,
            specifiedType: const FullType(double)));
    }
    if (object.expiryDate != null) {
      result
        ..add('expiryDate')
        ..add(serializers.serialize(object.expiryDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.imageLink != null) {
      result
        ..add('imageLink')
        ..add(serializers.serialize(object.imageLink,
            specifiedType: const FullType(String)));
    }
    if (object.startDate != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(object.startDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.store != null) {
      result
        ..add('store')
        ..add(serializers.serialize(object.store,
            specifiedType: const FullType(Store)));
    }
    if (object.storeId != null) {
      result
        ..add('storeId')
        ..add(serializers.serialize(object.storeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Banner deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BannerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cost':
          result.cost = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'expiryDate':
          result.expiryDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imageLink':
          result.imageLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'store':
          result.store.replace(serializers.deserialize(value,
              specifiedType: const FullType(Store)) as Store);
          break;
        case 'storeId':
          result.storeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Banner extends Banner {
  @override
  final double cost;
  @override
  final DateTime expiryDate;
  @override
  final int id;
  @override
  final String imageLink;
  @override
  final DateTime startDate;
  @override
  final Store store;
  @override
  final String storeId;

  factory _$Banner([void Function(BannerBuilder) updates]) =>
      (new BannerBuilder()..update(updates)).build();

  _$Banner._(
      {this.cost,
      this.expiryDate,
      this.id,
      this.imageLink,
      this.startDate,
      this.store,
      this.storeId})
      : super._();

  @override
  Banner rebuild(void Function(BannerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BannerBuilder toBuilder() => new BannerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Banner &&
        cost == other.cost &&
        expiryDate == other.expiryDate &&
        id == other.id &&
        imageLink == other.imageLink &&
        startDate == other.startDate &&
        store == other.store &&
        storeId == other.storeId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, cost.hashCode), expiryDate.hashCode),
                        id.hashCode),
                    imageLink.hashCode),
                startDate.hashCode),
            store.hashCode),
        storeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Banner')
          ..add('cost', cost)
          ..add('expiryDate', expiryDate)
          ..add('id', id)
          ..add('imageLink', imageLink)
          ..add('startDate', startDate)
          ..add('store', store)
          ..add('storeId', storeId))
        .toString();
  }
}

class BannerBuilder implements Builder<Banner, BannerBuilder> {
  _$Banner _$v;

  double _cost;
  double get cost => _$this._cost;
  set cost(double cost) => _$this._cost = cost;

  DateTime _expiryDate;
  DateTime get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime expiryDate) => _$this._expiryDate = expiryDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imageLink;
  String get imageLink => _$this._imageLink;
  set imageLink(String imageLink) => _$this._imageLink = imageLink;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  StoreBuilder _store;
  StoreBuilder get store => _$this._store ??= new StoreBuilder();
  set store(StoreBuilder store) => _$this._store = store;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  BannerBuilder();

  BannerBuilder get _$this {
    if (_$v != null) {
      _cost = _$v.cost;
      _expiryDate = _$v.expiryDate;
      _id = _$v.id;
      _imageLink = _$v.imageLink;
      _startDate = _$v.startDate;
      _store = _$v.store?.toBuilder();
      _storeId = _$v.storeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Banner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Banner;
  }

  @override
  void update(void Function(BannerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Banner build() {
    _$Banner _$result;
    try {
      _$result = _$v ??
          new _$Banner._(
              cost: cost,
              expiryDate: expiryDate,
              id: id,
              imageLink: imageLink,
              startDate: startDate,
              store: _store?.build(),
              storeId: storeId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'store';
        _store?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Banner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
