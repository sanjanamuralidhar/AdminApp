// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancellationRequestDTO> _$cancellationRequestDTOSerializer =
    new _$CancellationRequestDTOSerializer();

class _$CancellationRequestDTOSerializer
    implements StructuredSerializer<CancellationRequestDTO> {
  @override
  final Iterable<Type> types = const [
    CancellationRequestDTO,
    _$CancellationRequestDTO
  ];
  @override
  final String wireName = 'CancellationRequestDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancellationRequestDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(double)));
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
    if (object.refundDetailsId != null) {
      result
        ..add('refundDetailsId')
        ..add(serializers.serialize(object.refundDetailsId,
            specifiedType: const FullType(int)));
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
  CancellationRequestDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancellationRequestDTOBuilder();

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
        case 'refundDetailsId':
          result.refundDetailsId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$CancellationRequestDTO extends CancellationRequestDTO {
  @override
  final double amount;
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
  final int refundDetailsId;
  @override
  final String status;
  @override
  final String storeEmail;
  @override
  final int storePhone;

  factory _$CancellationRequestDTO(
          [void Function(CancellationRequestDTOBuilder) updates]) =>
      (new CancellationRequestDTOBuilder()..update(updates)).build();

  _$CancellationRequestDTO._(
      {this.amount,
      this.customerEmail,
      this.customerPhone,
      this.date,
      this.id,
      this.orderId,
      this.paymentId,
      this.phoneCode,
      this.reference,
      this.refundDetailsId,
      this.status,
      this.storeEmail,
      this.storePhone})
      : super._();

  @override
  CancellationRequestDTO rebuild(
          void Function(CancellationRequestDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancellationRequestDTOBuilder toBuilder() =>
      new CancellationRequestDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancellationRequestDTO &&
        amount == other.amount &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        date == other.date &&
        id == other.id &&
        orderId == other.orderId &&
        paymentId == other.paymentId &&
        phoneCode == other.phoneCode &&
        reference == other.reference &&
        refundDetailsId == other.refundDetailsId &&
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
                                                $jc($jc(0, amount.hashCode),
                                                    customerEmail.hashCode),
                                                customerPhone.hashCode),
                                            date.hashCode),
                                        id.hashCode),
                                    orderId.hashCode),
                                paymentId.hashCode),
                            phoneCode.hashCode),
                        reference.hashCode),
                    refundDetailsId.hashCode),
                status.hashCode),
            storeEmail.hashCode),
        storePhone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancellationRequestDTO')
          ..add('amount', amount)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('date', date)
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('paymentId', paymentId)
          ..add('phoneCode', phoneCode)
          ..add('reference', reference)
          ..add('refundDetailsId', refundDetailsId)
          ..add('status', status)
          ..add('storeEmail', storeEmail)
          ..add('storePhone', storePhone))
        .toString();
  }
}

class CancellationRequestDTOBuilder
    implements Builder<CancellationRequestDTO, CancellationRequestDTOBuilder> {
  _$CancellationRequestDTO _$v;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

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

  int _refundDetailsId;
  int get refundDetailsId => _$this._refundDetailsId;
  set refundDetailsId(int refundDetailsId) =>
      _$this._refundDetailsId = refundDetailsId;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _storeEmail;
  String get storeEmail => _$this._storeEmail;
  set storeEmail(String storeEmail) => _$this._storeEmail = storeEmail;

  int _storePhone;
  int get storePhone => _$this._storePhone;
  set storePhone(int storePhone) => _$this._storePhone = storePhone;

  CancellationRequestDTOBuilder();

  CancellationRequestDTOBuilder get _$this {
    if (_$v != null) {
      _amount = _$v.amount;
      _customerEmail = _$v.customerEmail;
      _customerPhone = _$v.customerPhone;
      _date = _$v.date;
      _id = _$v.id;
      _orderId = _$v.orderId;
      _paymentId = _$v.paymentId;
      _phoneCode = _$v.phoneCode;
      _reference = _$v.reference;
      _refundDetailsId = _$v.refundDetailsId;
      _status = _$v.status;
      _storeEmail = _$v.storeEmail;
      _storePhone = _$v.storePhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancellationRequestDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancellationRequestDTO;
  }

  @override
  void update(void Function(CancellationRequestDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancellationRequestDTO build() {
    final _$result = _$v ??
        new _$CancellationRequestDTO._(
            amount: amount,
            customerEmail: customerEmail,
            customerPhone: customerPhone,
            date: date,
            id: id,
            orderId: orderId,
            paymentId: paymentId,
            phoneCode: phoneCode,
            reference: reference,
            refundDetailsId: refundDetailsId,
            status: status,
            storeEmail: storeEmail,
            storePhone: storePhone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
