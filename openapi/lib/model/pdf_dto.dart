        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pdf_dto.g.dart';

abstract class PdfDTO implements Built<PdfDTO, PdfDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'contentType')
    String get contentType;
    
        @nullable
    @BuiltValueField(wireName: r'pdf')
    String get pdf;

    // Boilerplate code needed to wire-up generated code
    PdfDTO._();

    factory PdfDTO([updates(PdfDTOBuilder b)]) = _$PdfDTO;
    static Serializer<PdfDTO> get serializer => _$pdfDTOSerializer;

}

