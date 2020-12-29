// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uri.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<URI> _$uRISerializer = new _$URISerializer();

class _$URISerializer implements StructuredSerializer<URI> {
  @override
  final Iterable<Type> types = const [URI, _$URI];
  @override
  final String wireName = 'URI';

  @override
  Iterable<Object> serialize(Serializers serializers, URI object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.absolute != null) {
      result
        ..add('absolute')
        ..add(serializers.serialize(object.absolute,
            specifiedType: const FullType(bool)));
    }
    if (object.authority != null) {
      result
        ..add('authority')
        ..add(serializers.serialize(object.authority,
            specifiedType: const FullType(String)));
    }
    if (object.fragment != null) {
      result
        ..add('fragment')
        ..add(serializers.serialize(object.fragment,
            specifiedType: const FullType(String)));
    }
    if (object.host != null) {
      result
        ..add('host')
        ..add(serializers.serialize(object.host,
            specifiedType: const FullType(String)));
    }
    if (object.opaque != null) {
      result
        ..add('opaque')
        ..add(serializers.serialize(object.opaque,
            specifiedType: const FullType(bool)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.port != null) {
      result
        ..add('port')
        ..add(serializers.serialize(object.port,
            specifiedType: const FullType(int)));
    }
    if (object.query != null) {
      result
        ..add('query')
        ..add(serializers.serialize(object.query,
            specifiedType: const FullType(String)));
    }
    if (object.rawAuthority != null) {
      result
        ..add('rawAuthority')
        ..add(serializers.serialize(object.rawAuthority,
            specifiedType: const FullType(String)));
    }
    if (object.rawFragment != null) {
      result
        ..add('rawFragment')
        ..add(serializers.serialize(object.rawFragment,
            specifiedType: const FullType(String)));
    }
    if (object.rawPath != null) {
      result
        ..add('rawPath')
        ..add(serializers.serialize(object.rawPath,
            specifiedType: const FullType(String)));
    }
    if (object.rawQuery != null) {
      result
        ..add('rawQuery')
        ..add(serializers.serialize(object.rawQuery,
            specifiedType: const FullType(String)));
    }
    if (object.rawSchemeSpecificPart != null) {
      result
        ..add('rawSchemeSpecificPart')
        ..add(serializers.serialize(object.rawSchemeSpecificPart,
            specifiedType: const FullType(String)));
    }
    if (object.rawUserInfo != null) {
      result
        ..add('rawUserInfo')
        ..add(serializers.serialize(object.rawUserInfo,
            specifiedType: const FullType(String)));
    }
    if (object.scheme != null) {
      result
        ..add('scheme')
        ..add(serializers.serialize(object.scheme,
            specifiedType: const FullType(String)));
    }
    if (object.schemeSpecificPart != null) {
      result
        ..add('schemeSpecificPart')
        ..add(serializers.serialize(object.schemeSpecificPart,
            specifiedType: const FullType(String)));
    }
    if (object.userInfo != null) {
      result
        ..add('userInfo')
        ..add(serializers.serialize(object.userInfo,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  URI deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new URIBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'absolute':
          result.absolute = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'authority':
          result.authority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fragment':
          result.fragment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'host':
          result.host = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'opaque':
          result.opaque = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'port':
          result.port = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rawAuthority':
          result.rawAuthority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rawFragment':
          result.rawFragment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rawPath':
          result.rawPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rawQuery':
          result.rawQuery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rawSchemeSpecificPart':
          result.rawSchemeSpecificPart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rawUserInfo':
          result.rawUserInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scheme':
          result.scheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'schemeSpecificPart':
          result.schemeSpecificPart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userInfo':
          result.userInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$URI extends URI {
  @override
  final bool absolute;
  @override
  final String authority;
  @override
  final String fragment;
  @override
  final String host;
  @override
  final bool opaque;
  @override
  final String path;
  @override
  final int port;
  @override
  final String query;
  @override
  final String rawAuthority;
  @override
  final String rawFragment;
  @override
  final String rawPath;
  @override
  final String rawQuery;
  @override
  final String rawSchemeSpecificPart;
  @override
  final String rawUserInfo;
  @override
  final String scheme;
  @override
  final String schemeSpecificPart;
  @override
  final String userInfo;

  factory _$URI([void Function(URIBuilder) updates]) =>
      (new URIBuilder()..update(updates)).build();

  _$URI._(
      {this.absolute,
      this.authority,
      this.fragment,
      this.host,
      this.opaque,
      this.path,
      this.port,
      this.query,
      this.rawAuthority,
      this.rawFragment,
      this.rawPath,
      this.rawQuery,
      this.rawSchemeSpecificPart,
      this.rawUserInfo,
      this.scheme,
      this.schemeSpecificPart,
      this.userInfo})
      : super._();

  @override
  URI rebuild(void Function(URIBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  URIBuilder toBuilder() => new URIBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is URI &&
        absolute == other.absolute &&
        authority == other.authority &&
        fragment == other.fragment &&
        host == other.host &&
        opaque == other.opaque &&
        path == other.path &&
        port == other.port &&
        query == other.query &&
        rawAuthority == other.rawAuthority &&
        rawFragment == other.rawFragment &&
        rawPath == other.rawPath &&
        rawQuery == other.rawQuery &&
        rawSchemeSpecificPart == other.rawSchemeSpecificPart &&
        rawUserInfo == other.rawUserInfo &&
        scheme == other.scheme &&
        schemeSpecificPart == other.schemeSpecificPart &&
        userInfo == other.userInfo;
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
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        absolute
                                                                            .hashCode),
                                                                    authority
                                                                        .hashCode),
                                                                fragment
                                                                    .hashCode),
                                                            host.hashCode),
                                                        opaque.hashCode),
                                                    path.hashCode),
                                                port.hashCode),
                                            query.hashCode),
                                        rawAuthority.hashCode),
                                    rawFragment.hashCode),
                                rawPath.hashCode),
                            rawQuery.hashCode),
                        rawSchemeSpecificPart.hashCode),
                    rawUserInfo.hashCode),
                scheme.hashCode),
            schemeSpecificPart.hashCode),
        userInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('URI')
          ..add('absolute', absolute)
          ..add('authority', authority)
          ..add('fragment', fragment)
          ..add('host', host)
          ..add('opaque', opaque)
          ..add('path', path)
          ..add('port', port)
          ..add('query', query)
          ..add('rawAuthority', rawAuthority)
          ..add('rawFragment', rawFragment)
          ..add('rawPath', rawPath)
          ..add('rawQuery', rawQuery)
          ..add('rawSchemeSpecificPart', rawSchemeSpecificPart)
          ..add('rawUserInfo', rawUserInfo)
          ..add('scheme', scheme)
          ..add('schemeSpecificPart', schemeSpecificPart)
          ..add('userInfo', userInfo))
        .toString();
  }
}

