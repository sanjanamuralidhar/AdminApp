// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancellationRequest> _$cancellationRequestSerializer =
    new _$CancellationRequestSerializer();

class _$CancellationRequestSerializer
    implements StructuredSerializer<CancellationRequest> {
  @override
  final Iterable<Type> types = const [
    CancellationRequest,
    _$CancellationRequest
  ];
  @override
  final String wireName = 'CancellationRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancellationRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(double)));
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
    if (object.customerEmail != null) {
      result
        ..add('customerEmail')
        ..add(serializers.serialize(object.customerEmail,
            specifiedType: const FullType(String)));
    }
    if (object.customerPhone != null) {
      result
        ..add('customerPhone')
        ..add(serializers.serialize(object.customerPhone,
            specifiedType: const FullType(int)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.orderId != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(String)));
    }
    if (object.paymentId != null) {
      result
        ..add('paymentId')
        ..add(serializers.serialize(object.paymentId,
            specifiedType: const FullType(String)));
    }
    if (object.phoneCode != null) {
      result
        ..add('phoneCode')
        ..add(serializers.serialize(object.phoneCode,
            specifiedType: const FullType(int)));
    }
    if (object.reference != null) {
      result
        ..add('reference')
        ..add(serializers.serialize(object.reference,
            specifiedType: const FullType(String)));
    }
    if (object.refundDetails != null) {
      result
        ..add('refundDetails')
        ..add(serializers.serialize(object.refundDetails,
            specifiedType: const FullType(RefundDetails)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.storeEmail != null) {
      result
        ..add('storeEmail')
        ..add(serializers.serialize(object.storeEmail,
            specifiedType: const FullType(String)));
    }
    if (object.storePhone != null) {
      result
        ..add('storePhone')
        ..add(serializers.serialize(object.storePhone,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CancellationRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancellationRequestBuilder();

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
        case 'customerEmail':
          result.customerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerPhone':
          result.customerPhone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentId':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneCode':
          result.phoneCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reference':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refundDetails':
          result.refundDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(RefundDetails)) as RefundDetails);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storeEmail':
          result.storeEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storePhone':
          result.storePhone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CancellationRequest extends CancellationRequest {
  @override
  final double amount;
  @override
  final BuiltList<CancelledAuxilaryOrderLine> cancelledAuxilaryOrderLines;
  @override
  final BuiltList<CancelledOrderLine> cancelledOrderLines;
  @override
  final String customerEmail;
  @override
  final int customerPhone;
  @override
  final DateTime date;
  @override
  final int id;
  @override
  final String orderId;
  @override
  final String paymentId;
  @override
  final int phoneCode;
  @override
  final String reference;
  @override
  final RefundDetails refundDetails;
  @override
  final String status;
  @override
  final String storeEmail;
  @override
  final int storePhone;

  factory _$CancellationRequest(
          [void Function(CancellationRequestBuilder) updates]) =>
      (new CancellationRequestBuilder()..update(updates)).build();

  _$CancellationRequest._(
      {this.amount,
      this.cancelledAuxilaryOrderLines,
      this.cancelledOrderLines,
      this.customerEmail,
      this.customerPhone,
      this.date,
      this.id,
      this.orderId,
      this.paymentId,
      this.phoneCode,
      this.reference,
      this.refundDetails,
      this.status,
      this.storeEmail,
      this.storePhone})
      : super._();

  @override
  CancellationRequest rebuild(
          void Function(CancellationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancellationRequestBuilder toBuilder() =>
      new CancellationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancellationRequest &&
        amount == other.amount &&
        cancelledAuxilaryOrderLines == other.cancelledAuxilaryOrderLines &&
        cancelledOrderLines == other.cancelledOrderLines &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        date == other.date &&
        id == other.id &&
        orderId == other.orderId &&
        paymentId == other.paymentId &&
        phoneCode == other.phoneCode &&
        reference == other.reference &&
        refundDetails == other.refundDetails &&
        status == other.status &&
        storeEmail == other.storeEmail &&
        storePhone == other.storePhone;
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
                                                                0,
                                                                amount
                                                                    .hashCode),
                                                            cancelledAuxilaryOrderLines
                                                                .hashCode),
                                                        cancelledOrderLines
                                                            .hashCode),
                                                    customerEmail.hashCode),
                                                customerPhone.hashCode),
                                            date.hashCode),
                                        id.hashCode),
                                    orderId.hashCode),
                                paymentId.hashCode),
                            phoneCode.hashCode),
                        reference.hashCode),
                    refundDetails.hashCode),
                status.hashCode),
            storeEmail.hashCode),
        storePhone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancellationRequest')
          ..add('amount', amount)
          ..add('cancelledAuxilaryOrderLines', cancelledAuxilaryOrderLines)
          ..add('cancelledOrderLines', cancelledOrderLines)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('date', date)
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('paymentId', paymentId)
          ..add('phoneCode', phoneCode)
          ..add('reference', reference)
          ..add('refundDetails', refundDetails)
          ..add('status', status)
          ..add('storeEmail', storeEmail)
          ..add('storePhone', storePhone))
        .toString();
  }
}

