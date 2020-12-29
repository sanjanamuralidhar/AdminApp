// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Store> _$storeSerializer = new _$StoreSerializer();

class _$StoreSerializer implements StructuredSerializer<Store> {
  @override
  final Iterable<Type> types = const [Store, _$Store];
  @override
  final String wireName = 'Store';

  @override
  Iterable<Object> serialize(Serializers serializers, Store object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.banners != null) {
      result
        ..add('banners')
        ..add(serializers.serialize(object.banners,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Banner)])));
    }
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
    if (object.deliveryInfos != null) {
      result
        ..add('deliveryInfos')
        ..add(serializers.serialize(object.deliveryInfos,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DeliveryInfo)])));
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
    if (object.preOrderSettings != null) {
      result
        ..add('preOrderSettings')
        ..add(serializers.serialize(object.preOrderSettings,
            specifiedType: const FullType(PreOrderSettings)));
    }
    if (object.regNo != null) {
      result
        ..add('regNo')
        ..add(serializers.serialize(object.regNo,
            specifiedType: const FullType(String)));
    }
    if (object.storeAddress != null) {
      result
        ..add('storeAddress')
        ..add(serializers.serialize(object.storeAddress,
            specifiedType: const FullType(StoreAddress)));
    }
    if (object.storeSettings != null) {
      result
        ..add('storeSettings')
        ..add(serializers.serialize(object.storeSettings,
            specifiedType: const FullType(StoreSettings)));
    }
    if (object.storeTypes != null) {
      result
        ..add('storeTypes')
        ..add(serializers.serialize(object.storeTypes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(StoreType)])));
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
    if (object.userRatingReviews != null) {
      result
        ..add('userRatingReviews')
        ..add(serializers.serialize(object.userRatingReviews,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UserRatingReview)])));
    }
    return result;
  }

  @override
  Store deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'banners':
          result.banners.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Banner)]))
              as BuiltList<Object>);
          break;
        case 'closingTime':
          result.closingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'contactNo':
          result.contactNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deliveryInfos':
          result.deliveryInfos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DeliveryInfo)]))
              as BuiltList<Object>);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
        case 'preOrderSettings':
          result.preOrderSettings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PreOrderSettings))
              as PreOrderSettings);
          break;
        case 'regNo':
          result.regNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storeAddress':
          result.storeAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(StoreAddress)) as StoreAddress);
          break;
        case 'storeSettings':
          result.storeSettings.replace(serializers.deserialize(value,
              specifiedType: const FullType(StoreSettings)) as StoreSettings);
          break;
        case 'storeTypes':
          result.storeTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StoreType)]))
              as BuiltList<Object>);
          break;
        case 'storeUniqueId':
          result.storeUniqueId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalRating':
          result.totalRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'userRatingReviews':
          result.userRatingReviews.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UserRatingReview)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Store extends Store {
  @override
  final BuiltList<Banner> banners;
  @override
  final DateTime closingTime;
  @override
  final int contactNo;
  @override
  final BuiltList<DeliveryInfo> deliveryInfos;
  @override
  final String email;
  @override
  final int id;
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
  final PreOrderSettings preOrderSettings;
  @override
  final String regNo;
  @override
  final StoreAddress storeAddress;
  @override
  final StoreSettings storeSettings;
  @override
  final BuiltList<StoreType> storeTypes;
  @override
  final String storeUniqueId;
  @override
  final double totalRating;
  @override
  final BuiltList<UserRatingReview> userRatingReviews;

  factory _$Store([void Function(StoreBuilder) updates]) =>
      (new StoreBuilder()..update(updates)).build();

  _$Store._(
      {this.banners,
      this.closingTime,
      this.contactNo,
      this.deliveryInfos,
      this.email,
      this.id,
      this.imageLink,
      this.info,
      this.location,
      this.locationName,
      this.maxDeliveryTime,
      this.minAmount,
      this.name,
      this.openingTime,
      this.preOrderSettings,
      this.regNo,
      this.storeAddress,
      this.storeSettings,
      this.storeTypes,
      this.storeUniqueId,
      this.totalRating,
      this.userRatingReviews})
      : super._();

  @override
  Store rebuild(void Function(StoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreBuilder toBuilder() => new StoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Store &&
        banners == other.banners &&
        closingTime == other.closingTime &&
        contactNo == other.contactNo &&
        deliveryInfos == other.deliveryInfos &&
        email == other.email &&
        id == other.id &&
        imageLink == other.imageLink &&
        info == other.info &&
        location == other.location &&
        locationName == other.locationName &&
        maxDeliveryTime == other.maxDeliveryTime &&
        minAmount == other.minAmount &&
        name == other.name &&
        openingTime == other.openingTime &&
        preOrderSettings == other.preOrderSettings &&
        regNo == other.regNo &&
        storeAddress == other.storeAddress &&
        storeSettings == other.storeSettings &&
        storeTypes == other.storeTypes &&
        storeUniqueId == other.storeUniqueId &&
        totalRating == other.totalRating &&
        userRatingReviews == other.userRatingReviews;
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
                                                                            $jc($jc($jc($jc(0, banners.hashCode), closingTime.hashCode), contactNo.hashCode),
                                                                                deliveryInfos.hashCode),
                                                                            email.hashCode),
                                                                        id.hashCode),
                                                                    imageLink.hashCode),
                                                                info.hashCode),
                                                            location.hashCode),
                                                        locationName.hashCode),
                                                    maxDeliveryTime.hashCode),
                                                minAmount.hashCode),
                                            name.hashCode),
                                        openingTime.hashCode),
                                    preOrderSettings.hashCode),
                                regNo.hashCode),
                            storeAddress.hashCode),
                        storeSettings.hashCode),
                    storeTypes.hashCode),
                storeUniqueId.hashCode),
            totalRating.hashCode),
        userRatingReviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Store')
          ..add('banners', banners)
          ..add('closingTime', closingTime)
          ..add('contactNo', contactNo)
          ..add('deliveryInfos', deliveryInfos)
          ..add('email', email)
          ..add('id', id)
          ..add('imageLink', imageLink)
          ..add('info', info)
          ..add('location', location)
          ..add('locationName', locationName)
          ..add('maxDeliveryTime', maxDeliveryTime)
          ..add('minAmount', minAmount)
          ..add('name', name)
          ..add('openingTime', openingTime)
          ..add('preOrderSettings', preOrderSettings)
          ..add('regNo', regNo)
          ..add('storeAddress', storeAddress)
          ..add('storeSettings', storeSettings)
          ..add('storeTypes', storeTypes)
          ..add('storeUniqueId', storeUniqueId)
          ..add('totalRating', totalRating)
          ..add('userRatingReviews', userRatingReviews))
        .toString();
  }
}

