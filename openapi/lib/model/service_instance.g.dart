// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceInstance> _$serviceInstanceSerializer =
    new _$ServiceInstanceSerializer();

class _$ServiceInstanceSerializer
    implements StructuredSerializer<ServiceInstance> {
  @override
  final Iterable<Type> types = const [ServiceInstance, _$ServiceInstance];
  @override
  final String wireName = 'ServiceInstance';

  @override
  Iterable<Object> serialize(Serializers serializers, ServiceInstance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.host != null) {
      result
        ..add('host')
        ..add(serializers.serialize(object.host,
            specifiedType: const FullType(String)));
    }
    if (object.instanceId != null) {
      result
        ..add('instanceId')
        ..add(serializers.serialize(object.instanceId,
            specifiedType: const FullType(String)));
    }
    if (object.metadata != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(object.metadata,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    if (object.port != null) {
      result
        ..add('port')
        ..add(serializers.serialize(object.port,
            specifiedType: const FullType(int)));
    }
    if (object.scheme != null) {
      result
        ..add('scheme')
        ..add(serializers.serialize(object.scheme,
            specifiedType: const FullType(String)));
    }
    if (object.secure != null) {
      result
        ..add('secure')
        ..add(serializers.serialize(object.secure,
            specifiedType: const FullType(bool)));
    }
    if (object.serviceId != null) {
      result
        ..add('serviceId')
        ..add(serializers.serialize(object.serviceId,
            specifiedType: const FullType(String)));
    }
    if (object.uri != null) {
      result
        ..add('uri')
        ..add(serializers.serialize(object.uri,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ServiceInstance deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceInstanceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'host':
          result.host = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instanceId':
          result.instanceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)])));
          break;
        case 'port':
          result.port = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'scheme':
          result.scheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secure':
          result.secure = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'serviceId':
          result.serviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceInstance extends ServiceInstance {
  @override
  final String host;
  @override
  final String instanceId;
  @override
  final BuiltMap<String, String> metadata;
  @override
  final int port;
  @override
  final String scheme;
  @override
  final bool secure;
  @override
  final String serviceId;
  @override
  final String uri;

  factory _$ServiceInstance([void Function(ServiceInstanceBuilder) updates]) =>
      (new ServiceInstanceBuilder()..update(updates)).build();

  _$ServiceInstance._(
      {this.host,
      this.instanceId,
      this.metadata,
      this.port,
      this.scheme,
      this.secure,
      this.serviceId,
      this.uri})
      : super._();

  @override
  ServiceInstance rebuild(void Function(ServiceInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceInstanceBuilder toBuilder() =>
      new ServiceInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceInstance &&
        host == other.host &&
        instanceId == other.instanceId &&
        metadata == other.metadata &&
        port == other.port &&
        scheme == other.scheme &&
        secure == other.secure &&
        serviceId == other.serviceId &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, host.hashCode), instanceId.hashCode),
                            metadata.hashCode),
                        port.hashCode),
                    scheme.hashCode),
                secure.hashCode),
            serviceId.hashCode),
        uri.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceInstance')
          ..add('host', host)
          ..add('instanceId', instanceId)
          ..add('metadata', metadata)
          ..add('port', port)
          ..add('scheme', scheme)
          ..add('secure', secure)
          ..add('serviceId', serviceId)
          ..add('uri', uri))
        .toString();
  }
}

class ServiceInstanceBuilder
    implements Builder<ServiceInstance, ServiceInstanceBuilder> {
  _$ServiceInstance _$v;

  String _host;
  String get host => _$this._host;
  set host(String host) => _$this._host = host;

  String _instanceId;
  String get instanceId => _$this._instanceId;
  set instanceId(String instanceId) => _$this._instanceId = instanceId;

  MapBuilder<String, String> _metadata;
  MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new MapBuilder<String, String>();
  set metadata(MapBuilder<String, String> metadata) =>
      _$this._metadata = metadata;

  int _port;
  int get port => _$this._port;
  set port(int port) => _$this._port = port;

  String _scheme;
  String get scheme => _$this._scheme;
  set scheme(String scheme) => _$this._scheme = scheme;

  bool _secure;
  bool get secure => _$this._secure;
  set secure(bool secure) => _$this._secure = secure;

  String _serviceId;
  String get serviceId => _$this._serviceId;
  set serviceId(String serviceId) => _$this._serviceId = serviceId;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  ServiceInstanceBuilder();

  ServiceInstanceBuilder get _$this {
    if (_$v != null) {
      _host = _$v.host;
      _instanceId = _$v.instanceId;
      _metadata = _$v.metadata?.toBuilder();
      _port = _$v.port;
      _scheme = _$v.scheme;
      _secure = _$v.secure;
      _serviceId = _$v.serviceId;
      _uri = _$v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceInstance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceInstance;
  }

  @override
  void update(void Function(ServiceInstanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceInstance build() {
    _$ServiceInstance _$result;
    try {
      _$result = _$v ??
          new _$ServiceInstance._(
              host: host,
              instanceId: instanceId,
              metadata: _metadata?.build(),
              port: port,
              scheme: scheme,
              secure: secure,
              serviceId: serviceId,
              uri: uri);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServiceInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
