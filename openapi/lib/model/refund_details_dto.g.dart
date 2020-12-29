// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefundDetailsDTO> _$refundDetailsDTOSerializer =
    new _$RefundDetailsDTOSerializer();

class _$RefundDetailsDTOSerializer
    implements StructuredSerializer<RefundDetailsDTO> {
  @override
  final Iterable<Type> types = const [RefundDetailsDTO, _$RefundDetailsDTO];
  @override
  final String wireName = 'RefundDetailsDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, RefundDetailsDTO object,
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
  RefundDetailsDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefundDetailsDTOBuilder();

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

class _$RefundDetailsDTO extends RefundDetailsDTO {
  @override
  final int id;
  @override
  final String refundId;
  @override
  final String status;

  factory _$RefundDetailsDTO(
          [void Function(RefundDetailsDTOBuilder) updates]) =>
      (new RefundDetailsDTOBuilder()..update(updates)).build();

  _$RefundDetailsDTO._({this.id, this.refundId, this.status}) : super._();

  @override
  RefundDetailsDTO rebuild(void Function(RefundDetailsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefundDetailsDTOBuilder toBuilder() =>
      new RefundDetailsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundDetailsDTO &&
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
    return (newBuiltValueToStringHelper('RefundDetailsDTO')
          ..add('id', id)
          ..add('refundId', refundId)
          ..add('status', status))
        .toString();
  }
}

class RefundDetailsDTOBuilder
    implements Builder<RefundDetailsDTO, RefundDetailsDTOBuilder> {
  _$RefundDetailsDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _refundId;
  String get refundId => _$this._refundId;
  set refundId(String refundId) => _$this._refundId = refundId;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  RefundDetailsDTOBuilder();

  RefundDetailsDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _refundId = _$v.refundId;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefundDetailsDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RefundDetailsDTO;
  }

  @override
  void update(void Function(RefundDetailsDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RefundDetailsDTO build() {
    final _$result = _$v ??
        new _$RefundDetailsDTO._(id: id, refundId: refundId, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
