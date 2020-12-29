// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreAddress> _$storeAddressSerializer =
    new _$StoreAddressSerializer();

class _$StoreAddressSerializer implements StructuredSerializer<StoreAddress> {
  @override
  final Iterable<Type> types = const [StoreAddress, _$StoreAddress];
  @override
  final String wireName = 'StoreAddress';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressType != null) {
      result
        ..add('addressType')
        ..add(serializers.serialize(object.addressType,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.houseNoOrBuildingName != null) {
      result
        ..add('houseNoOrBuildingName')
        ..add(serializers.serialize(object.houseNoOrBuildingName,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.landmark != null) {
      result
        ..add('landmark')
        ..add(serializers.serialize(object.landmark,
            specifiedType: const FullType(String)));
    }
    if (object.pincode != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(object.pincode,
            specifiedType: const FullType(String)));
    }
    if (object.roadNameAreaOrStreet != null) {
      result
        ..add('roadNameAreaOrStreet')
        ..add(serializers.serialize(object.roadNameAreaOrStreet,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StoreAddress deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreAddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressType':
          result.addressType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'houseNoOrBuildingName':
          result.houseNoOrBuildingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'landmark':
          result.landmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roadNameAreaOrStreet':
          result.roadNameAreaOrStreet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StoreAddress extends StoreAddress {
  @override
  final String addressType;
  @override
  final String city;
  @override
  final String houseNoOrBuildingName;
  @override
  final int id;
  @override
  final String landmark;
  @override
  final String pincode;
  @override
  final String roadNameAreaOrStreet;
  @override
  final String state;

  factory _$StoreAddress([void Function(StoreAddressBuilder) updates]) =>
      (new StoreAddressBuilder()..update(updates)).build();

  _$StoreAddress._(
      {this.addressType,
      this.city,
      this.houseNoOrBuildingName,
      this.id,
      this.landmark,
      this.pincode,
      this.roadNameAreaOrStreet,
      this.state})
      : super._();

  @override
  StoreAddress rebuild(void Function(StoreAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreAddressBuilder toBuilder() => new StoreAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreAddress &&
        addressType == other.addressType &&
        city == other.city &&
        houseNoOrBuildingName == other.houseNoOrBuildingName &&
        id == other.id &&
        landmark == other.landmark &&
        pincode == other.pincode &&
        roadNameAreaOrStreet == other.roadNameAreaOrStreet &&
        state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, addressType.hashCode), city.hashCode),
                            houseNoOrBuildingName.hashCode),
                        id.hashCode),
                    landmark.hashCode),
                pincode.hashCode),
            roadNameAreaOrStreet.hashCode),
        state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreAddress')
          ..add('addressType', addressType)
          ..add('city', city)
          ..add('houseNoOrBuildingName', houseNoOrBuildingName)
          ..add('id', id)
          ..add('landmark', landmark)
          ..add('pincode', pincode)
          ..add('roadNameAreaOrStreet', roadNameAreaOrStreet)
          ..add('state', state))
        .toString();
  }
}

class StoreAddressBuilder
    implements Builder<StoreAddress, StoreAddressBuilder> {
  _$StoreAddress _$v;

  String _addressType;
  String get addressType => _$this._addressType;
  set addressType(String addressType) => _$this._addressType = addressType;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _houseNoOrBuildingName;
  String get houseNoOrBuildingName => _$this._houseNoOrBuildingName;
  set houseNoOrBuildingName(String houseNoOrBuildingName) =>
      _$this._houseNoOrBuildingName = houseNoOrBuildingName;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _landmark;
  String get landmark => _$this._landmark;
  set landmark(String landmark) => _$this._landmark = landmark;

  String _pincode;
  String get pincode => _$this._pincode;
  set pincode(String pincode) => _$this._pincode = pincode;

  String _roadNameAreaOrStreet;
  String get roadNameAreaOrStreet => _$this._roadNameAreaOrStreet;
  set roadNameAreaOrStreet(String roadNameAreaOrStreet) =>
      _$this._roadNameAreaOrStreet = roadNameAreaOrStreet;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  StoreAddressBuilder();

  StoreAddressBuilder get _$this {
    if (_$v != null) {
      _addressType = _$v.addressType;
      _city = _$v.city;
      _houseNoOrBuildingName = _$v.houseNoOrBuildingName;
      _id = _$v.id;
      _landmark = _$v.landmark;
      _pincode = _$v.pincode;
      _roadNameAreaOrStreet = _$v.roadNameAreaOrStreet;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreAddress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StoreAddress;
  }

  @override
  void update(void Function(StoreAddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreAddress build() {
    final _$result = _$v ??
        new _$StoreAddress._(
            addressType: addressType,
            city: city,
            houseNoOrBuildingName: houseNoOrBuildingName,
            id: id,
            landmark: landmark,
            pincode: pincode,
            roadNameAreaOrStreet: roadNameAreaOrStreet,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
