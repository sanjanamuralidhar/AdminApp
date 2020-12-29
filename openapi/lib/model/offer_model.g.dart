// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfferModel> _$offerModelSerializer = new _$OfferModelSerializer();

class _$OfferModelSerializer implements StructuredSerializer<OfferModel> {
  @override
  final Iterable<Type> types = const [OfferModel, _$OfferModel];
  @override
  final String wireName = 'OfferModel';

  @override
  Iterable<Object> serialize(Serializers serializers, OfferModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.deductionValue != null) {
      result
        ..add('deductionValue')
        ..add(serializers.serialize(object.deductionValue,
            specifiedType: const FullType(int)));
    }
    if (object.deductionValueTypeId != null) {
      result
        ..add('deduction_value_type_id')
        ..add(serializers.serialize(object.deductionValueTypeId,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.endDate != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(object.endDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.prerequisiteOrderNumber != null) {
      result
        ..add('prerequisiteOrderNumber')
        ..add(serializers.serialize(object.prerequisiteOrderNumber,
            specifiedType: const FullType(int)));
    }
    if (object.promoCode != null) {
      result
        ..add('promoCode')
        ..add(serializers.serialize(object.promoCode,
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
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  OfferModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfferModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deductionValue':
          result.deductionValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deduction_value_type_id':
          result.deductionValueTypeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prerequisiteOrderNumber':
          result.prerequisiteOrderNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'promoCode':
          result.promoCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$OfferModel extends OfferModel {
  @override
  final int deductionValue;
  @override
  final int deductionValueTypeId;
  @override
  final String description;
  @override
  final DateTime endDate;
  @override
  final int id;
  @override
  final int prerequisiteOrderNumber;
  @override
  final String promoCode;
  @override
  final DateTime startDate;
  @override
  final int storeId;

  factory _$OfferModel([void Function(OfferModelBuilder) updates]) =>
      (new OfferModelBuilder()..update(updates)).build();

  _$OfferModel._(
      {this.deductionValue,
      this.deductionValueTypeId,
      this.description,
      this.endDate,
      this.id,
      this.prerequisiteOrderNumber,
      this.promoCode,
      this.startDate,
      this.storeId})
      : super._();

  @override
  OfferModel rebuild(void Function(OfferModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfferModelBuilder toBuilder() => new OfferModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfferModel &&
        deductionValue == other.deductionValue &&
        deductionValueTypeId == other.deductionValueTypeId &&
        description == other.description &&
        endDate == other.endDate &&
        id == other.id &&
        prerequisiteOrderNumber == other.prerequisiteOrderNumber &&
        promoCode == other.promoCode &&
        startDate == other.startDate &&
        storeId == other.storeId;
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
                                $jc($jc(0, deductionValue.hashCode),
                                    deductionValueTypeId.hashCode),
                                description.hashCode),
                            endDate.hashCode),
                        id.hashCode),
                    prerequisiteOrderNumber.hashCode),
                promoCode.hashCode),
            startDate.hashCode),
        storeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OfferModel')
          ..add('deductionValue', deductionValue)
          ..add('deductionValueTypeId', deductionValueTypeId)
          ..add('description', description)
          ..add('endDate', endDate)
          ..add('id', id)
          ..add('prerequisiteOrderNumber', prerequisiteOrderNumber)
          ..add('promoCode', promoCode)
          ..add('startDate', startDate)
          ..add('storeId', storeId))
        .toString();
  }
}

class OfferModelBuilder implements Builder<OfferModel, OfferModelBuilder> {
  _$OfferModel _$v;

  int _deductionValue;
  int get deductionValue => _$this._deductionValue;
  set deductionValue(int deductionValue) =>
      _$this._deductionValue = deductionValue;

  int _deductionValueTypeId;
  int get deductionValueTypeId => _$this._deductionValueTypeId;
  set deductionValueTypeId(int deductionValueTypeId) =>
      _$this._deductionValueTypeId = deductionValueTypeId;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _prerequisiteOrderNumber;
  int get prerequisiteOrderNumber => _$this._prerequisiteOrderNumber;
  set prerequisiteOrderNumber(int prerequisiteOrderNumber) =>
      _$this._prerequisiteOrderNumber = prerequisiteOrderNumber;

  String _promoCode;
  String get promoCode => _$this._promoCode;
  set promoCode(String promoCode) => _$this._promoCode = promoCode;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  int _storeId;
  int get storeId => _$this._storeId;
  set storeId(int storeId) => _$this._storeId = storeId;

  OfferModelBuilder();

  OfferModelBuilder get _$this {
    if (_$v != null) {
      _deductionValue = _$v.deductionValue;
      _deductionValueTypeId = _$v.deductionValueTypeId;
      _description = _$v.description;
      _endDate = _$v.endDate;
      _id = _$v.id;
      _prerequisiteOrderNumber = _$v.prerequisiteOrderNumber;
      _promoCode = _$v.promoCode;
      _startDate = _$v.startDate;
      _storeId = _$v.storeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfferModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OfferModel;
  }

  @override
  void update(void Function(OfferModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OfferModel build() {
    final _$result = _$v ??
        new _$OfferModel._(
            deductionValue: deductionValue,
            deductionValueTypeId: deductionValueTypeId,
            description: description,
            endDate: endDate,
            id: id,
            prerequisiteOrderNumber: prerequisiteOrderNumber,
            promoCode: promoCode,
            startDate: startDate,
            storeId: storeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
