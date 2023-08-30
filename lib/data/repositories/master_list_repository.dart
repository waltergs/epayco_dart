import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epayco_dart/data/http/http.dart';
import 'package:epayco_dart/data/models/api_responses/get_document_types.dart';
import 'package:epayco_dart/domain/errors/failure.dart';
import 'package:epayco_dart/domain/repositories/master_list_repository.dart';

class MasterListRepositoryImpl implements IMasterListRepository {
  @override
  Future<Either<Failure, GetDocumentTypes>> getDocumentTypes({
    required String token,
  }) async {
    try {
      final response = await httpClient.get(
        '/type/documents',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return Right(
        GetDocumentTypes.fromJson(
          response.data,
        ),
      );
    } catch (e) {
      return Left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }
}
