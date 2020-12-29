// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancellationDetails> _$cancellationDetailsSerializer =
    new _$CancellationDetailsSerializer();

class _$CancellationDetailsSerializer
    implements StructuredSerializer<CancellationDetails> {
  @override
  final Iterable<Type> types = const [
    CancellationDetails,
    _$CancellationDetails
  ];
  @override
  final String wireName = 'CancellationDetails';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancellationDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cancellationRequest != null) {
      result
        ..add('cancellationRequest')
        ..add(serializers.serialize(object.cancellationRequest,
            specifiedType: const FullType(CancellationRequest)));
    }
    if (object.cancelledAuxilaryOrderLines != null) {
      result
        ..add('cancelledAuxilaryOrderLines')
        ..add(serializers.serialize(object.cancelledAuxilaryOrderLines,
            specifiedType: const FullType(BuiltList,
                const [const FullType(CancelledAuxilaryOrderLine)])));
    }
    if (object.cancelledOrderLines != null) {
      result
        ..add('cancelledOrderLines')
        ..add(serializers.serialize(object.cancelledOrderLines,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CancelledOrderLine)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CancellationDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancellationDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cancellationRequest':
          result.cancellationRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CancellationRequest))
              as CancellationRequest);
          break;
        case 'cancelledAuxilaryOrderLines':
          result.cancelledAuxilaryOrderLines.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(CancelledAuxilaryOrderLine)
              ])) as BuiltList<Object>);
          break;
        case 'cancelledOrderLines':
          result.cancelledOrderLines.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CancelledOrderLine)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CancellationDetails extends CancellationDetails {
  @override
  final CancellationRequest cancellationRequest;
  @override
  final BuiltList<CancelledAuxilaryOrderLine> cancelledAuxilaryOrderLines;
  @override
  final BuiltList<CancelledOrderLine> cancelledOrderLines;
  @override
  final int id;

  factory _$CancellationDetails(
          [void Function(CancellationDetailsBuilder) updates]) =>
      (new CancellationDetailsBuilder()..update(updates)).build();

  _$CancellationDetails._(
      {this.cancellationRequest,
      this.cancelledAuxilaryOrderLines,
      this.cancelledOrderLines,
      this.id})
      : super._();

  @override
  CancellationDetails rebuild(
          void Function(CancellationDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancellationDetailsBuilder toBuilder() =>
      new CancellationDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancellationDetails &&
        cancellationRequest == other.cancellationRequest &&
        cancelledAuxilaryOrderLines == other.cancelledAuxilaryOrderLines &&
        cancelledOrderLines == other.cancelledOrderLines &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, cancellationRequest.hashCode),
                cancelledAuxilaryOrderLines.hashCode),
            cancelledOrderLines.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancellationDetails')
          ..add('cancellationRequest', cancellationRequest)
          ..add('cancelledAuxilaryOrderLines', cancelledAuxilaryOrderLines)
          ..add('cancelledOrderLines', cancelledOrderLines)
          ..add('id', id))
        .toString();
  }
}

class CancellationDetailsBuilder
    implements Builder<CancellationDetails, CancellationDetailsBuilder> {
  _$CancellationDetails _$v;

  CancellationRequestBuilder _cancellationRequest;
  CancellationRequestBuilder get cancellationRequest =>
      _$this._cancellationRequest ??= new CancellationRequestBuilder();
  set cancellationRequest(CancellationRequestBuilder cancellationRequest) =>
      _$this._cancellationRequest = cancellationRequest;

  ListBuilder<CancelledAuxilaryOrderLine> _cancelledAuxilaryOrderLines;
  ListBuilder<CancelledAuxilaryOrderLine> get cancelledAuxilaryOrderLines =>
      _$this._cancelledAuxilaryOrderLines ??=
          new ListBuilder<CancelledAuxilaryOrderLine>();
  set cancelledAuxilaryOrderLines(
          ListBuilder<CancelledAuxilaryOrderLine>
              cancelledAuxilaryOrderLines) =>
      _$this._cancelledAuxilaryOrderLines = cancelledAuxilaryOrderLines;

  ListBuilder<CancelledOrderLine> _cancelledOrderLines;
  ListBuilder<CancelledOrderLine> get cancelledOrderLines =>
      _$this._cancelledOrderLines ??= new ListBuilder<CancelledOrderLine>();
  set cancelledOrderLines(
          ListBuilder<CancelledOrderLine> cancelledOrderLines) =>
      _$this._cancelledOrderLines = cancelledOrderLines;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  CancellationDetailsBuilder();

  CancellationDetailsBuilder get _$this {
    if (_$v != null) {
      _cancellationRequest = _$v.cancellationRequest?.toBuilder();
      _cancelledAuxilaryOrderLines =
          _$v.cancelledAuxilaryOrderLines?.toBuilder();
      _cancelledOrderLines = _$v.cancelledOrderLines?.toBuilder();
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancellationDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancellationDetails;
  }

  @override
  void update(void Function(CancellationDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancellationDetails build() {
    _$CancellationDetails _$result;
    try {
      _$result = _$v ??
          new _$CancellationDetails._(
              cancellationRequest: _cancellationRequest?.build(),
              cancelledAuxilaryOrderLines:
                  _cancelledAuxilaryOrderLines?.build(),
              cancelledOrderLines: _cancelledOrderLines?.build(),
              id: id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cancellationRequest';
        _cancellationRequest?.build();
        _$failedField = 'cancelledAuxilaryOrderLines';
        _cancelledAuxilaryOrderLines?.build();
        _$failedField = 'cancelledOrderLines';
        _cancelledOrderLines?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CancellationDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
