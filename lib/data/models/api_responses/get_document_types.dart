import 'package:epayco_dart/data/models/document.dart';
import 'package:epayco_dart/domain/entities/api_responses/get_document_types_entity.dart';

class GetDocumentTypes extends GetDocumentTypesEntity {
  GetDocumentTypes({
    bool? success,
    String? titleResponse,
    String? textResponse,
    String? lastAction,
    List<Document>? data,
  }) : super(
          success: success,
          titleResponse: titleResponse,
          textResponse: textResponse,
          lastAction: lastAction,
          data: data,
        );

  factory GetDocumentTypes.fromJson(Map<String, dynamic> json) {
    return GetDocumentTypes(
      success: json['success'],
      titleResponse: json['titleResponse'],
      textResponse: json['textResponse'],
      lastAction: json['lastAction'],
      data: json['data'] != null
          ? (json['data'] as List).map((e) => Document.fromJson(e)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'titleResponse': titleResponse,
      'textResponse': textResponse,
      'lastAction': lastAction,
      'data': data?.map((e) => (e as Document).toJson()).toList(),
    };
  }
}
