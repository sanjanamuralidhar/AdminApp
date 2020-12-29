// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PdfDTO> _$pdfDTOSerializer = new _$PdfDTOSerializer();

class _$PdfDTOSerializer implements StructuredSerializer<PdfDTO> {
  @override
  final Iterable<Type> types = const [PdfDTO, _$PdfDTO];
  @override
  final String wireName = 'PdfDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, PdfDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.contentType != null) {
      result
        ..add('contentType')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.pdf != null) {
      result
        ..add('pdf')
        ..add(serializers.serialize(object.pdf,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PdfDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PdfDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pdf':
          result.pdf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PdfDTO extends PdfDTO {
  @override
  final String contentType;
  @override
  final String pdf;

  factory _$PdfDTO([void Function(PdfDTOBuilder) updates]) =>
      (new PdfDTOBuilder()..update(updates)).build();

  _$PdfDTO._({this.contentType, this.pdf}) : super._();

  @override
  PdfDTO rebuild(void Function(PdfDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PdfDTOBuilder toBuilder() => new PdfDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PdfDTO &&
        contentType == other.contentType &&
        pdf == other.pdf;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, contentType.hashCode), pdf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PdfDTO')
          ..add('contentType', contentType)
          ..add('pdf', pdf))
        .toString();
  }
}

class PdfDTOBuilder implements Builder<PdfDTO, PdfDTOBuilder> {
  _$PdfDTO _$v;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _pdf;
  String get pdf => _$this._pdf;
  set pdf(String pdf) => _$this._pdf = pdf;

  PdfDTOBuilder();

  PdfDTOBuilder get _$this {
    if (_$v != null) {
      _contentType = _$v.contentType;
      _pdf = _$v.pdf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PdfDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PdfDTO;
  }

  @override
  void update(void Function(PdfDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PdfDTO build() {
    final _$result = _$v ?? new _$PdfDTO._(contentType: contentType, pdf: pdf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