class StoreBuilder implements Builder<Store, StoreBuilder> {
  _$Store _$v;

  ListBuilder<Banner> _banners;
  ListBuilder<Banner> get banners =>
      _$this._banners ??= new ListBuilder<Banner>();
  set banners(ListBuilder<Banner> banners) => _$this._banners = banners;

  DateTime _closingTime;
  DateTime get closingTime => _$this._closingTime;
  set closingTime(DateTime closingTime) => _$this._closingTime = closingTime;

  int _contactNo;
  int get contactNo => _$this._contactNo;
  set contactNo(int contactNo) => _$this._contactNo = contactNo;

  ListBuilder<DeliveryInfo> _deliveryInfos;
  ListBuilder<DeliveryInfo> get deliveryInfos =>
      _$this._deliveryInfos ??= new ListBuilder<DeliveryInfo>();
  set deliveryInfos(ListBuilder<DeliveryInfo> deliveryInfos) =>
      _$this._deliveryInfos = deliveryInfos;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  PreOrderSettingsBuilder _preOrderSettings;
  PreOrderSettingsBuilder get preOrderSettings =>
      _$this._preOrderSettings ??= new PreOrderSettingsBuilder();
  set preOrderSettings(PreOrderSettingsBuilder preOrderSettings) =>
      _$this._preOrderSettings = preOrderSettings;

  String _regNo;
  String get regNo => _$this._regNo;
  set regNo(String regNo) => _$this._regNo = regNo;

