// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavouriteProduct> _$favouriteProductSerializer =
    new _$FavouriteProductSerializer();

class _$FavouriteProductSerializer
    implements StructuredSerializer<FavouriteProduct> {
  @override
  final Iterable<Type> types = const [FavouriteProduct, _$FavouriteProduct];
  @override
  final String wireName = 'FavouriteProduct';

  @override
  Iterable<Object> serialize(Serializers serializers, FavouriteProduct object,
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
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  FavouriteProduct deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavouriteProductBuilder();

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
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FavouriteProduct extends FavouriteProduct {
  @override
  final Customer customer;
  @override
  final int id;
  @override
  final int productId;

  factory _$FavouriteProduct(
          [void Function(FavouriteProductBuilder) updates]) =>
      (new FavouriteProductBuilder()..update(updates)).build();

  _$FavouriteProduct._({this.customer, this.id, this.productId}) : super._();

  @override
  FavouriteProduct rebuild(void Function(FavouriteProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouriteProductBuilder toBuilder() =>
      new FavouriteProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavouriteProduct &&
        customer == other.customer &&
        id == other.id &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, customer.hashCode), id.hashCode), productId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavouriteProduct')
          ..add('customer', customer)
          ..add('id', id)
          ..add('productId', productId))
        .toString();
  }
}

class FavouriteProductBuilder
    implements Builder<FavouriteProduct, FavouriteProductBuilder> {
  _$FavouriteProduct _$v;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  FavouriteProductBuilder();

  FavouriteProductBuilder get _$this {
    if (_$v != null) {
      _customer = _$v.customer?.toBuilder();
      _id = _$v.id;
      _productId = _$v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavouriteProduct other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavouriteProduct;
  }

  @override
  void update(void Function(FavouriteProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavouriteProduct build() {
    _$FavouriteProduct _$result;
    try {
      _$result = _$v ??
          new _$FavouriteProduct._(
              customer: _customer?.build(), id: id, productId: productId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavouriteProduct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
