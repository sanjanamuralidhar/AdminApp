// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefundDTO> _$refundDTOSerializer = new _$RefundDTOSerializer();

class _$RefundDTOSerializer implements StructuredSerializer<RefundDTO> {
  @override
  final Iterable<Type> types = const [RefundDTO, _$RefundDTO];
  @override
  final String wireName = 'RefundDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, RefundDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.refundId != null) {
      result
        ..add('refundId')
        ..add(serializers.serialize(object.refundId,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RefundDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefundDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'refundId':
          result.refundId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RefundDTO extends RefundDTO {
  @override
  final double amount;
  @override
  final int id;
  @override
  final String refundId;
  @override
  final String status;

  factory _$RefundDTO([void Function(RefundDTOBuilder) updates]) =>
      (new RefundDTOBuilder()..update(updates)).build();

  _$RefundDTO._({this.amount, this.id, this.refundId, this.status}) : super._();

  @override
  RefundDTO rebuild(void Function(RefundDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefundDTOBuilder toBuilder() => new RefundDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundDTO &&
        amount == other.amount &&
        id == other.id &&
        refundId == other.refundId &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), id.hashCode), refundId.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RefundDTO')
          ..add('amount', amount)
          ..add('id', id)
          ..add('refundId', refundId)
          ..add('status', status))
        .toString();
  }
}

class RefundDTOBuilder implements Builder<RefundDTO, RefundDTOBuilder> {
  _$RefundDTO _$v;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _refundId;
  String get refundId => _$this._refundId;
  set refundId(String refundId) => _$this._refundId = refundId;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  RefundDTOBuilder();

  RefundDTOBuilder get _$this {
    if (_$v != null) {
      _amount = _$v.amount;
      _id = _$v.id;
      _refundId = _$v.refundId;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefundDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RefundDTO;
  }

  @override
  void update(void Function(RefundDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RefundDTO build() {
    final _$result = _$v ??
        new _$RefundDTO._(
            amount: amount, id: id, refundId: refundId, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
