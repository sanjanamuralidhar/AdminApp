// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefundDetails> _$refundDetailsSerializer =
    new _$RefundDetailsSerializer();

class _$RefundDetailsSerializer implements StructuredSerializer<RefundDetails> {
  @override
  final Iterable<Type> types = const [RefundDetails, _$RefundDetails];
  @override
  final String wireName = 'RefundDetails';

  @override
  Iterable<Object> serialize(Serializers serializers, RefundDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
  RefundDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefundDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$RefundDetails extends RefundDetails {
  @override
  final int id;
  @override
  final String refundId;
  @override
  final String status;

  factory _$RefundDetails([void Function(RefundDetailsBuilder) updates]) =>
      (new RefundDetailsBuilder()..update(updates)).build();

  _$RefundDetails._({this.id, this.refundId, this.status}) : super._();

  @override
  RefundDetails rebuild(void Function(RefundDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefundDetailsBuilder toBuilder() => new RefundDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundDetails &&
        id == other.id &&
        refundId == other.refundId &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), refundId.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RefundDetails')
          ..add('id', id)
          ..add('refundId', refundId)
          ..add('status', status))
        .toString();
  }
}

class RefundDetailsBuilder
    implements Builder<RefundDetails, RefundDetailsBuilder> {
  _$RefundDetails _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _refundId;
  String get refundId => _$this._refundId;
  set refundId(String refundId) => _$this._refundId = refundId;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  RefundDetailsBuilder();

  RefundDetailsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _refundId = _$v.refundId;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefundDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RefundDetails;
  }

  @override
  void update(void Function(RefundDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RefundDetails build() {
    final _$result = _$v ??
        new _$RefundDetails._(id: id, refundId: refundId, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
