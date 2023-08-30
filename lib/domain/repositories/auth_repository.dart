import 'package:dartz/dartz.dart';
import 'package:epayco_flutter/domain/errors/failure.dart';

import '../../data/models/auth_response.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthResponse>> getJWTToken({
    required String publicKey,
    required String privateKey,
  });
}
