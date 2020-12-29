// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthInfoVM> _$authInfoVMSerializer = new _$AuthInfoVMSerializer();

class _$AuthInfoVMSerializer implements StructuredSerializer<AuthInfoVM> {
  @override
  final Iterable<Type> types = const [AuthInfoVM, _$AuthInfoVM];
  @override
  final String wireName = 'AuthInfoVM';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthInfoVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.clientId != null) {
      result
        ..add('clientId')
        ..add(serializers.serialize(object.clientId,
            specifiedType: const FullType(String)));
    }
    if (object.issuer != null) {
      result
        ..add('issuer')
        ..add(serializers.serialize(object.issuer,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuthInfoVM deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthInfoVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuer':
          result.issuer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthInfoVM extends AuthInfoVM {
  @override
  final String clientId;
  @override
  final String issuer;

  factory _$AuthInfoVM([void Function(AuthInfoVMBuilder) updates]) =>
      (new AuthInfoVMBuilder()..update(updates)).build();

  _$AuthInfoVM._({this.clientId, this.issuer}) : super._();

  @override
  AuthInfoVM rebuild(void Function(AuthInfoVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthInfoVMBuilder toBuilder() => new AuthInfoVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthInfoVM &&
        clientId == other.clientId &&
        issuer == other.issuer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, clientId.hashCode), issuer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthInfoVM')
          ..add('clientId', clientId)
          ..add('issuer', issuer))
        .toString();
  }
}

class AuthInfoVMBuilder implements Builder<AuthInfoVM, AuthInfoVMBuilder> {
  _$AuthInfoVM _$v;

  String _clientId;
  String get clientId => _$this._clientId;
  set clientId(String clientId) => _$this._clientId = clientId;

  String _issuer;
  String get issuer => _$this._issuer;
  set issuer(String issuer) => _$this._issuer = issuer;

  AuthInfoVMBuilder();

  AuthInfoVMBuilder get _$this {
    if (_$v != null) {
      _clientId = _$v.clientId;
      _issuer = _$v.issuer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthInfoVM other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthInfoVM;
  }

  @override
  void update(void Function(AuthInfoVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthInfoVM build() {
    final _$result =
        _$v ?? new _$AuthInfoVM._(clientId: clientId, issuer: issuer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
