// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancellationSummary> _$cancellationSummarySerializer =
    new _$CancellationSummarySerializer();

class _$CancellationSummarySerializer
    implements StructuredSerializer<CancellationSummary> {
  @override
  final Iterable<Type> types = const [
    CancellationSummary,
    _$CancellationSummary
  ];
  @override
  final String wireName = 'CancellationSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancellationSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.allCardCount != null) {
      result
        ..add('allCardCount')
        ..add(serializers.serialize(object.allCardCount,
            specifiedType: const FullType(int)));
    }
    if (object.allCardTotal != null) {
      result
        ..add('allCardTotal')
        ..add(serializers.serialize(object.allCardTotal,
            specifiedType: const FullType(double)));
    }
    if (object.allRefundAmount != null) {
      result
        ..add('allRefundAmount')
        ..add(serializers.serialize(object.allRefundAmount,
            specifiedType: const FullType(double)));
    }
    if (object.collectionCardCount != null) {
      result
        ..add('collectionCardCount')
        ..add(serializers.serialize(object.collectionCardCount,
            specifiedType: const FullType(int)));
    }
    if (object.collectionCardTotal != null) {
      result
        ..add('collectionCardTotal')
        ..add(serializers.serialize(object.collectionCardTotal,
            specifiedType: const FullType(double)));
    }
    if (object.collectionRefundAmount != null) {
      result
        ..add('collectionRefundAmount')
        ..add(serializers.serialize(object.collectionRefundAmount,
            specifiedType: const FullType(double)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }
    if (object.deliveryCardCount != null) {
      result
        ..add('deliveryCardCount')
        ..add(serializers.serialize(object.deliveryCardCount,
            specifiedType: const FullType(int)));
    }
    if (object.deliveryCardTotal != null) {
      result
        ..add('deliveryCardTotal')
        ..add(serializers.serialize(object.deliveryCardTotal,
            specifiedType: const FullType(double)));
    }
    if (object.deliveryRefundAmount != null) {
      result
        ..add('deliveryRefundAmount')
        ..add(serializers.serialize(object.deliveryRefundAmount,
            specifiedType: const FullType(double)));
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
  CancellationSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancellationSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'allCardCount':
          result.allCardCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'allCardTotal':
          result.allCardTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'allRefundAmount':
          result.allRefundAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'collectionCardCount':
          result.collectionCardCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'collectionCardTotal':
          result.collectionCardTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'collectionRefundAmount':
          result.collectionRefundAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'deliveryCardCount':
          result.deliveryCardCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deliveryCardTotal':
          result.deliveryCardTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deliveryRefundAmount':
          result.deliveryRefundAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$CancellationSummary extends CancellationSummary {
  @override
  final int allCardCount;
  @override
  final double allCardTotal;
  @override
  final double allRefundAmount;
  @override
  final int collectionCardCount;
  @override
  final double collectionCardTotal;
  @override
  final double collectionRefundAmount;
  @override
  final DateTime date;
  @override
  final int deliveryCardCount;
  @override
  final double deliveryCardTotal;
  @override
  final double deliveryRefundAmount;
  @override
  final String storeId;

  factory _$CancellationSummary(
          [void Function(CancellationSummaryBuilder) updates]) =>
      (new CancellationSummaryBuilder()..update(updates)).build();

  _$CancellationSummary._(
      {this.allCardCount,
      this.allCardTotal,
      this.allRefundAmount,
      this.collectionCardCount,
      this.collectionCardTotal,
      this.collectionRefundAmount,
      this.date,
      this.deliveryCardCount,
      this.deliveryCardTotal,
      this.deliveryRefundAmount,
      this.storeId})
      : super._();

  @override
  CancellationSummary rebuild(
          void Function(CancellationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancellationSummaryBuilder toBuilder() =>
      new CancellationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancellationSummary &&
        allCardCount == other.allCardCount &&
        allCardTotal == other.allCardTotal &&
        allRefundAmount == other.allRefundAmount &&
        collectionCardCount == other.collectionCardCount &&
        collectionCardTotal == other.collectionCardTotal &&
        collectionRefundAmount == other.collectionRefundAmount &&
        date == other.date &&
        deliveryCardCount == other.deliveryCardCount &&
        deliveryCardTotal == other.deliveryCardTotal &&
        deliveryRefundAmount == other.deliveryRefundAmount &&
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
                                $jc(
                                    $jc(
                                        $jc($jc(0, allCardCount.hashCode),
                                            allCardTotal.hashCode),
                                        allRefundAmount.hashCode),
                                    collectionCardCount.hashCode),
                                collectionCardTotal.hashCode),
                            collectionRefundAmount.hashCode),
                        date.hashCode),
                    deliveryCardCount.hashCode),
                deliveryCardTotal.hashCode),
            deliveryRefundAmount.hashCode),
        storeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancellationSummary')
          ..add('allCardCount', allCardCount)
          ..add('allCardTotal', allCardTotal)
          ..add('allRefundAmount', allRefundAmount)
          ..add('collectionCardCount', collectionCardCount)
          ..add('collectionCardTotal', collectionCardTotal)
          ..add('collectionRefundAmount', collectionRefundAmount)
          ..add('date', date)
          ..add('deliveryCardCount', deliveryCardCount)
          ..add('deliveryCardTotal', deliveryCardTotal)
          ..add('deliveryRefundAmount', deliveryRefundAmount)
          ..add('storeId', storeId))
        .toString();
  }
}