class CancellationRequestBuilder
    implements Builder<CancellationRequest, CancellationRequestBuilder> {
  _$CancellationRequest _$v;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

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

  String _customerEmail;
  String get customerEmail => _$this._customerEmail;
  set customerEmail(String customerEmail) =>
      _$this._customerEmail = customerEmail;

  int _customerPhone;
  int get customerPhone => _$this._customerPhone;
  set customerPhone(int customerPhone) => _$this._customerPhone = customerPhone;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _orderId;
  String get orderId => _$this._orderId;
  set orderId(String orderId) => _$this._orderId = orderId;

  String _paymentId;
  String get paymentId => _$this._paymentId;
  set paymentId(String paymentId) => _$this._paymentId = paymentId;

  int _phoneCode;
  int get phoneCode => _$this._phoneCode;
  set phoneCode(int phoneCode) => _$this._phoneCode = phoneCode;

  String _reference;
  String get reference => _$this._reference;
  set reference(String reference) => _$this._reference = reference;

  RefundDetailsBuilder _refundDetails;
  RefundDetailsBuilder get refundDetails =>
      _$this._refundDetails ??= new RefundDetailsBuilder();
  set refundDetails(RefundDetailsBuilder refundDetails) =>
      _$this._refundDetails = refundDetails;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _storeEmail;
  String get storeEmail => _$this._storeEmail;
  set storeEmail(String storeEmail) => _$this._storeEmail = storeEmail;

  int _storePhone;
  int get storePhone => _$this._storePhone;
  set storePhone(int storePhone) => _$this._storePhone = storePhone;

  CancellationRequestBuilder();

  CancellationRequestBuilder get _$this {
    if (_$v != null) {
      _amount = _$v.amount;
      _cancelledAuxilaryOrderLines =
          _$v.cancelledAuxilaryOrderLines?.toBuilder();
      _cancelledOrderLines = _$v.cancelledOrderLines?.toBuilder();
      _customerEmail = _$v.customerEmail;
      _customerPhone = _$v.customerPhone;
      _date = _$v.date;
      _id = _$v.id;
      _orderId = _$v.orderId;
      _paymentId = _$v.paymentId;
      _phoneCode = _$v.phoneCode;
      _reference = _$v.reference;
      _refundDetails = _$v.refundDetails?.toBuilder();
      _status = _$v.status;
      _storeEmail = _$v.storeEmail;
      _storePhone = _$v.storePhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancellationRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancellationRequest;
  }

  @override
  void update(void Function(CancellationRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancellationRequest build() {
    _$CancellationRequest _$result;
    try {
      _$result = _$v ??
          new _$CancellationRequest._(
              amount: amount,
              cancelledAuxilaryOrderLines:
                  _cancelledAuxilaryOrderLines?.build(),
              cancelledOrderLines: _cancelledOrderLines?.build(),
              customerEmail: customerEmail,
              customerPhone: customerPhone,
              date: date,
              id: id,
              orderId: orderId,
              paymentId: paymentId,
              phoneCode: phoneCode,
              reference: reference,
              refundDetails: _refundDetails?.build(),
              status: status,
              storeEmail: storeEmail,
              storePhone: storePhone);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cancelledAuxilaryOrderLines';
        _cancelledAuxilaryOrderLines?.build();
        _$failedField = 'cancelledOrderLines';
        _cancelledOrderLines?.build();

        _$failedField = 'refundDetails';
        _refundDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CancellationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
