// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BannerDTO> _$bannerDTOSerializer = new _$BannerDTOSerializer();

class _$BannerDTOSerializer implements StructuredSerializer<BannerDTO> {
  @override
  final Iterable<Type> types = const [BannerDTO, _$BannerDTO];
  @override
  final String wireName = 'BannerDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, BannerDTO object,
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
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
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
    if (object.storeId != null) {
      result
        ..add('storeId')
        ..add(serializers.serialize(object.storeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BannerDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BannerDTOBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageLink':
          result.imageLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$BannerDTO extends BannerDTO {
  @override
  final double cost;
  @override
  final DateTime expiryDate;
  @override
  final int id;
  @override
  final String image;
  @override
  final String imageLink;
  @override
  final DateTime startDate;
  @override
  final String storeId;

  factory _$BannerDTO([void Function(BannerDTOBuilder) updates]) =>
      (new BannerDTOBuilder()..update(updates)).build();

  _$BannerDTO._(
      {this.cost,
      this.expiryDate,
      this.id,
      this.image,
      this.imageLink,
      this.startDate,
      this.storeId})
      : super._();

  @override
  BannerDTO rebuild(void Function(BannerDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BannerDTOBuilder toBuilder() => new BannerDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BannerDTO &&
        cost == other.cost &&
        expiryDate == other.expiryDate &&
        id == other.id &&
        image == other.image &&
        imageLink == other.imageLink &&
        startDate == other.startDate &&
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
                    image.hashCode),
                imageLink.hashCode),
            startDate.hashCode),
        storeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BannerDTO')
          ..add('cost', cost)
          ..add('expiryDate', expiryDate)
          ..add('id', id)
          ..add('image', image)
          ..add('imageLink', imageLink)
          ..add('startDate', startDate)
          ..add('storeId', storeId))
        .toString();
  }
}

class BannerDTOBuilder implements Builder<BannerDTO, BannerDTOBuilder> {
  _$BannerDTO _$v;

  double _cost;
  double get cost => _$this._cost;
  set cost(double cost) => _$this._cost = cost;

  DateTime _expiryDate;
  DateTime get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime expiryDate) => _$this._expiryDate = expiryDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _imageLink;
  String get imageLink => _$this._imageLink;
  set imageLink(String imageLink) => _$this._imageLink = imageLink;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  BannerDTOBuilder();

  BannerDTOBuilder get _$this {
    if (_$v != null) {
      _cost = _$v.cost;
      _expiryDate = _$v.expiryDate;
      _id = _$v.id;
      _image = _$v.image;
      _imageLink = _$v.imageLink;
      _startDate = _$v.startDate;
      _storeId = _$v.storeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BannerDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BannerDTO;
  }

  @override
  void update(void Function(BannerDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BannerDTO build() {
    final _$result = _$v ??
        new _$BannerDTO._(
            cost: cost,
            expiryDate: expiryDate,
            id: id,
            image: image,
            imageLink: imageLink,
            startDate: startDate,
            storeId: storeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
