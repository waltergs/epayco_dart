import 'package:dartz/dartz.dart';
import 'package:epayco_dart/domain/entities/api_responses/get_document_types_entity.dart';
import 'package:epayco_dart/domain/errors/failure.dart';

abstract class IMasterListRepository {
  Future<Either<Failure, GetDocumentTypesEntity>> getDocumentTypes({
    required String token,
  });
}
