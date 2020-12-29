// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RouteVM> _$routeVMSerializer = new _$RouteVMSerializer();

class _$RouteVMSerializer implements StructuredSerializer<RouteVM> {
  @override
  final Iterable<Type> types = const [RouteVM, _$RouteVM];
  @override
  final String wireName = 'RouteVM';

  @override
  Iterable<Object> serialize(Serializers serializers, RouteVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.serviceId != null) {
      result
        ..add('serviceId')
        ..add(serializers.serialize(object.serviceId,
            specifiedType: const FullType(String)));
    }
    if (object.serviceInstances != null) {
      result
        ..add('serviceInstances')
        ..add(serializers.serialize(object.serviceInstances,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ServiceInstance)])));
    }
    return result;
  }

  @override
  RouteVM deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RouteVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceId':
          result.serviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceInstances':
          result.serviceInstances.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ServiceInstance)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$RouteVM extends RouteVM {
  @override
  final String path;
  @override
  final String serviceId;
  @override
  final BuiltList<ServiceInstance> serviceInstances;

  factory _$RouteVM([void Function(RouteVMBuilder) updates]) =>
      (new RouteVMBuilder()..update(updates)).build();

  _$RouteVM._({this.path, this.serviceId, this.serviceInstances}) : super._();

  @override
  RouteVM rebuild(void Function(RouteVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteVMBuilder toBuilder() => new RouteVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteVM &&
        path == other.path &&
        serviceId == other.serviceId &&
        serviceInstances == other.serviceInstances;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, path.hashCode), serviceId.hashCode),
        serviceInstances.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RouteVM')
          ..add('path', path)
          ..add('serviceId', serviceId)
          ..add('serviceInstances', serviceInstances))
        .toString();
  }
}

class RouteVMBuilder implements Builder<RouteVM, RouteVMBuilder> {
  _$RouteVM _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _serviceId;
  String get serviceId => _$this._serviceId;
  set serviceId(String serviceId) => _$this._serviceId = serviceId;

  ListBuilder<ServiceInstance> _serviceInstances;
  ListBuilder<ServiceInstance> get serviceInstances =>
      _$this._serviceInstances ??= new ListBuilder<ServiceInstance>();
  set serviceInstances(ListBuilder<ServiceInstance> serviceInstances) =>
      _$this._serviceInstances = serviceInstances;

  RouteVMBuilder();

  RouteVMBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _serviceId = _$v.serviceId;
      _serviceInstances = _$v.serviceInstances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteVM other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RouteVM;
  }

  @override
  void update(void Function(RouteVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RouteVM build() {
    _$RouteVM _$result;
    try {
      _$result = _$v ??
          new _$RouteVM._(
              path: path,
              serviceId: serviceId,
              serviceInstances: _serviceInstances?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'serviceInstances';
        _serviceInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RouteVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
