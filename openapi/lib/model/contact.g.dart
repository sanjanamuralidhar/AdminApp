// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Contact> _$contactSerializer = new _$ContactSerializer();

class _$ContactSerializer implements StructuredSerializer<Contact> {
  @override
  final Iterable<Type> types = const [Contact, _$Contact];
  @override
  final String wireName = 'Contact';

  @override
  Iterable<Object> serialize(Serializers serializers, Contact object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.mobileNumber != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(object.mobileNumber,
            specifiedType: const FullType(int)));
    }
    if (object.phoneCode != null) {
      result
        ..add('phoneCode')
        ..add(serializers.serialize(object.phoneCode,
            specifiedType: const FullType(int)));
    }
    if (object.telephone != null) {
      result
        ..add('telephone')
        ..add(serializers.serialize(object.telephone,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Contact deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phoneCode':
          result.phoneCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'telephone':
          result.telephone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Contact extends Contact {
  @override
  final String email;
  @override
  final int id;
  @override
  final int mobileNumber;
  @override
  final int phoneCode;
  @override
  final int telephone;

  factory _$Contact([void Function(ContactBuilder) updates]) =>
      (new ContactBuilder()..update(updates)).build();

  _$Contact._(
      {this.email, this.id, this.mobileNumber, this.phoneCode, this.telephone})
      : super._();

  @override
  Contact rebuild(void Function(ContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactBuilder toBuilder() => new ContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Contact &&
        email == other.email &&
        id == other.id &&
        mobileNumber == other.mobileNumber &&
        phoneCode == other.phoneCode &&
        telephone == other.telephone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, email.hashCode), id.hashCode),
                mobileNumber.hashCode),
            phoneCode.hashCode),
        telephone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Contact')
          ..add('email', email)
          ..add('id', id)
          ..add('mobileNumber', mobileNumber)
          ..add('phoneCode', phoneCode)
          ..add('telephone', telephone))
        .toString();
  }
}

class ContactBuilder implements Builder<Contact, ContactBuilder> {
  _$Contact _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _mobileNumber;
  int get mobileNumber => _$this._mobileNumber;
  set mobileNumber(int mobileNumber) => _$this._mobileNumber = mobileNumber;

  int _phoneCode;
  int get phoneCode => _$this._phoneCode;
  set phoneCode(int phoneCode) => _$this._phoneCode = phoneCode;

  int _telephone;
  int get telephone => _$this._telephone;
  set telephone(int telephone) => _$this._telephone = telephone;

  ContactBuilder();

  ContactBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _id = _$v.id;
      _mobileNumber = _$v.mobileNumber;
      _phoneCode = _$v.phoneCode;
      _telephone = _$v.telephone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Contact other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Contact;
  }

  @override
  void update(void Function(ContactBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Contact build() {
    final _$result = _$v ??
        new _$Contact._(
            email: email,
            id: id,
            mobileNumber: mobileNumber,
            phoneCode: phoneCode,
            telephone: telephone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
