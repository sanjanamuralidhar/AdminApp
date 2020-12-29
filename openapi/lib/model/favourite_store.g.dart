// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_store.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavouriteStore> _$favouriteStoreSerializer =
    new _$FavouriteStoreSerializer();

class _$FavouriteStoreSerializer
    implements StructuredSerializer<FavouriteStore> {
  @override
  final Iterable<Type> types = const [FavouriteStore, _$FavouriteStore];
  @override
  final String wireName = 'FavouriteStore';

  @override
  Iterable<Object> serialize(Serializers serializers, FavouriteStore object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customer != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(object.customer,
            specifiedType: const FullType(Customer)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.storeId != null) {
      result
        ..add('storeId')
        ..add(serializers.serialize(object.storeId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  FavouriteStore deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavouriteStoreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer)) as Customer);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'storeId':
          result.storeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FavouriteStore extends FavouriteStore {
  @override
  final Customer customer;
  @override
  final int id;
  @override
  final int storeId;

  factory _$FavouriteStore([void Function(FavouriteStoreBuilder) updates]) =>
      (new FavouriteStoreBuilder()..update(updates)).build();

  _$FavouriteStore._({this.customer, this.id, this.storeId}) : super._();

  @override
  FavouriteStore rebuild(void Function(FavouriteStoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouriteStoreBuilder toBuilder() =>
      new FavouriteStoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavouriteStore &&
        customer == other.customer &&
        id == other.id &&
        storeId == other.storeId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, customer.hashCode), id.hashCode), storeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavouriteStore')
          ..add('customer', customer)
          ..add('id', id)
          ..add('storeId', storeId))
        .toString();
  }
}

class FavouriteStoreBuilder
    implements Builder<FavouriteStore, FavouriteStoreBuilder> {
  _$FavouriteStore _$v;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _storeId;
  int get storeId => _$this._storeId;
  set storeId(int storeId) => _$this._storeId = storeId;

  FavouriteStoreBuilder();

  FavouriteStoreBuilder get _$this {
    if (_$v != null) {
      _customer = _$v.customer?.toBuilder();
      _id = _$v.id;
      _storeId = _$v.storeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavouriteStore other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavouriteStore;
  }

  @override
  void update(void Function(FavouriteStoreBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavouriteStore build() {
    _$FavouriteStore _$result;
    try {
      _$result = _$v ??
          new _$FavouriteStore._(
              customer: _customer?.build(), id: id, storeId: storeId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavouriteStore', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
