// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfferDTO> _$offerDTOSerializer = new _$OfferDTOSerializer();

class _$OfferDTOSerializer implements StructuredSerializer<OfferDTO> {
  @override
  final Iterable<Type> types = const [OfferDTO, _$OfferDTO];
  @override
  final String wireName = 'OfferDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, OfferDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(object.createdDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.orderRuleId != null) {
      result
        ..add('orderRuleId')
        ..add(serializers.serialize(object.orderRuleId,
            specifiedType: const FullType(int)));
    }
    if (object.paymentRuleId != null) {
      result
        ..add('paymentRuleId')
        ..add(serializers.serialize(object.paymentRuleId,
            specifiedType: const FullType(int)));
    }
    if (object.priceRuleId != null) {
      result
        ..add('priceRuleId')
        ..add(serializers.serialize(object.priceRuleId,
            specifiedType: const FullType(int)));
    }
    if (object.promoCode != null) {
      result
        ..add('promoCode')
        ..add(serializers.serialize(object.promoCode,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.updatedDate != null) {
      result
        ..add('updatedDate')
        ..add(serializers.serialize(object.updatedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.usageCount != null) {
      result
        ..add('usageCount')
        ..add(serializers.serialize(object.usageCount,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  OfferDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfferDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderRuleId':
          result.orderRuleId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'paymentRuleId':
          result.paymentRuleId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'priceRuleId':
          result.priceRuleId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'promoCode':
          result.promoCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedDate':
          result.updatedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'usageCount':
          result.usageCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OfferDTO extends OfferDTO {
  @override
  final DateTime createdDate;
  @override
  final String description;
  @override
  final int id;
  @override
  final int orderRuleId;
  @override
  final int paymentRuleId;
  @override
  final int priceRuleId;
  @override
  final String promoCode;
  @override
  final String title;
  @override
  final DateTime updatedDate;
  @override
  final int usageCount;

  factory _$OfferDTO([void Function(OfferDTOBuilder) updates]) =>
      (new OfferDTOBuilder()..update(updates)).build();

  _$OfferDTO._(
      {this.createdDate,
      this.description,
      this.id,
      this.orderRuleId,
      this.paymentRuleId,
      this.priceRuleId,
      this.promoCode,
      this.title,
      this.updatedDate,
      this.usageCount})
      : super._();

  @override
  OfferDTO rebuild(void Function(OfferDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfferDTOBuilder toBuilder() => new OfferDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfferDTO &&
        createdDate == other.createdDate &&
        description == other.description &&
        id == other.id &&
        orderRuleId == other.orderRuleId &&
        paymentRuleId == other.paymentRuleId &&
        priceRuleId == other.priceRuleId &&
        promoCode == other.promoCode &&
        title == other.title &&
        updatedDate == other.updatedDate &&
        usageCount == other.usageCount;
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
                                    $jc($jc(0, createdDate.hashCode),
                                        description.hashCode),
                                    id.hashCode),
                                orderRuleId.hashCode),
                            paymentRuleId.hashCode),
                        priceRuleId.hashCode),
                    promoCode.hashCode),
                title.hashCode),
            updatedDate.hashCode),
        usageCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OfferDTO')
          ..add('createdDate', createdDate)
          ..add('description', description)
          ..add('id', id)
          ..add('orderRuleId', orderRuleId)
          ..add('paymentRuleId', paymentRuleId)
          ..add('priceRuleId', priceRuleId)
          ..add('promoCode', promoCode)
          ..add('title', title)
          ..add('updatedDate', updatedDate)
          ..add('usageCount', usageCount))
        .toString();
  }
}

class OfferDTOBuilder implements Builder<OfferDTO, OfferDTOBuilder> {
  _$OfferDTO _$v;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _orderRuleId;
  int get orderRuleId => _$this._orderRuleId;
  set orderRuleId(int orderRuleId) => _$this._orderRuleId = orderRuleId;

  int _paymentRuleId;
  int get paymentRuleId => _$this._paymentRuleId;
  set paymentRuleId(int paymentRuleId) => _$this._paymentRuleId = paymentRuleId;

  int _priceRuleId;
  int get priceRuleId => _$this._priceRuleId;
  set priceRuleId(int priceRuleId) => _$this._priceRuleId = priceRuleId;

  String _promoCode;
  String get promoCode => _$this._promoCode;
  set promoCode(String promoCode) => _$this._promoCode = promoCode;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  DateTime _updatedDate;
  DateTime get updatedDate => _$this._updatedDate;
  set updatedDate(DateTime updatedDate) => _$this._updatedDate = updatedDate;

  int _usageCount;
  int get usageCount => _$this._usageCount;
  set usageCount(int usageCount) => _$this._usageCount = usageCount;

  OfferDTOBuilder();

  OfferDTOBuilder get _$this {
    if (_$v != null) {
      _createdDate = _$v.createdDate;
      _description = _$v.description;
      _id = _$v.id;
      _orderRuleId = _$v.orderRuleId;
      _paymentRuleId = _$v.paymentRuleId;
      _priceRuleId = _$v.priceRuleId;
      _promoCode = _$v.promoCode;
      _title = _$v.title;
      _updatedDate = _$v.updatedDate;
      _usageCount = _$v.usageCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfferDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OfferDTO;
  }

  @override
  void update(void Function(OfferDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OfferDTO build() {
    final _$result = _$v ??
        new _$OfferDTO._(
            createdDate: createdDate,
            description: description,
            id: id,
            orderRuleId: orderRuleId,
            paymentRuleId: paymentRuleId,
            priceRuleId: priceRuleId,
            promoCode: promoCode,
            title: title,
            updatedDate: updatedDate,
            usageCount: usageCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
