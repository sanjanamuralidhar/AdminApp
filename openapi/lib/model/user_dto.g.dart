// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserDTO> _$userDTOSerializer = new _$UserDTOSerializer();

class _$UserDTOSerializer implements StructuredSerializer<UserDTO> {
  @override
  final Iterable<Type> types = const [UserDTO, _$UserDTO];
  @override
  final String wireName = 'UserDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, UserDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.activated != null) {
      result
        ..add('activated')
        ..add(serializers.serialize(object.activated,
            specifiedType: const FullType(bool)));
    }
    if (object.authorities != null) {
      result
        ..add('authorities')
        ..add(serializers.serialize(object.authorities,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.createdBy != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(object.createdBy,
            specifiedType: const FullType(String)));
    }
    if (object.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(object.createdDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.langKey != null) {
      result
        ..add('langKey')
        ..add(serializers.serialize(object.langKey,
            specifiedType: const FullType(String)));
    }
    if (object.lastModifiedBy != null) {
      result
        ..add('lastModifiedBy')
        ..add(serializers.serialize(object.lastModifiedBy,
            specifiedType: const FullType(String)));
    }
    if (object.lastModifiedDate != null) {
      result
        ..add('lastModifiedDate')
        ..add(serializers.serialize(object.lastModifiedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'activated':
          result.activated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'authorities':
          result.authorities.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'langKey':
          result.langKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastModifiedBy':
          result.lastModifiedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastModifiedDate':
          result.lastModifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserDTO extends UserDTO {
  @override
  final bool activated;
  @override
  final BuiltList<String> authorities;
  @override
  final String createdBy;
  @override
  final DateTime createdDate;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String langKey;
  @override
  final String lastModifiedBy;
  @override
  final DateTime lastModifiedDate;
  @override
  final String lastName;
  @override
  final String login;

  factory _$UserDTO([void Function(UserDTOBuilder) updates]) =>
      (new UserDTOBuilder()..update(updates)).build();

  _$UserDTO._(
      {this.activated,
      this.authorities,
      this.createdBy,
      this.createdDate,
      this.email,
      this.firstName,
      this.id,
      this.imageUrl,
      this.langKey,
      this.lastModifiedBy,
      this.lastModifiedDate,
      this.lastName,
      this.login})
      : super._();

  @override
  UserDTO rebuild(void Function(UserDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDTOBuilder toBuilder() => new UserDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDTO &&
        activated == other.activated &&
        authorities == other.authorities &&
        createdBy == other.createdBy &&
        createdDate == other.createdDate &&
        email == other.email &&
        firstName == other.firstName &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        langKey == other.langKey &&
        lastModifiedBy == other.lastModifiedBy &&
        lastModifiedDate == other.lastModifiedDate &&
        lastName == other.lastName &&
        login == other.login;
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
                                                $jc($jc(0, activated.hashCode),
                                                    authorities.hashCode),
                                                createdBy.hashCode),
                                            createdDate.hashCode),
                                        email.hashCode),
                                    firstName.hashCode),
                                id.hashCode),
                            imageUrl.hashCode),
                        langKey.hashCode),
                    lastModifiedBy.hashCode),
                lastModifiedDate.hashCode),
            lastName.hashCode),
        login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserDTO')
          ..add('activated', activated)
          ..add('authorities', authorities)
          ..add('createdBy', createdBy)
          ..add('createdDate', createdDate)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('langKey', langKey)
          ..add('lastModifiedBy', lastModifiedBy)
          ..add('lastModifiedDate', lastModifiedDate)
          ..add('lastName', lastName)
          ..add('login', login))
        .toString();
  }
}

class UserDTOBuilder implements Builder<UserDTO, UserDTOBuilder> {
  _$UserDTO _$v;

  bool _activated;
  bool get activated => _$this._activated;
  set activated(bool activated) => _$this._activated = activated;

  ListBuilder<String> _authorities;
  ListBuilder<String> get authorities =>
      _$this._authorities ??= new ListBuilder<String>();
  set authorities(ListBuilder<String> authorities) =>
      _$this._authorities = authorities;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  DateTime _createdDate;
  DateTime get createdDate => _$this._createdDate;
  set createdDate(DateTime createdDate) => _$this._createdDate = createdDate;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _langKey;
  String get langKey => _$this._langKey;
  set langKey(String langKey) => _$this._langKey = langKey;

  String _lastModifiedBy;
  String get lastModifiedBy => _$this._lastModifiedBy;
  set lastModifiedBy(String lastModifiedBy) =>
      _$this._lastModifiedBy = lastModifiedBy;

  DateTime _lastModifiedDate;
  DateTime get lastModifiedDate => _$this._lastModifiedDate;
  set lastModifiedDate(DateTime lastModifiedDate) =>
      _$this._lastModifiedDate = lastModifiedDate;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  UserDTOBuilder();

  UserDTOBuilder get _$this {
    if (_$v != null) {
      _activated = _$v.activated;
      _authorities = _$v.authorities?.toBuilder();
      _createdBy = _$v.createdBy;
      _createdDate = _$v.createdDate;
      _email = _$v.email;
      _firstName = _$v.firstName;
      _id = _$v.id;
      _imageUrl = _$v.imageUrl;
      _langKey = _$v.langKey;
      _lastModifiedBy = _$v.lastModifiedBy;
      _lastModifiedDate = _$v.lastModifiedDate;
      _lastName = _$v.lastName;
      _login = _$v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserDTO;
  }

  @override
  void update(void Function(UserDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDTO build() {
    _$UserDTO _$result;
    try {
      _$result = _$v ??
          new _$UserDTO._(
              activated: activated,
              authorities: _authorities?.build(),
              createdBy: createdBy,
              createdDate: createdDate,
              email: email,
              firstName: firstName,
              id: id,
              imageUrl: imageUrl,
              langKey: langKey,
              lastModifiedBy: lastModifiedBy,
              lastModifiedDate: lastModifiedDate,
              lastName: lastName,
              login: login);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authorities';
        _authorities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
