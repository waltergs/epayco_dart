import 'package:dartz/dartz.dart';
import 'package:epayco_flutter/domain/entities/api_responses/get_banks_entity.dart';
import 'package:epayco_flutter/domain/errors/failure.dart';

abstract class IPseRepository {
  Future<Either<Failure, GetBanksResponseEntity>> getBanks({
    required String token,
  });
}
