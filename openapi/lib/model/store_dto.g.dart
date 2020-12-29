// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreDTO> _$storeDTOSerializer = new _$StoreDTOSerializer();

class _$StoreDTOSerializer implements StructuredSerializer<StoreDTO> {
  @override
  final Iterable<Type> types = const [StoreDTO, _$StoreDTO];
  @override
  final String wireName = 'StoreDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.closingTime != null) {
      result
        ..add('closingTime')
        ..add(serializers.serialize(object.closingTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.contactNo != null) {
      result
        ..add('contactNo')
        ..add(serializers.serialize(object.contactNo,
            specifiedType: const FullType(int)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
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
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.locationName != null) {
      result
        ..add('locationName')
        ..add(serializers.serialize(object.locationName,
            specifiedType: const FullType(String)));
    }
    if (object.maxDeliveryTime != null) {
      result
        ..add('maxDeliveryTime')
        ..add(serializers.serialize(object.maxDeliveryTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.minAmount != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(object.minAmount,
            specifiedType: const FullType(double)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.openingTime != null) {
      result
        ..add('openingTime')
        ..add(serializers.serialize(object.openingTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.preOrderSettingsId != null) {
      result
        ..add('preOrderSettingsId')
        ..add(serializers.serialize(object.preOrderSettingsId,
            specifiedType: const FullType(int)));
    }
    if (object.propreitorId != null) {
      result
        ..add('propreitorId')
        ..add(serializers.serialize(object.propreitorId,
            specifiedType: const FullType(int)));
    }
    if (object.regNo != null) {
      result
        ..add('regNo')
        ..add(serializers.serialize(object.regNo,
            specifiedType: const FullType(String)));
    }
    if (object.storeAddressId != null) {
      result
        ..add('storeAddressId')
        ..add(serializers.serialize(object.storeAddressId,
            specifiedType: const FullType(int)));
    }
    if (object.storeSettingsId != null) {
      result
        ..add('storeSettingsId')
        ..add(serializers.serialize(object.storeSettingsId,
            specifiedType: const FullType(int)));
    }
    if (object.storeUniqueId != null) {
      result
        ..add('storeUniqueId')
        ..add(serializers.serialize(object.storeUniqueId,
            specifiedType: const FullType(String)));
    }
    if (object.totalRating != null) {
      result
        ..add('totalRating')
        ..add(serializers.serialize(object.totalRating,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  StoreDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'closingTime':
          result.closingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'contactNo':
          result.contactNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locationName':
          result.locationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxDeliveryTime':
          result.maxDeliveryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'openingTime':
          result.openingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'preOrderSettingsId':
          result.preOrderSettingsId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'propreitorId':
          result.propreitorId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'regNo':
          result.regNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storeAddressId':
          result.storeAddressId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'storeSettingsId':
          result.storeSettingsId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'storeUniqueId':
          result.storeUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalRating':
          result.totalRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$StoreDTO extends StoreDTO {
  @override
  final DateTime closingTime;
  @override
  final int contactNo;
  @override
  final String email;
  @override
  final int id;
  @override
  final String image;
  @override
  final String imageContentType;
  @override
  final String imageLink;
  @override
  final String info;
  @override
  final String location;
  @override
  final String locationName;
  @override
  final DateTime maxDeliveryTime;
  @override
  final double minAmount;
  @override
  final String name;
  @override
  final DateTime openingTime;
  @override
  final int preOrderSettingsId;
  @override
  final int propreitorId;
  @override
  final String regNo;
  @override
  final int storeAddressId;
  @override
  final int storeSettingsId;
  @override
  final String storeUniqueId;
  @override
  final double totalRating;

  factory _$StoreDTO([void Function(StoreDTOBuilder) updates]) =>
      (new StoreDTOBuilder()..update(updates)).build();

  _$StoreDTO._(
      {this.closingTime,
      this.contactNo,
      this.email,
      this.id,
      this.image,
      this.imageContentType,
      this.imageLink,
      this.info,
      this.location,
      this.locationName,
      this.maxDeliveryTime,
      this.minAmount,
      this.name,
      this.openingTime,
      this.preOrderSettingsId,
      this.propreitorId,
      this.regNo,
      this.storeAddressId,
      this.storeSettingsId,
      this.storeUniqueId,
      this.totalRating})
      : super._();

  @override
  StoreDTO rebuild(void Function(StoreDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreDTOBuilder toBuilder() => new StoreDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreDTO &&
        closingTime == other.closingTime &&
        contactNo == other.contactNo &&
        email == other.email &&
        id == other.id &&
        image == other.image &&
        imageContentType == other.imageContentType &&
        imageLink == other.imageLink &&
        info == other.info &&
        location == other.location &&
        locationName == other.locationName &&
        maxDeliveryTime == other.maxDeliveryTime &&
        minAmount == other.minAmount &&
        name == other.name &&
        openingTime == other.openingTime &&
        preOrderSettingsId == other.preOrderSettingsId &&
        propreitorId == other.propreitorId &&
        regNo == other.regNo &&
        storeAddressId == other.storeAddressId &&
        storeSettingsId == other.storeSettingsId &&
        storeUniqueId == other.storeUniqueId &&
        totalRating == other.totalRating;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, closingTime.hashCode), contactNo.hashCode),
                                                                                email.hashCode),
                                                                            id.hashCode),
                                                                        image.hashCode),
                                                                    imageContentType.hashCode),
                                                                imageLink.hashCode),
                                                            info.hashCode),
                                                        location.hashCode),
                                                    locationName.hashCode),
                                                maxDeliveryTime.hashCode),
                                            minAmount.hashCode),
                                        name.hashCode),
                                    openingTime.hashCode),
                                preOrderSettingsId.hashCode),
                            propreitorId.hashCode),
                        regNo.hashCode),
                    storeAddressId.hashCode),
                storeSettingsId.hashCode),
            storeUniqueId.hashCode),
        totalRating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreDTO')
          ..add('closingTime', closingTime)
          ..add('contactNo', contactNo)
          ..add('email', email)
          ..add('id', id)
          ..add('image', image)
          ..add('imageContentType', imageContentType)
          ..add('imageLink', imageLink)
          ..add('info', info)
          ..add('location', location)
          ..add('locationName', locationName)
          ..add('maxDeliveryTime', maxDeliveryTime)
          ..add('minAmount', minAmount)
          ..add('name', name)
          ..add('openingTime', openingTime)
          ..add('preOrderSettingsId', preOrderSettingsId)
          ..add('propreitorId', propreitorId)
          ..add('regNo', regNo)
          ..add('storeAddressId', storeAddressId)
          ..add('storeSettingsId', storeSettingsId)
          ..add('storeUniqueId', storeUniqueId)
          ..add('totalRating', totalRating))
        .toString();
  }
}

