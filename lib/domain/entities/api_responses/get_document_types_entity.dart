import 'package:epayco_dart/domain/entities/document_entity.dart';

class GetDocumentTypesEntity {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final List<DocumentEntity>? data;

  GetDocumentTypesEntity({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });
}