class URIBuilder implements Builder<URI, URIBuilder> {
  _$URI _$v;

  bool _absolute;
  bool get absolute => _$this._absolute;
  set absolute(bool absolute) => _$this._absolute = absolute;

  String _authority;
  String get authority => _$this._authority;
  set authority(String authority) => _$this._authority = authority;

  String _fragment;
  String get fragment => _$this._fragment;
  set fragment(String fragment) => _$this._fragment = fragment;

  String _host;
  String get host => _$this._host;
  set host(String host) => _$this._host = host;

  bool _opaque;
  bool get opaque => _$this._opaque;
  set opaque(bool opaque) => _$this._opaque = opaque;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _port;
  int get port => _$this._port;
  set port(int port) => _$this._port = port;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  String _rawAuthority;
  String get rawAuthority => _$this._rawAuthority;
  set rawAuthority(String rawAuthority) => _$this._rawAuthority = rawAuthority;

  String _rawFragment;
  String get rawFragment => _$this._rawFragment;
  set rawFragment(String rawFragment) => _$this._rawFragment = rawFragment;

  String _rawPath;
  String get rawPath => _$this._rawPath;
  set rawPath(String rawPath) => _$this._rawPath = rawPath;

  String _rawQuery;
  String get rawQuery => _$this._rawQuery;
  set rawQuery(String rawQuery) => _$this._rawQuery = rawQuery;

  String _rawSchemeSpecificPart;
  String get rawSchemeSpecificPart => _$this._rawSchemeSpecificPart;
  set rawSchemeSpecificPart(String rawSchemeSpecificPart) =>
      _$this._rawSchemeSpecificPart = rawSchemeSpecificPart;

  String _rawUserInfo;
  String get rawUserInfo => _$this._rawUserInfo;
  set rawUserInfo(String rawUserInfo) => _$this._rawUserInfo = rawUserInfo;

  String _scheme;
  String get scheme => _$this._scheme;
  set scheme(String scheme) => _$this._scheme = scheme;

  String _schemeSpecificPart;
  String get schemeSpecificPart => _$this._schemeSpecificPart;
  set schemeSpecificPart(String schemeSpecificPart) =>
      _$this._schemeSpecificPart = schemeSpecificPart;

  String _userInfo;
  String get userInfo => _$this._userInfo;
  set userInfo(String userInfo) => _$this._userInfo = userInfo;

  URIBuilder();

  URIBuilder get _$this {
    if (_$v != null) {
      _absolute = _$v.absolute;
      _authority = _$v.authority;
      _fragment = _$v.fragment;
      _host = _$v.host;
      _opaque = _$v.opaque;
      _path = _$v.path;
      _port = _$v.port;
      _query = _$v.query;
      _rawAuthority = _$v.rawAuthority;
      _rawFragment = _$v.rawFragment;
      _rawPath = _$v.rawPath;
      _rawQuery = _$v.rawQuery;
      _rawSchemeSpecificPart = _$v.rawSchemeSpecificPart;
      _rawUserInfo = _$v.rawUserInfo;
      _scheme = _$v.scheme;
      _schemeSpecificPart = _$v.schemeSpecificPart;
      _userInfo = _$v.userInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(URI other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$URI;
  }

  @override
  void update(void Function(URIBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$URI build() {
    final _$result = _$v ??
        new _$URI._(
            absolute: absolute,
            authority: authority,
            fragment: fragment,
            host: host,
            opaque: opaque,
            path: path,
            port: port,
            query: query,
            rawAuthority: rawAuthority,
            rawFragment: rawFragment,
            rawPath: rawPath,
            rawQuery: rawQuery,
            rawSchemeSpecificPart: rawSchemeSpecificPart,
            rawUserInfo: rawUserInfo,
            scheme: scheme,
            schemeSpecificPart: schemeSpecificPart,
            userInfo: userInfo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
