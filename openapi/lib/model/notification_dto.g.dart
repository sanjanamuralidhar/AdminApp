// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationDTO> _$notificationDTOSerializer =
    new _$NotificationDTOSerializer();

class _$NotificationDTOSerializer
    implements StructuredSerializer<NotificationDTO> {
  @override
  final Iterable<Type> types = const [NotificationDTO, _$NotificationDTO];
  @override
  final String wireName = 'NotificationDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, NotificationDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.imageContentType != null) {
      result
        ..add('imageContentType')
        ..add(serializers.serialize(object.imageContentType,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.receiverId != null) {
      result
        ..add('receiverId')
        ..add(serializers.serialize(object.receiverId,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.targetId != null) {
      result
        ..add('targetId')
        ..add(serializers.serialize(object.targetId,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageContentType':
          result.imageContentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiverId':
          result.receiverId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'targetId':
          result.targetId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationDTO extends NotificationDTO {
  @override
  final DateTime date;
  @override
  final int id;
  @override
  final String image;
  @override
  final String imageContentType;
  @override
  final String message;
  @override
  final String receiverId;
  @override
  final String status;
  @override
  final String targetId;
  @override
  final String title;
  @override
  final String type;

  factory _$NotificationDTO([void Function(NotificationDTOBuilder) updates]) =>
      (new NotificationDTOBuilder()..update(updates)).build();

  _$NotificationDTO._(
      {this.date,
      this.id,
      this.image,
      this.imageContentType,
      this.message,
      this.receiverId,
      this.status,
      this.targetId,
      this.title,
      this.type})
      : super._();

  @override
  NotificationDTO rebuild(void Function(NotificationDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationDTOBuilder toBuilder() =>
      new NotificationDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationDTO &&
        date == other.date &&
        id == other.id &&
        image == other.image &&
        imageContentType == other.imageContentType &&
        message == other.message &&
        receiverId == other.receiverId &&
        status == other.status &&
        targetId == other.targetId &&
        title == other.title &&
        type == other.type;
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
                                $jc($jc($jc(0, date.hashCode), id.hashCode),
                                    image.hashCode),
                                imageContentType.hashCode),
                            message.hashCode),
                        receiverId.hashCode),
                    status.hashCode),
                targetId.hashCode),
            title.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationDTO')
          ..add('date', date)
          ..add('id', id)
          ..add('image', image)
          ..add('imageContentType', imageContentType)
          ..add('message', message)
          ..add('receiverId', receiverId)
          ..add('status', status)
          ..add('targetId', targetId)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class NotificationDTOBuilder
    implements Builder<NotificationDTO, NotificationDTOBuilder> {
  _$NotificationDTO _$v;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _imageContentType;
  String get imageContentType => _$this._imageContentType;
  set imageContentType(String imageContentType) =>
      _$this._imageContentType = imageContentType;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _receiverId;
  String get receiverId => _$this._receiverId;
  set receiverId(String receiverId) => _$this._receiverId = receiverId;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _targetId;
  String get targetId => _$this._targetId;
  set targetId(String targetId) => _$this._targetId = targetId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  NotificationDTOBuilder();

  NotificationDTOBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _id = _$v.id;
      _image = _$v.image;
      _imageContentType = _$v.imageContentType;
      _message = _$v.message;
      _receiverId = _$v.receiverId;
      _status = _$v.status;
      _targetId = _$v.targetId;
      _title = _$v.title;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationDTO;
  }

  @override
  void update(void Function(NotificationDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationDTO build() {
    final _$result = _$v ??
        new _$NotificationDTO._(
            date: date,
            id: id,
            image: image,
            imageContentType: imageContentType,
            message: message,
            receiverId: receiverId,
            status: status,
            targetId: targetId,
            title: title,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