class StoreDTOBuilder implements Builder<StoreDTO, StoreDTOBuilder> {
  _$StoreDTO _$v;

  DateTime _closingTime;
  DateTime get closingTime => _$this._closingTime;
  set closingTime(DateTime closingTime) => _$this._closingTime = closingTime;

  int _contactNo;
  int get contactNo => _$this._contactNo;
  set contactNo(int contactNo) => _$this._contactNo = contactNo;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  String _info;
  String get info => _$this._info;
  set info(String info) => _$this._info = info;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _locationName;
  String get locationName => _$this._locationName;
  set locationName(String locationName) => _$this._locationName = locationName;

  DateTime _maxDeliveryTime;
  DateTime get maxDeliveryTime => _$this._maxDeliveryTime;
  set maxDeliveryTime(DateTime maxDeliveryTime) =>
      _$this._maxDeliveryTime = maxDeliveryTime;

  double _minAmount;
  double get minAmount => _$this._minAmount;
  set minAmount(double minAmount) => _$this._minAmount = minAmount;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _openingTime;
  DateTime get openingTime => _$this._openingTime;
  set openingTime(DateTime openingTime) => _$this._openingTime = openingTime;

  int _preOrderSettingsId;
  int get preOrderSettingsId => _$this._preOrderSettingsId;
  set preOrderSettingsId(int preOrderSettingsId) =>
      _$this._preOrderSettingsId = preOrderSettingsId;

  int _propreitorId;
  int get propreitorId => _$this._propreitorId;
  set propreitorId(int propreitorId) => _$this._propreitorId = propreitorId;

  String _regNo;
  String get regNo => _$this._regNo;
  set regNo(String regNo) => _$this._regNo = regNo;

  int _storeAddressId;
  int get storeAddressId => _$this._storeAddressId;
  set storeAddressId(int storeAddressId) =>
      _$this._storeAddressId = storeAddressId;

  int _storeSettingsId;
  int get storeSettingsId => _$this._storeSettingsId;
  set storeSettingsId(int storeSettingsId) =>
      _$this._storeSettingsId = storeSettingsId;

  String _storeUniqueId;
  String get storeUniqueId => _$this._storeUniqueId;
  set storeUniqueId(String storeUniqueId) =>
      _$this._storeUniqueId = storeUniqueId;

  double _totalRating;
  double get totalRating => _$this._totalRating;
  set totalRating(double totalRating) => _$this._totalRating = totalRating;

  StoreDTOBuilder();

  StoreDTOBuilder get _$this {
    if (_$v != null) {
      _closingTime = _$v.closingTime;
      _contactNo = _$v.contactNo;
      _email = _$v.email;
      _id = _$v.id;
      _image = _$v.image;
      _imageContentType = _$v.imageContentType;
      _imageLink = _$v.imageLink;
      _info = _$v.info;
      _location = _$v.location;
      _locationName = _$v.locationName;
      _maxDeliveryTime = _$v.maxDeliveryTime;
      _minAmount = _$v.minAmount;
      _name = _$v.name;
      _openingTime = _$v.openingTime;
      _preOrderSettingsId = _$v.preOrderSettingsId;
      _propreitorId = _$v.propreitorId;
      _regNo = _$v.regNo;
      _storeAddressId = _$v.storeAddressId;
      _storeSettingsId = _$v.storeSettingsId;
      _storeUniqueId = _$v.storeUniqueId;
      _totalRating = _$v.totalRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StoreDTO;
  }

  @override
  void update(void Function(StoreDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreDTO build() {
    final _$result = _$v ??
        new _$StoreDTO._(
            closingTime: closingTime,
            contactNo: contactNo,
            email: email,
            id: id,
            image: image,
            imageContentType: imageContentType,
            imageLink: imageLink,
            info: info,
            location: location,
            locationName: locationName,
            maxDeliveryTime: maxDeliveryTime,
            minAmount: minAmount,
            name: name,
            openingTime: openingTime,
            preOrderSettingsId: preOrderSettingsId,
            propreitorId: propreitorId,
            regNo: regNo,
            storeAddressId: storeAddressId,
            storeSettingsId: storeSettingsId,
            storeUniqueId: storeUniqueId,
            totalRating: totalRating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