  StoreAddressBuilder _storeAddress;
  StoreAddressBuilder get storeAddress =>
      _$this._storeAddress ??= new StoreAddressBuilder();
  set storeAddress(StoreAddressBuilder storeAddress) =>
      _$this._storeAddress = storeAddress;

  StoreSettingsBuilder _storeSettings;
  StoreSettingsBuilder get storeSettings =>
      _$this._storeSettings ??= new StoreSettingsBuilder();
  set storeSettings(StoreSettingsBuilder storeSettings) =>
      _$this._storeSettings = storeSettings;

  ListBuilder<StoreType> _storeTypes;
  ListBuilder<StoreType> get storeTypes =>
      _$this._storeTypes ??= new ListBuilder<StoreType>();
  set storeTypes(ListBuilder<StoreType> storeTypes) =>
      _$this._storeTypes = storeTypes;

  String _storeUniqueId;
  String get storeUniqueId => _$this._storeUniqueId;
  set storeUniqueId(String storeUniqueId) =>
      _$this._storeUniqueId = storeUniqueId;

  double _totalRating;
  double get totalRating => _$this._totalRating;
  set totalRating(double totalRating) => _$this._totalRating = totalRating;

  ListBuilder<UserRatingReview> _userRatingReviews;
  ListBuilder<UserRatingReview> get userRatingReviews =>
      _$this._userRatingReviews ??= new ListBuilder<UserRatingReview>();
  set userRatingReviews(ListBuilder<UserRatingReview> userRatingReviews) =>
      _$this._userRatingReviews = userRatingReviews;

  StoreBuilder();

  StoreBuilder get _$this {
    if (_$v != null) {
      _banners = _$v.banners?.toBuilder();
      _closingTime = _$v.closingTime;
      _contactNo = _$v.contactNo;
      _deliveryInfos = _$v.deliveryInfos?.toBuilder();
      _email = _$v.email;
      _id = _$v.id;
      _imageLink = _$v.imageLink;
      _info = _$v.info;
      _location = _$v.location;
      _locationName = _$v.locationName;
      _maxDeliveryTime = _$v.maxDeliveryTime;
      _minAmount = _$v.minAmount;
      _name = _$v.name;
      _openingTime = _$v.openingTime;
      _preOrderSettings = _$v.preOrderSettings?.toBuilder();
      _regNo = _$v.regNo;
      _storeAddress = _$v.storeAddress?.toBuilder();
      _storeSettings = _$v.storeSettings?.toBuilder();
      _storeTypes = _$v.storeTypes?.toBuilder();
      _storeUniqueId = _$v.storeUniqueId;
      _totalRating = _$v.totalRating;
      _userRatingReviews = _$v.userRatingReviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Store other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Store;
  }

  @override
  void update(void Function(StoreBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Store build() {
    _$Store _$result;
    try {
      _$result = _$v ??
          new _$Store._(
              banners: _banners?.build(),
              closingTime: closingTime,
              contactNo: contactNo,
              deliveryInfos: _deliveryInfos?.build(),
              email: email,
              id: id,
              imageLink: imageLink,
              info: info,
              location: location,
              locationName: locationName,
              maxDeliveryTime: maxDeliveryTime,
              minAmount: minAmount,
              name: name,
              openingTime: openingTime,
              preOrderSettings: _preOrderSettings?.build(),
              regNo: regNo,
              storeAddress: _storeAddress?.build(),
              storeSettings: _storeSettings?.build(),
              storeTypes: _storeTypes?.build(),
              storeUniqueId: storeUniqueId,
              totalRating: totalRating,
              userRatingReviews: _userRatingReviews?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'banners';
        _banners?.build();

        _$failedField = 'deliveryInfos';
        _deliveryInfos?.build();

        _$failedField = 'preOrderSettings';
        _preOrderSettings?.build();

        _$failedField = 'storeAddress';
        _storeAddress?.build();
        _$failedField = 'storeSettings';
        _storeSettings?.build();
        _$failedField = 'storeTypes';
        _storeTypes?.build();

        _$failedField = 'userRatingReviews';
        _userRatingReviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Store', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