class CancellationSummaryBuilder
    implements Builder<CancellationSummary, CancellationSummaryBuilder> {
  _$CancellationSummary _$v;

  int _allCardCount;
  int get allCardCount => _$this._allCardCount;
  set allCardCount(int allCardCount) => _$this._allCardCount = allCardCount;

  double _allCardTotal;
  double get allCardTotal => _$this._allCardTotal;
  set allCardTotal(double allCardTotal) => _$this._allCardTotal = allCardTotal;

  double _allRefundAmount;
  double get allRefundAmount => _$this._allRefundAmount;
  set allRefundAmount(double allRefundAmount) =>
      _$this._allRefundAmount = allRefundAmount;

  int _collectionCardCount;
  int get collectionCardCount => _$this._collectionCardCount;
  set collectionCardCount(int collectionCardCount) =>
      _$this._collectionCardCount = collectionCardCount;

  double _collectionCardTotal;
  double get collectionCardTotal => _$this._collectionCardTotal;
  set collectionCardTotal(double collectionCardTotal) =>
      _$this._collectionCardTotal = collectionCardTotal;

  double _collectionRefundAmount;
  double get collectionRefundAmount => _$this._collectionRefundAmount;
  set collectionRefundAmount(double collectionRefundAmount) =>
      _$this._collectionRefundAmount = collectionRefundAmount;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  int _deliveryCardCount;
  int get deliveryCardCount => _$this._deliveryCardCount;
  set deliveryCardCount(int deliveryCardCount) =>
      _$this._deliveryCardCount = deliveryCardCount;

  double _deliveryCardTotal;
  double get deliveryCardTotal => _$this._deliveryCardTotal;
  set deliveryCardTotal(double deliveryCardTotal) =>
      _$this._deliveryCardTotal = deliveryCardTotal;

  double _deliveryRefundAmount;
  double get deliveryRefundAmount => _$this._deliveryRefundAmount;
  set deliveryRefundAmount(double deliveryRefundAmount) =>
      _$this._deliveryRefundAmount = deliveryRefundAmount;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  CancellationSummaryBuilder();

  CancellationSummaryBuilder get _$this {
    if (_$v != null) {
      _allCardCount = _$v.allCardCount;
      _allCardTotal = _$v.allCardTotal;
      _allRefundAmount = _$v.allRefundAmount;
      _collectionCardCount = _$v.collectionCardCount;
      _collectionCardTotal = _$v.collectionCardTotal;
      _collectionRefundAmount = _$v.collectionRefundAmount;
      _date = _$v.date;
      _deliveryCardCount = _$v.deliveryCardCount;
      _deliveryCardTotal = _$v.deliveryCardTotal;
      _deliveryRefundAmount = _$v.deliveryRefundAmount;
      _storeId = _$v.storeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancellationSummary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancellationSummary;
  }

  @override
  void update(void Function(CancellationSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancellationSummary build() {
    final _$result = _$v ??
        new _$CancellationSummary._(
            allCardCount: allCardCount,
            allCardTotal: allCardTotal,
            allRefundAmount: allRefundAmount,
            collectionCardCount: collectionCardCount,
            collectionCardTotal: collectionCardTotal,
            collectionRefundAmount: collectionRefundAmount,
            date: date,
            deliveryCardCount: deliveryCardCount,
            deliveryCardTotal: deliveryCardTotal,
            deliveryRefundAmount: deliveryRefundAmount,
            storeId: storeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
