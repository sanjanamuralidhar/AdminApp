// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rating_review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRatingReview> _$userRatingReviewSerializer =
    new _$UserRatingReviewSerializer();

class _$UserRatingReviewSerializer
    implements StructuredSerializer<UserRatingReview> {
  @override
  final Iterable<Type> types = const [UserRatingReview, _$UserRatingReview];
  @override
  final String wireName = 'UserRatingReview';

  @override
  Iterable<Object> serialize(Serializers serializers, UserRatingReview object,
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
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(double)));
    }
    if (object.review != null) {
      result
        ..add('review')
        ..add(serializers.serialize(object.review,
            specifiedType: const FullType(String)));
    }
    if (object.userName != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(object.userName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserRatingReview deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRatingReviewBuilder();

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
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserRatingReview extends UserRatingReview {
  @override
  final DateTime date;
  @override
  final int id;
  @override
  final double rating;
  @override
  final String review;
  @override
  final String userName;

  factory _$UserRatingReview(
          [void Function(UserRatingReviewBuilder) updates]) =>
      (new UserRatingReviewBuilder()..update(updates)).build();

  _$UserRatingReview._(
      {this.date, this.id, this.rating, this.review, this.userName})
      : super._();

  @override
  UserRatingReview rebuild(void Function(UserRatingReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRatingReviewBuilder toBuilder() =>
      new UserRatingReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRatingReview &&
        date == other.date &&
        id == other.id &&
        rating == other.rating &&
        review == other.review &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, date.hashCode), id.hashCode), rating.hashCode),
            review.hashCode),
        userName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRatingReview')
          ..add('date', date)
          ..add('id', id)
          ..add('rating', rating)
          ..add('review', review)
          ..add('userName', userName))
        .toString();
  }
}

class UserRatingReviewBuilder
    implements Builder<UserRatingReview, UserRatingReviewBuilder> {
  _$UserRatingReview _$v;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  String _review;
  String get review => _$this._review;
  set review(String review) => _$this._review = review;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  UserRatingReviewBuilder();

  UserRatingReviewBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _id = _$v.id;
      _rating = _$v.rating;
      _review = _$v.review;
      _userName = _$v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRatingReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserRatingReview;
  }

  @override
  void update(void Function(UserRatingReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRatingReview build() {
    final _$result = _$v ??
        new _$UserRatingReview._(
            date: date,
            id: id,
            rating: rating,
            review: review,
            userName: userName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
