// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Customer> _$customerSerializer = new _$CustomerSerializer();

class _$CustomerSerializer implements StructuredSerializer<Customer> {
  @override
  final Iterable<Type> types = const [Customer, _$Customer];
  @override
  final String wireName = 'Customer';

  @override
  Iterable<Object> serialize(Serializers serializers, Customer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.contact != null) {
      result
        ..add('contact')
        ..add(serializers.serialize(object.contact,
            specifiedType: const FullType(Contact)));
    }
    if (object.customerUniqueId != null) {
      result
        ..add('customerUniqueId')
        ..add(serializers.serialize(object.customerUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.favouriteproducts != null) {
      result
        ..add('favouriteproducts')
        ..add(serializers.serialize(object.favouriteproducts,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FavouriteProduct)])));
    }
    if (object.favouritestores != null) {
      result
        ..add('favouritestores')
        ..add(serializers.serialize(object.favouritestores,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FavouriteStore)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.idpCode != null) {
      result
        ..add('idpCode')
        ..add(serializers.serialize(object.idpCode,
            specifiedType: const FullType(String)));
    }
    if (object.idpSub != null) {
      result
        ..add('idpSub')
        ..add(serializers.serialize(object.idpSub,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.imageContentType != null) {
      result
        ..add('imageContentType')
        ..add(serializers.serialize(object.imageContentType,
            specifiedType: const FullType(String)));
    }
    if (object.imageLink != null) {
      result
        ..add('imageLink')
        ..add(serializers.serialize(object.imageLink,
            specifiedType: const FullType(String)));
    }
    if (object.loyaltyPoint != null) {
      result
        ..add('loyaltyPoint')
        ..add(serializers.serialize(object.loyaltyPoint,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Customer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contact':
          result.contact.replace(serializers.deserialize(value,
              specifiedType: const FullType(Contact)) as Contact);
          break;
        case 'customerUniqueId':
          result.customerUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'favouriteproducts':
          result.favouriteproducts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavouriteProduct)]))
              as BuiltList<Object>);
          break;
        case 'favouritestores':
          result.favouritestores.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavouriteStore)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'idpCode':
          result.idpCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idpSub':
          result.idpSub = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageContentType':
          result.imageContentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageLink':
          result.imageLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loyaltyPoint':
          result.loyaltyPoint = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Customer extends Customer {
  @override
  final Contact contact;
  @override
  final String customerUniqueId;
  @override
  final BuiltList<FavouriteProduct> favouriteproducts;
  @override
  final BuiltList<FavouriteStore> favouritestores;
  @override
  final int id;
  @override
  final String idpCode;
  @override
  final String idpSub;
  @override
  final String image;
  @override
  final String imageContentType;
  @override
  final String imageLink;
  @override
  final int loyaltyPoint;
  @override
  final String name;

  factory _$Customer([void Function(CustomerBuilder) updates]) =>
      (new CustomerBuilder()..update(updates)).build();

  _$Customer._(
      {this.contact,
      this.customerUniqueId,
      this.favouriteproducts,
      this.favouritestores,
      this.id,
      this.idpCode,
      this.idpSub,
      this.image,
      this.imageContentType,
      this.imageLink,
      this.loyaltyPoint,
      this.name})
      : super._();

  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => new CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        contact == other.contact &&
        customerUniqueId == other.customerUniqueId &&
        favouriteproducts == other.favouriteproducts &&
        favouritestores == other.favouritestores &&
        id == other.id &&
        idpCode == other.idpCode &&
        idpSub == other.idpSub &&
        image == other.image &&
        imageContentType == other.imageContentType &&
        imageLink == other.imageLink &&
        loyaltyPoint == other.loyaltyPoint &&
        name == other.name;
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
                                    $jc(
                                        $jc(
                                            $jc($jc(0, contact.hashCode),
                                                customerUniqueId.hashCode),
                                            favouriteproducts.hashCode),
                                        favouritestores.hashCode),
                                    id.hashCode),
                                idpCode.hashCode),
                            idpSub.hashCode),
                        image.hashCode),
                    imageContentType.hashCode),
                imageLink.hashCode),
            loyaltyPoint.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Customer')
          ..add('contact', contact)
          ..add('customerUniqueId', customerUniqueId)
          ..add('favouriteproducts', favouriteproducts)
          ..add('favouritestores', favouritestores)
          ..add('id', id)
          ..add('idpCode', idpCode)
          ..add('idpSub', idpSub)
          ..add('image', image)
          ..add('imageContentType', imageContentType)
          ..add('imageLink', imageLink)
          ..add('loyaltyPoint', loyaltyPoint)
          ..add('name', name))
        .toString();
  }
}

