// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feedback> _$feedbackSerializer = new _$FeedbackSerializer();

class _$FeedbackSerializer implements StructuredSerializer<Feedback> {
  @override
  final Iterable<Type> types = const [Feedback, _$Feedback];
  @override
  final String wireName = 'Feedback';

  @override
  Iterable<Object> serialize(Serializers serializers, Feedback object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customerEmail != null) {
      result
        ..add('customerEmail')
        ..add(serializers.serialize(object.customerEmail,
            specifiedType: const FullType(String)));
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
    if (object.query != null) {
      result
        ..add('query')
        ..add(serializers.serialize(object.query,
            specifiedType: const FullType(String)));
    }
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(String)));
    }
    if (object.ticketId != null) {
      result
        ..add('ticketId')
        ..add(serializers.serialize(object.ticketId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Feedback deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customerEmail':
          result.customerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketId':
          result.ticketId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Feedback extends Feedback {
  @override
  final String customerEmail;
  @override
  final DateTime date;
  @override
  final int id;
  @override
  final String query;
  @override
  final String subject;
  @override
  final String ticketId;

  factory _$Feedback([void Function(FeedbackBuilder) updates]) =>
      (new FeedbackBuilder()..update(updates)).build();

  _$Feedback._(
      {this.customerEmail,
      this.date,
      this.id,
      this.query,
      this.subject,
      this.ticketId})
      : super._();

  @override
  Feedback rebuild(void Function(FeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackBuilder toBuilder() => new FeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feedback &&
        customerEmail == other.customerEmail &&
        date == other.date &&
        id == other.id &&
        query == other.query &&
        subject == other.subject &&
        ticketId == other.ticketId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, customerEmail.hashCode), date.hashCode),
                    id.hashCode),
                query.hashCode),
            subject.hashCode),
        ticketId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feedback')
          ..add('customerEmail', customerEmail)
          ..add('date', date)
          ..add('id', id)
          ..add('query', query)
          ..add('subject', subject)
          ..add('ticketId', ticketId))
        .toString();
  }
}

class FeedbackBuilder implements Builder<Feedback, FeedbackBuilder> {
  _$Feedback _$v;

  String _customerEmail;
  String get customerEmail => _$this._customerEmail;
  set customerEmail(String customerEmail) =>
      _$this._customerEmail = customerEmail;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  String _ticketId;
  String get ticketId => _$this._ticketId;
  set ticketId(String ticketId) => _$this._ticketId = ticketId;

  FeedbackBuilder();

  FeedbackBuilder get _$this {
    if (_$v != null) {
      _customerEmail = _$v.customerEmail;
      _date = _$v.date;
      _id = _$v.id;
      _query = _$v.query;
      _subject = _$v.subject;
      _ticketId = _$v.ticketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feedback other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feedback;
  }

  @override
  void update(void Function(FeedbackBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Feedback build() {
    final _$result = _$v ??
        new _$Feedback._(
            customerEmail: customerEmail,
            date: date,
            id: id,
            query: query,
            subject: subject,
            ticketId: ticketId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
