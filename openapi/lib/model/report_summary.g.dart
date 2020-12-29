// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReportSummary> _$reportSummarySerializer =
    new _$ReportSummarySerializer();

class _$ReportSummarySerializer implements StructuredSerializer<ReportSummary> {
  @override
  final Iterable<Type> types = const [ReportSummary, _$ReportSummary];
  @override
  final String wireName = 'ReportSummary';

  @override
  Iterable<Object> serialize(Serializers serializers, ReportSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.collectionCard != null) {
      result
        ..add('collectionCard')
        ..add(serializers.serialize(object.collectionCard,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderMaster)])));
    }
    if (object.collectionCash != null) {
      result
        ..add('collectionCash')
        ..add(serializers.serialize(object.collectionCash,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderMaster)])));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }
    if (object.deliveryCard != null) {
      result
        ..add('deliveryCard')
        ..add(serializers.serialize(object.deliveryCard,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderMaster)])));
    }
    if (object.deliveryCash != null) {
      result
        ..add('deliveryCash')
        ..add(serializers.serialize(object.deliveryCash,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderMaster)])));
    }
    if (object.storeId != null) {
      result
        ..add('storeId')
        ..add(serializers.serialize(object.storeId,
            specifiedType: const FullType(String)));
    }
    if (object.typeAllCount != null) {
      result
        ..add('typeAllCount')
        ..add(serializers.serialize(object.typeAllCount,
            specifiedType: const FullType(int)));
    }
    if (object.typeAllTotal != null) {
      result
        ..add('typeAllTotal')
        ..add(serializers.serialize(object.typeAllTotal,
            specifiedType: const FullType(double)));
    }
    if (object.typeCardCount != null) {
      result
        ..add('typeCardCount')
        ..add(serializers.serialize(object.typeCardCount,
            specifiedType: const FullType(int)));
    }
    if (object.typeCardTotal != null) {
      result
        ..add('typeCardTotal')
        ..add(serializers.serialize(object.typeCardTotal,
            specifiedType: const FullType(double)));
    }
    if (object.typeCashCount != null) {
      result
        ..add('typeCashCount')
        ..add(serializers.serialize(object.typeCashCount,
            specifiedType: const FullType(int)));
    }
    if (object.typeCashTotal != null) {
      result
        ..add('typeCashTotal')
        ..add(serializers.serialize(object.typeCashTotal,
            specifiedType: const FullType(double)));
    }
    if (object.typeCollectionCount != null) {
      result
        ..add('typeCollectionCount')
        ..add(serializers.serialize(object.typeCollectionCount,
            specifiedType: const FullType(int)));
    }
    if (object.typeCollectionTotal != null) {
      result
        ..add('typeCollectionTotal')
        ..add(serializers.serialize(object.typeCollectionTotal,
            specifiedType: const FullType(double)));
    }
    if (object.typeDeliveryCount != null) {
      result
        ..add('typeDeliveryCount')
        ..add(serializers.serialize(object.typeDeliveryCount,
            specifiedType: const FullType(int)));
    }
    if (object.typeDeliveryTotal != null) {
      result
        ..add('typeDeliveryTotal')
        ..add(serializers.serialize(object.typeDeliveryTotal,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ReportSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'collectionCard':
          result.collectionCard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderMaster)]))
              as BuiltList<Object>);
          break;
        case 'collectionCash':
          result.collectionCash.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderMaster)]))
              as BuiltList<Object>);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'deliveryCard':
          result.deliveryCard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderMaster)]))
              as BuiltList<Object>);
          break;
        case 'deliveryCash':
          result.deliveryCash.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderMaster)]))
              as BuiltList<Object>);
          break;
        case 'storeId':
          result.storeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'typeAllCount':
          result.typeAllCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'typeAllTotal':
          result.typeAllTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'typeCardCount':
          result.typeCardCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'typeCardTotal':
          result.typeCardTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'typeCashCount':
          result.typeCashCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'typeCashTotal':
          result.typeCashTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'typeCollectionCount':
          result.typeCollectionCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'typeCollectionTotal':
          result.typeCollectionTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'typeDeliveryCount':
          result.typeDeliveryCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'typeDeliveryTotal':
          result.typeDeliveryTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ReportSummary extends ReportSummary {
  @override
  final BuiltList<OrderMaster> collectionCard;
  @override
  final BuiltList<OrderMaster> collectionCash;
  @override
  final DateTime date;
  @override
  final BuiltList<OrderMaster> deliveryCard;
  @override
  final BuiltList<OrderMaster> deliveryCash;
  @override
  final String storeId;
  @override
  final int typeAllCount;
  @override
  final double typeAllTotal;
  @override
  final int typeCardCount;
  @override
  final double typeCardTotal;
  @override
  final int typeCashCount;
  @override
  final double typeCashTotal;
  @override
  final int typeCollectionCount;
  @override
  final double typeCollectionTotal;
  @override
  final int typeDeliveryCount;
  @override
  final double typeDeliveryTotal;

  factory _$ReportSummary([void Function(ReportSummaryBuilder) updates]) =>
      (new ReportSummaryBuilder()..update(updates)).build();

  _$ReportSummary._(
      {this.collectionCard,
      this.collectionCash,
      this.date,
      this.deliveryCard,
      this.deliveryCash,
      this.storeId,
      this.typeAllCount,
      this.typeAllTotal,
      this.typeCardCount,
      this.typeCardTotal,
      this.typeCashCount,
      this.typeCashTotal,
      this.typeCollectionCount,
      this.typeCollectionTotal,
      this.typeDeliveryCount,
      this.typeDeliveryTotal})
      : super._();

  @override
  ReportSummary rebuild(void Function(ReportSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportSummaryBuilder toBuilder() => new ReportSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportSummary &&
        collectionCard == other.collectionCard &&
        collectionCash == other.collectionCash &&
        date == other.date &&
        deliveryCard == other.deliveryCard &&
        deliveryCash == other.deliveryCash &&
        storeId == other.storeId &&
        typeAllCount == other.typeAllCount &&
        typeAllTotal == other.typeAllTotal &&
        typeCardCount == other.typeCardCount &&
        typeCardTotal == other.typeCardTotal &&
        typeCashCount == other.typeCashCount &&
        typeCashTotal == other.typeCashTotal &&
        typeCollectionCount == other.typeCollectionCount &&
        typeCollectionTotal == other.typeCollectionTotal &&
        typeDeliveryCount == other.typeDeliveryCount &&
        typeDeliveryTotal == other.typeDeliveryTotal;
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
                                                                    0,
                                                                    collectionCard
                                                                        .hashCode),
                                                                collectionCash
                                                                    .hashCode),
                                                            date.hashCode),
                                                        deliveryCard.hashCode),
                                                    deliveryCash.hashCode),
                                                storeId.hashCode),
                                            typeAllCount.hashCode),
                                        typeAllTotal.hashCode),
                                    typeCardCount.hashCode),
                                typeCardTotal.hashCode),
                            typeCashCount.hashCode),
                        typeCashTotal.hashCode),
                    typeCollectionCount.hashCode),
                typeCollectionTotal.hashCode),
            typeDeliveryCount.hashCode),
        typeDeliveryTotal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportSummary')
          ..add('collectionCard', collectionCard)
          ..add('collectionCash', collectionCash)
          ..add('date', date)
          ..add('deliveryCard', deliveryCard)
          ..add('deliveryCash', deliveryCash)
          ..add('storeId', storeId)
          ..add('typeAllCount', typeAllCount)
          ..add('typeAllTotal', typeAllTotal)
          ..add('typeCardCount', typeCardCount)
          ..add('typeCardTotal', typeCardTotal)
          ..add('typeCashCount', typeCashCount)
          ..add('typeCashTotal', typeCashTotal)
          ..add('typeCollectionCount', typeCollectionCount)
          ..add('typeCollectionTotal', typeCollectionTotal)
          ..add('typeDeliveryCount', typeDeliveryCount)
          ..add('typeDeliveryTotal', typeDeliveryTotal))
        .toString();
  }
}