class CustomerBuilder implements Builder<Customer, CustomerBuilder> {
  _$Customer _$v;

  ContactBuilder _contact;
  ContactBuilder get contact => _$this._contact ??= new ContactBuilder();
  set contact(ContactBuilder contact) => _$this._contact = contact;

  String _customerUniqueId;
  String get customerUniqueId => _$this._customerUniqueId;
  set customerUniqueId(String customerUniqueId) =>
      _$this._customerUniqueId = customerUniqueId;

  ListBuilder<FavouriteProduct> _favouriteproducts;
  ListBuilder<FavouriteProduct> get favouriteproducts =>
      _$this._favouriteproducts ??= new ListBuilder<FavouriteProduct>();
  set favouriteproducts(ListBuilder<FavouriteProduct> favouriteproducts) =>
      _$this._favouriteproducts = favouriteproducts;

  ListBuilder<FavouriteStore> _favouritestores;
  ListBuilder<FavouriteStore> get favouritestores =>
      _$this._favouritestores ??= new ListBuilder<FavouriteStore>();
  set favouritestores(ListBuilder<FavouriteStore> favouritestores) =>
      _$this._favouritestores = favouritestores;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _idpCode;
  String get idpCode => _$this._idpCode;
  set idpCode(String idpCode) => _$this._idpCode = idpCode;

  String _idpSub;
  String get idpSub => _$this._idpSub;
  set idpSub(String idpSub) => _$this._idpSub = idpSub;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _imageContentType;
  String get imageContentType => _$this._imageContentType;
  set imageContentType(String imageContentType) =>
      _$this._imageContentType = imageContentType;

  String _imageLink;
  String get imageLink => _$this._imageLink;
  set imageLink(String imageLink) => _$this._imageLink = imageLink;

  int _loyaltyPoint;
  int get loyaltyPoint => _$this._loyaltyPoint;
  set loyaltyPoint(int loyaltyPoint) => _$this._loyaltyPoint = loyaltyPoint;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CustomerBuilder();

  CustomerBuilder get _$this {
    if (_$v != null) {
      _contact = _$v.contact?.toBuilder();
      _customerUniqueId = _$v.customerUniqueId;
      _favouriteproducts = _$v.favouriteproducts?.toBuilder();
      _favouritestores = _$v.favouritestores?.toBuilder();
      _id = _$v.id;
      _idpCode = _$v.idpCode;
      _idpSub = _$v.idpSub;
      _image = _$v.image;
      _imageContentType = _$v.imageContentType;
      _imageLink = _$v.imageLink;
      _loyaltyPoint = _$v.loyaltyPoint;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Customer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Customer;
  }

  @override
  void update(void Function(CustomerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Customer build() {
    _$Customer _$result;
    try {
      _$result = _$v ??
          new _$Customer._(
              contact: _contact?.build(),
              customerUniqueId: customerUniqueId,
              favouriteproducts: _favouriteproducts?.build(),
              favouritestores: _favouritestores?.build(),
              id: id,
              idpCode: idpCode,
              idpSub: idpSub,
              image: image,
              imageContentType: imageContentType,
              imageLink: imageLink,
              loyaltyPoint: loyaltyPoint,
              name: name);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contact';
        _contact?.build();

        _$failedField = 'favouriteproducts';
        _favouriteproducts?.build();
        _$failedField = 'favouritestores';
        _favouritestores?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Customer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
