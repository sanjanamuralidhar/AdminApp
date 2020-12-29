// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AboutDTO> _$aboutDTOSerializer = new _$AboutDTOSerializer();

class _$AboutDTOSerializer implements StructuredSerializer<AboutDTO> {
  @override
  final Iterable<Type> types = const [AboutDTO, _$AboutDTO];
  @override
  final String wireName = 'AboutDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, AboutDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addOn1 != null) {
      result
        ..add('addOn1')
        ..add(serializers.serialize(object.addOn1,
            specifiedType: const FullType(String)));
    }
    if (object.addOn2 != null) {
      result
        ..add('addOn2')
        ..add(serializers.serialize(object.addOn2,
            specifiedType: const FullType(String)));
    }
    if (object.addOn3 != null) {
      result
        ..add('addOn3')
        ..add(serializers.serialize(object.addOn3,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.supportMail != null) {
      result
        ..add('supportMail')
        ..add(serializers.serialize(object.supportMail,
            specifiedType: const FullType(String)));
    }
    if (object.supportPhone != null) {
      result
        ..add('supportPhone')
        ..add(serializers.serialize(object.supportPhone,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AboutDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AboutDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addOn1':
          result.addOn1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addOn2':
          result.addOn2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addOn3':
          result.addOn3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'supportMail':
          result.supportMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'supportPhone':
          result.supportPhone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AboutDTO extends AboutDTO {
  @override
  final String addOn1;
  @override
  final String addOn2;
  @override
  final String addOn3;
  @override
  final String description;
  @override
  final int id;
  @override
  final String supportMail;
  @override
  final int supportPhone;

  factory _$AboutDTO([void Function(AboutDTOBuilder) updates]) =>
      (new AboutDTOBuilder()..update(updates)).build();

  _$AboutDTO._(
      {this.addOn1,
      this.addOn2,
      this.addOn3,
      this.description,
      this.id,
      this.supportMail,
      this.supportPhone})
      : super._();

  @override
  AboutDTO rebuild(void Function(AboutDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutDTOBuilder toBuilder() => new AboutDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutDTO &&
        addOn1 == other.addOn1 &&
        addOn2 == other.addOn2 &&
        addOn3 == other.addOn3 &&
        description == other.description &&
        id == other.id &&
        supportMail == other.supportMail &&
        supportPhone == other.supportPhone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, addOn1.hashCode), addOn2.hashCode),
                        addOn3.hashCode),
                    description.hashCode),
                id.hashCode),
            supportMail.hashCode),
        supportPhone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AboutDTO')
          ..add('addOn1', addOn1)
          ..add('addOn2', addOn2)
          ..add('addOn3', addOn3)
          ..add('description', description)
          ..add('id', id)
          ..add('supportMail', supportMail)
          ..add('supportPhone', supportPhone))
        .toString();
  }
}

class AboutDTOBuilder implements Builder<AboutDTO, AboutDTOBuilder> {
  _$AboutDTO _$v;

  String _addOn1;
  String get addOn1 => _$this._addOn1;
  set addOn1(String addOn1) => _$this._addOn1 = addOn1;

  String _addOn2;
  String get addOn2 => _$this._addOn2;
  set addOn2(String addOn2) => _$this._addOn2 = addOn2;

  String _addOn3;
  String get addOn3 => _$this._addOn3;
  set addOn3(String addOn3) => _$this._addOn3 = addOn3;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _supportMail;
  String get supportMail => _$this._supportMail;
  set supportMail(String supportMail) => _$this._supportMail = supportMail;

  int _supportPhone;
  int get supportPhone => _$this._supportPhone;
  set supportPhone(int supportPhone) => _$this._supportPhone = supportPhone;

  AboutDTOBuilder();

  AboutDTOBuilder get _$this {
    if (_$v != null) {
      _addOn1 = _$v.addOn1;
      _addOn2 = _$v.addOn2;
      _addOn3 = _$v.addOn3;
      _description = _$v.description;
      _id = _$v.id;
      _supportMail = _$v.supportMail;
      _supportPhone = _$v.supportPhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AboutDTO;
  }

  @override
  void update(void Function(AboutDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AboutDTO build() {
    final _$result = _$v ??
        new _$AboutDTO._(
            addOn1: addOn1,
            addOn2: addOn2,
            addOn3: addOn3,
            description: description,
            id: id,
            supportMail: supportMail,
            supportPhone: supportPhone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