class ReportSummaryBuilder
    implements Builder<ReportSummary, ReportSummaryBuilder> {
  _$ReportSummary _$v;

  ListBuilder<OrderMaster> _collectionCard;
  ListBuilder<OrderMaster> get collectionCard =>
      _$this._collectionCard ??= new ListBuilder<OrderMaster>();
  set collectionCard(ListBuilder<OrderMaster> collectionCard) =>
      _$this._collectionCard = collectionCard;

  ListBuilder<OrderMaster> _collectionCash;
  ListBuilder<OrderMaster> get collectionCash =>
      _$this._collectionCash ??= new ListBuilder<OrderMaster>();
  set collectionCash(ListBuilder<OrderMaster> collectionCash) =>
      _$this._collectionCash = collectionCash;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  ListBuilder<OrderMaster> _deliveryCard;
  ListBuilder<OrderMaster> get deliveryCard =>
      _$this._deliveryCard ??= new ListBuilder<OrderMaster>();
  set deliveryCard(ListBuilder<OrderMaster> deliveryCard) =>
      _$this._deliveryCard = deliveryCard;

  ListBuilder<OrderMaster> _deliveryCash;
  ListBuilder<OrderMaster> get deliveryCash =>
      _$this._deliveryCash ??= new ListBuilder<OrderMaster>();
  set deliveryCash(ListBuilder<OrderMaster> deliveryCash) =>
      _$this._deliveryCash = deliveryCash;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  int _typeAllCount;
  int get typeAllCount => _$this._typeAllCount;
  set typeAllCount(int typeAllCount) => _$this._typeAllCount = typeAllCount;

  double _typeAllTotal;
  double get typeAllTotal => _$this._typeAllTotal;
  set typeAllTotal(double typeAllTotal) => _$this._typeAllTotal = typeAllTotal;

  int _typeCardCount;
  int get typeCardCount => _$this._typeCardCount;
  set typeCardCount(int typeCardCount) => _$this._typeCardCount = typeCardCount;

  double _typeCardTotal;
  double get typeCardTotal => _$this._typeCardTotal;
  set typeCardTotal(double typeCardTotal) =>
      _$this._typeCardTotal = typeCardTotal;

  int _typeCashCount;
  int get typeCashCount => _$this._typeCashCount;
  set typeCashCount(int typeCashCount) => _$this._typeCashCount = typeCashCount;

  double _typeCashTotal;
  double get typeCashTotal => _$this._typeCashTotal;
  set typeCashTotal(double typeCashTotal) =>
      _$this._typeCashTotal = typeCashTotal;

  int _typeCollectionCount;
  int get typeCollectionCount => _$this._typeCollectionCount;
  set typeCollectionCount(int typeCollectionCount) =>
      _$this._typeCollectionCount = typeCollectionCount;

  double _typeCollectionTotal;
  double get typeCollectionTotal => _$this._typeCollectionTotal;
  set typeCollectionTotal(double typeCollectionTotal) =>
      _$this._typeCollectionTotal = typeCollectionTotal;

  int _typeDeliveryCount;
  int get typeDeliveryCount => _$this._typeDeliveryCount;
  set typeDeliveryCount(int typeDeliveryCount) =>
      _$this._typeDeliveryCount = typeDeliveryCount;

  double _typeDeliveryTotal;
  double get typeDeliveryTotal => _$this._typeDeliveryTotal;
  set typeDeliveryTotal(double typeDeliveryTotal) =>
      _$this._typeDeliveryTotal = typeDeliveryTotal;

  ReportSummaryBuilder();

  ReportSummaryBuilder get _$this {
    if (_$v != null) {
      _collectionCard = _$v.collectionCard?.toBuilder();
      _collectionCash = _$v.collectionCash?.toBuilder();
      _date = _$v.date;
      _deliveryCard = _$v.deliveryCard?.toBuilder();
      _deliveryCash = _$v.deliveryCash?.toBuilder();
      _storeId = _$v.storeId;
      _typeAllCount = _$v.typeAllCount;
      _typeAllTotal = _$v.typeAllTotal;
      _typeCardCount = _$v.typeCardCount;
      _typeCardTotal = _$v.typeCardTotal;
      _typeCashCount = _$v.typeCashCount;
      _typeCashTotal = _$v.typeCashTotal;
      _typeCollectionCount = _$v.typeCollectionCount;
      _typeCollectionTotal = _$v.typeCollectionTotal;
      _typeDeliveryCount = _$v.typeDeliveryCount;
      _typeDeliveryTotal = _$v.typeDeliveryTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportSummary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReportSummary;
  }

  @override
  void update(void Function(ReportSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportSummary build() {
    _$ReportSummary _$result;
    try {
      _$result = _$v ??
          new _$ReportSummary._(
              collectionCard: _collectionCard?.build(),
              collectionCash: _collectionCash?.build(),
              date: date,
              deliveryCard: _deliveryCard?.build(),
              deliveryCash: _deliveryCash?.build(),
              storeId: storeId,
              typeAllCount: typeAllCount,
              typeAllTotal: typeAllTotal,
              typeCardCount: typeCardCount,
              typeCardTotal: typeCardTotal,
              typeCashCount: typeCashCount,
              typeCashTotal: typeCashTotal,
              typeCollectionCount: typeCollectionCount,
              typeCollectionTotal: typeCollectionTotal,
              typeDeliveryCount: typeDeliveryCount,
              typeDeliveryTotal: typeDeliveryTotal);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'collectionCard';
        _collectionCard?.build();
        _$failedField = 'collectionCash';
        _collectionCash?.build();

        _$failedField = 'deliveryCard';
        _deliveryCard?.build();
        _$failedField = 'deliveryCash';
        _deliveryCash?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReportSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
